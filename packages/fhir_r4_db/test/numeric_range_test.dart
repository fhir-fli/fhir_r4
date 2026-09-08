import 'package:drift/native.dart';
import 'package:fhir_r4/fhir_r4.dart' as fhir;
import 'package:fhir_r4_db/fhir_r4_db.dart';
import 'package:test/test.dart';

/// Schema 11 (fhirant REVIEW-2026-09-06 §6.1): a number or quantity prefix
/// is one range on a bound's covering index, open bounds are ±infinity, and
/// every prefix answers exactly what the NULL-OR form answered. The old
/// form is written out below as SQL and run against the same rows, so the
/// comparison is against the previous code, not against a recollection of
/// it.
void main() {
  late FhirDb db;
  late FhirDao dao;

  setUp(() async {
    db = FhirDb(NativeDatabase.memory());
    dao = FhirDao(db);
  });

  tearDown(() => db.close());

  /// An ActivityDefinition whose useContext is a Quantity of [value] (as
  /// written in [written], which decides its implicit range) or a Range
  /// [low]..[high], either bound optional. `context-quantity` is defined
  /// over both; Observation's `value-quantity` is not defined over Range.
  Future<void> ad(String id, {String? written, num? low, num? high}) =>
      dao.saveResource(
        fhir.ActivityDefinition.fromJson({
          'resourceType': 'ActivityDefinition',
          'id': id,
          'status': 'active',
          'useContext': [
            {
              'code': {'code': 'age'},
              if (written != null)
                'valueQuantity': {'value': num.parse(written), 'code': 'a'},
              if (written == null)
                'valueRange': {
                  if (low != null) 'low': {'value': low, 'code': 'a'},
                  if (high != null) 'high': {'value': high, 'code': 'a'},
                },
            },
          ],
        }),
      );

  const type = fhir.R4ResourceType.ActivityDefinition;

  Future<List<String>> find(String value) async {
    final hits = await dao.search(
      resourceType: type,
      searchParameters: {
        'context-quantity': [value],
      },
      count: 100,
    );
    return hits.map((r) => r.id!.valueString!).toList()..sort();
  }

  /// The ids the predicate of before schema 11 selects: the OR over both
  /// bounds with their NULL alternatives, as `_numericPrefixCondition`
  /// wrote it, run as SQL over the same table.
  Future<List<String>> old(String prefix, String written) async {
    final (:low, :high) = implicitRange(written)!;
    final value = double.parse(written);
    const l = 'quantity_low';
    const h = 'quantity_high';
    final contained = '($l IS NOT NULL AND $h IS NOT NULL AND $l >= $low '
        'AND $l < $high AND $h <= $high)';
    final above = '($h IS NULL OR $h > $value OR ($l = $h AND $l > $value))';
    final below = '($l IS NULL OR $l < $value)';
    final approximation = value.abs() * 0.1;
    final where = switch (prefix) {
      'gt' => above,
      'lt' => below,
      'ge' => '($above OR ($l IS NOT NULL AND $l >= $value))',
      'le' => '($below OR ($h IS NOT NULL AND $h <= $value))',
      'sa' => '($l IS NOT NULL AND $l >= $high)',
      'eb' => '($h IS NOT NULL AND $h <= $low)',
      'ne' => 'NOT $contained',
      'ap' => '(($l IS NULL OR $l < ${high + approximation}) AND '
          '($h IS NULL OR $h > ${low - approximation}))',
      _ => contained,
    };
    final rows = await db
        .customSelect(
          'SELECT DISTINCT id FROM quantity_search_parameters WHERE '
          "resource_type = 'ActivityDefinition' AND search_name = "
          "'context-quantity' AND $where ORDER BY id",
        )
        .get();
    return rows.map((r) => r.read<String>('id')).toList();
  }

  setUp(() async {
    await ad('int10', written: '10');
    await ad('int100', written: '100');
    await ad('dec100.0', written: '100.0');
    await ad('dec7.25', written: '7.25');
    await ad('range5-50', low: 5, high: 50);
    await ad('range6-7', low: 6, high: 7);
    await ad('range4-9', low: 4, high: 9);
    await ad('point7-7', low: 7, high: 7);
    await ad('open-high', low: 200);
    await ad('open-low', high: 2);
  });

  test('open bounds are stored as infinity, never NULL', () async {
    final rows = await (db.select(db.quantitySearchParameters)
          ..where((t) => t.id.isIn(['open-high', 'open-low'])))
        .get();
    final byId = {for (final r in rows) r.id: r};
    expect(byId['open-high']!.quantityHigh, double.infinity);
    expect(byId['open-high']!.quantityLow, greaterThan(0));
    expect(byId['open-low']!.quantityLow, double.negativeInfinity);
    expect(byId['open-low']!.quantityHigh, lessThan(3));
  });

  test('every prefix at every value answers what the NULL-OR form answered',
      () async {
    const prefixes = ['', 'eq', 'gt', 'lt', 'ge', 'le', 'sa', 'eb', 'ne', 'ap'];
    const values = [
      '100',
      '100.0',
      '7',
      '7.25',
      '4',
      '10',
      '0.5',
      '1000',
      '-3',
      '99.5',
      '50',
      '2',
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

  test('the open ranges are found from both sides', () async {
    expect(await find('gt1000'), ['open-high']);
    expect(await find('lt-1000'), ['open-low']);
    // sa: the stored range starts at or after the search range's end (150
    // is [149.5, 150.5)); eb: it ends at or before its start (3 is
    // [2.5, 3.5), and the open-low Range's high, 2, is [1.5, 2.5)).
    expect(await find('sa150'), ['open-high']);
    expect(await find('eb3'), ['open-low']);
    expect(await find('1000'), isEmpty);
  });

  test("a prefix is a range seek on a bound's covering index, not a scan",
      () async {
    for (final prefix in ['gt', 'lt', 'ge', 'le', 'sa', 'eb', '', 'ap']) {
      final plan = await db
          .customSelect(
            'EXPLAIN QUERY PLAN SELECT id FROM quantity_search_parameters '
            "WHERE resource_type = 'ActivityDefinition' AND search_name = "
            "'context-quantity' AND ${_sql(prefix)}",
          )
          .get();
      final detail = plan.map((r) => r.read<String>('detail')).join(' | ');
      expect(
        detail,
        matches(
          RegExp(
            r'resource_type=\? AND search_name=\? AND quantity_(low|high)[<>]',
          ),
        ),
        reason: '$prefix: $detail',
      );
    }
  });

  test('the page is cut like a date range', () async {
    final hits = await dao.search(
      resourceType: type,
      searchParameters: {
        'context-quantity': ['gt60'],
      },
      count: 2,
    );
    expect(hits.map((r) => r.id!.valueString), ['dec100.0', 'int100']);
  });
}

/// The SQL `_numericPrefixCondition` writes for [prefix] at 100.
String _sql(String prefix) => switch (prefix) {
      'gt' => 'quantity_high > 100',
      'lt' => 'quantity_low < 100',
      'ge' => 'quantity_high >= 100 AND '
          '(quantity_high > 100 OR quantity_low >= 100)',
      'le' => 'quantity_low <= 100 AND '
          '(quantity_low < 100 OR quantity_high <= 100)',
      'sa' => 'quantity_low >= 100.5',
      'eb' => 'quantity_high <= 99.5',
      'ap' => 'quantity_low < 110.5 AND quantity_high > 89.5',
      _ => 'quantity_low >= 99.5 AND quantity_low < 100.5 AND '
          'quantity_high <= 100.5',
    };
