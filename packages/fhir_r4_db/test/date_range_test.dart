import 'package:drift/native.dart';
import 'package:fhir_r4/fhir_r4.dart' as fhir;
import 'package:fhir_r4_db/fhir_r4_db.dart';
import 'package:test/test.dart';

/// Schema 12 (fhirant REVIEW-2026-09-06 §6.1): a date prefix is one range on
/// a bound's covering index, open Period bounds are the sentinels, and every
/// prefix answers what the NULL-OR form answered. That form is written out
/// as SQL over the same rows below, so the comparison is against the
/// previous code, not a recollection of it.
void main() {
  late FhirDb db;
  late FhirDao dao;

  setUp(() async {
    db = FhirDb(NativeDatabase.memory());
    dao = FhirDao(db);
  });

  tearDown(() => db.close());

  Future<void> obs(String id, {String? at, String? start, String? end}) =>
      dao.saveResource(
        fhir.Observation.fromJson({
          'resourceType': 'Observation',
          'id': id,
          'status': 'final',
          'code': {'text': 'x'},
          if (at != null) 'effectiveDateTime': at,
          if (at == null)
            'effectivePeriod': {
              if (start != null) 'start': start,
              if (end != null) 'end': end,
            },
        }),
      );

  Future<List<String>> find(String value) async {
    final hits = await dao.search(
      resourceType: fhir.R4ResourceType.Observation,
      searchParameters: {
        'date': [value],
      },
      count: 100,
    );
    return hits.map((r) => r.id!.valueString!).toList()..sort();
  }

  /// The ids the predicate of before schema 12 selects, over seconds.
  Future<List<String>> old(String prefix, String written) async {
    final range = searchDateRange(written)!;
    final l = range.low.millisecondsSinceEpoch ~/ 1000;
    final h = range.high.millisecondsSinceEpoch ~/ 1000;
    // The sentinels stand where NULL stood; the NULL alternatives of the
    // old form are true of them by the same comparisons.
    const lo = 'date_value';
    const hi = 'date_value_end';
    final contained = '($lo IS NOT NULL AND $hi IS NOT NULL AND $lo >= $l '
        'AND $lo < $h AND $hi <= $h)';
    final above = '($hi IS NULL OR $hi > $h)';
    final below = '($lo IS NULL OR $lo < $l)';
    final where = switch (prefix) {
      'gt' => above,
      'lt' => below,
      'ge' => '($above OR $contained)',
      'le' => '($below OR $contained)',
      'sa' => '($lo IS NOT NULL AND $lo >= $h)',
      'eb' => '($hi IS NOT NULL AND $hi <= $l)',
      'ne' => 'NOT $contained',
      _ => contained,
    };
    final rows = await db
        .customSelect(
          'SELECT DISTINCT id FROM date_search_parameters WHERE '
          "resource_type = 'Observation' AND search_name = 'date' AND $where "
          'ORDER BY id',
        )
        .get();
    return rows.map((r) => r.read<String>('id')).toList();
  }

  setUp(() async {
    await obs('day', at: '2013-01-10');
    await obs('month', at: '2013-03');
    await obs('second', at: '2013-01-10T12:00:00Z');
    await obs('period', start: '2013-01-05', end: '2013-01-20');
    await obs('open-end', start: '2013-01-21');
    await obs('open-start', end: '2012-12-01');
    await obs('year', at: '2014');
  });

  test('open bounds are stored as the sentinels, never NULL', () async {
    final rows = await (db.select(db.dateSearchParameters)
          ..where((t) => t.id.isIn(['open-end', 'open-start'])))
        .get();
    final byId = {for (final r in rows) r.id: r};
    // Drift hands the instants back in local time; compare the moments.
    expect(
      byId['open-end']!.dateValueEnd!.isAtSameMomentAs(afterAnyDate),
      isTrue,
    );
    expect(
      byId['open-start']!.dateValue!.isAtSameMomentAs(beforeAnyDate),
      isTrue,
    );
  });

  test('every prefix at every value answers what the NULL-OR form answered',
      () async {
    const prefixes = ['', 'eq', 'gt', 'lt', 'ge', 'le', 'sa', 'eb', 'ne'];
    const values = [
      '2013-01-10', '2013-01', '2013', '2013-03-14', '2012-11-30', '2015', //
      '2013-01-10T12:00:00Z', '2013-01-21', '2012-12-01',
    ];
    var compared = 0;
    for (final prefix in prefixes) {
      for (final written in values) {
        expect(
          await find('$prefix$written'),
          await old(prefix, written),
          reason: '$prefix$written',
        );
        compared++;
      }
    }
    expect(compared, prefixes.length * values.length);
  });

  test('the worked example of 3.1.1.4.7 still holds', () async {
    // "from 21-Jan 2013 onwards" is a Period with no end, and
    // `ge2013-03-14` includes it (search.html 3.1.1.4.7, read whole
    // 2026-09-08: "because that period may include times after 14-Mar
    // 2013").
    // March 2013 ends after 14 March, so its month is above the search
    // value too.
    expect(await find('ge2013-03-14'), ['month', 'open-end', 'year']);
    expect(await find('lt2012-06'), ['open-start']);
    expect(await find('sa2013-01-20'), ['month', 'open-end', 'year']);
    expect(await find('eb2013-01-05'), ['open-start']);
  });
}
