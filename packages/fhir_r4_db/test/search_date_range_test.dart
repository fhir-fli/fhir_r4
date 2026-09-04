import 'package:drift/native.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_db/fhir_r4_db.dart' hide Resource;
import 'package:test/test.dart';

/// Date search per R4B §3.1.1.4.7, against the real database.
///
/// Every worked example in the section is here, with the section's own
/// values. "from 21-Jan 2013 onwards" is a Period with a start and no end;
/// "before and including 21-Jan 2013" a Period with an end and no start.
Future<void> main() async {
  late FhirDb db;
  late FhirDao dao;

  setUp(() async {
    db = FhirDb(NativeDatabase.memory());
    dao = db.fhirDao;
  });

  tearDown(() => db.close());

  Future<void> observation(String id, Object effective) => dao.saveResource(
        Observation.fromJson({
          'resourceType': 'Observation',
          'id': id,
          'status': 'final',
          'code': {
            'coding': [
              {'system': 'http://example.org', 'code': 'X'},
            ],
          },
          if (effective is String) 'effectiveDateTime': effective,
          if (effective is Map) 'effectivePeriod': effective,
        }),
      );

  Future<List<String>> find(
    String value, {
    R4ResourceType type = R4ResourceType.Observation,
    String parameter = 'date',
    int? count,
  }) async =>
      (await dao.search(
        resourceType: type,
        searchParameters: {
          parameter: [value],
        },
        count: count,
      ))
          .map((r) => r.id!.valueString!)
          .toList()
        ..sort();

  group('searchDateRange', () {
    test("covers one unit of the value's precision", () {
      expect(
        searchDateRange('2013'),
        (low: DateTime(2013), high: DateTime(2014)),
      );
      expect(
        searchDateRange('2013-01'),
        (low: DateTime(2013), high: DateTime(2013, 2)),
      );
      expect(
        searchDateRange('2013-01-14'),
        (low: DateTime(2013, 1, 14), high: DateTime(2013, 1, 15)),
      );
      expect(
        searchDateRange('2013-01-14T10:00'),
        (low: DateTime(2013, 1, 14, 10), high: DateTime(2013, 1, 14, 10, 1)),
      );
      expect(
        searchDateRange('2013-01-14T10:00:00Z'),
        (
          low: DateTime.utc(2013, 1, 14, 10),
          high: DateTime.utc(2013, 1, 14, 10, 0, 1),
        ),
      );
      // An offset names an instant: 10:00+02:00 is 08:00Z.
      expect(
        searchDateRange('2013-01-14T10:00+02:00'),
        (
          low: DateTime.utc(2013, 1, 14, 8),
          high: DateTime.utc(2013, 1, 14, 8, 1)
        ),
      );
    });

    test('rejects what the grammar does not admit', () {
      // "the minutes SHALL be present if an hour is present"
      expect(searchDateRange('2013-01-14T10'), isNull);
      // The primitive parser read this as the year 2013.
      expect(searchDateRange('2013-1-4'), isNull);
      expect(searchDateRange('nope'), isNull);
      expect(searchDateRange(''), isNull);
    });
  });

  group("the section's examples, dateTime targets", () {
    setUp(() async {
      await observation('t14-00', '2013-01-14T00:00:00');
      await observation('t14-10', '2013-01-14T10:00:00');
      await observation('t15-00', '2013-01-15T00:00:00');
      await observation('d14', '2013-01-14');
    });

    test('eq2013-01-14', () async {
      // "2013-01-14T00:00 matches (obviously); 2013-01-14T10:00 matches;
      // 2013-01-15T00:00 does not match - it's not in the range"
      expect(await find('eq2013-01-14'), ['d14', 't14-00', 't14-10']);
      expect(await find('2013-01-14'), ['d14', 't14-00', 't14-10']);
    });

    test('ne2013-01-14', () async {
      // "2013-01-15T00:00 matches - it's not in the range; 2013-01-14T00:00
      // does not match; 2013-01-14T10:00 does not match"
      expect(await find('ne2013-01-14'), ['t15-00']);
    });

    test('lt2013-01-14T10:00', () async {
      // "2013-01-14 matches, because it includes the part of 14-Jan 2013
      // before 10am"
      expect(await find('lt2013-01-14T10:00'), ['d14', 't14-00']);
    });

    test('gt2013-01-14T10:00', () async {
      // "2013-01-14 matches, because it includes the part of 14-Jan 2013
      // after 10am". 10:00:00 itself is [10:00:00, 10:00:01), which does not
      // reach above [10:00, 10:01).
      expect(await find('gt2013-01-14T10:00'), ['d14', 't15-00']);
    });

    test('a year and a month are whole intervals', () async {
      // "2000 is equivalent to an interval of [2000-01-01T00:00,
      // 2000-12-31T23:59]"
      expect(await find('2013'), ['d14', 't14-00', 't14-10', 't15-00']);
      expect(await find('2013-01'), ['d14', 't14-00', 't14-10', 't15-00']);
      expect(await find('2013-02'), isEmpty);
      expect(await find('2012'), isEmpty);
    });
  });

  group("the section's examples, Period targets", () {
    setUp(() async {
      await observation('from-jan21', {'start': '2013-01-21'});
      await observation('from-mar15', {'start': '2013-03-15'});
      await observation('to-jan21', {'end': '2013-01-21'});
      await observation('mar14', '2013-03-14');
    });

    test('ge2013-03-14', () async {
      // '"from 21-Jan 2013 onwards" is included because that period may
      // include times after 14-Mar 2013'
      expect(await find('ge2013-03-14'), ['from-jan21', 'from-mar15', 'mar14']);
    });

    test('le2013-03-14', () async {
      // '"from 21-Jan 2013 onwards" is included because that period may
      // include times before 14-Mar 2013'
      expect(await find('le2013-03-14'), ['from-jan21', 'mar14', 'to-jan21']);
    });

    test('sa2013-03-14', () async {
      // from 15-Mar: included, "starts after 14-Mar 2013"; from 21-Jan: not,
      // "starts before"; before-and-including 21-Jan: not, "starts (and
      // ends) before".
      expect(await find('sa2013-03-14'), ['from-mar15']);
    });

    test('eb2013-03-14', () async {
      // from 15-Mar: not; from 21-Jan: not, "does not end before it";
      // before-and-including 21-Jan: included, "ends before 14-Mar 2013".
      expect(await find('eb2013-03-14'), ['to-jan21']);
    });

    test('ap2013-03-14', () async {
      // "14-Mar 2013 is included - as it exactly matches; 21-Jan 2013 is
      // not included; 15-Jun 2015 is not included". The open-ended periods
      // overlap any margin, so they match; the closed one before 21-Jan
      // does not reach the margin around 14-Mar 2013 (10% of the gap to
      // now, years away, is months — but not fourteen years).
      await observation('jun2015', '2015-06-15');
      final found = await find('ap2013-03-14');
      expect(found, contains('mar14'));
      expect(found, isNot(contains('jun2015')));
    });

    test('a Period is matched by eq when it lies within the search', () async {
      await observation('feb', {'start': '2013-02-03', 'end': '2013-02-10'});
      expect(await find('2013-02'), ['feb']);
      expect(await find('2013-02-05'), isEmpty);
      // ge: "the range above the search value intersects with the range of
      // the target value, or the range of the search value fully contains
      // the range of the target value". The period reaches above 02-09, so
      // ge2013-02-09 includes it; it ends with 02-10 (Period.end is
      // inclusive, to the end of its own day) and so reaches nothing above
      // 02-10, and ge2013-02-10 does not include it.
      expect(
        await find('ge2013-02-09'),
        ['feb', 'from-jan21', 'from-mar15', 'mar14'],
      );
      expect(await find('ge2013-02-10'), ['from-jan21', 'from-mar15', 'mar14']);
      expect(await find('le2013-02-10'), ['feb', 'from-jan21', 'to-jan21']);
    });
  });

  test('a Period-valued parameter is indexed: Encounter.date', () async {
    // Encounter.date reads Encounter.period. Before this, a Period wrote no
    // index row at all, so Encounter?date=... always returned nothing.
    await dao.saveResource(
      Encounter.fromJson({
        'resourceType': 'Encounter',
        'id': 'enc',
        'status': 'finished',
        'class': {'code': 'IMP'},
        'period': {
          'start': '2013-01-14T08:00:00Z',
          'end': '2013-01-16T12:00:00Z',
        },
      }),
    );
    expect(await find('2013-01', type: R4ResourceType.Encounter), ['enc']);
    expect(await find('2013-01-15', type: R4ResourceType.Encounter), isEmpty);
    expect(await find('ge2013-01-15', type: R4ResourceType.Encounter), ['enc']);
    expect(await find('le2013-01-15', type: R4ResourceType.Encounter), ['enc']);
    expect(await find('sa2013-01-13', type: R4ResourceType.Encounter), ['enc']);
    expect(await find('eb2013-01-17', type: R4ResourceType.Encounter), ['enc']);
    expect(await find('eb2013-01-16', type: R4ResourceType.Encounter), isEmpty);
  });

  test('a Timing is indexed by its outer limits', () async {
    // "a schedule that specifies every second day between 31-Jan 2013 and
    // 24-Mar 2013 includes 1-Feb 2013, even though that is on an odd day"
    await dao.saveResource(
      Observation.fromJson({
        'resourceType': 'Observation',
        'id': 'timed',
        'status': 'final',
        'code': {
          'coding': [
            {'system': 'http://example.org', 'code': 'X'},
          ],
        },
        'effectiveTiming': {
          'repeat': {
            'boundsPeriod': {'start': '2013-01-31', 'end': '2013-03-24'},
            'frequency': 1,
            'period': 2,
            'periodUnit': 'd',
          },
        },
      }),
    );
    expect(await find('ge2013-02-01'), ['timed']);
    expect(await find('le2013-02-01'), ['timed']);
    expect(await find('2013'), ['timed']);
    expect(await find('sa2013-03-24'), isEmpty);
    expect(await find('eb2013-03-25'), ['timed']);
  });

  test('an offset on the stored value is honoured', () async {
    // 10:00+02:00 is 08:00Z; searching by the same instant written in Z
    // finds it, and searching at 10:00Z does not.
    await observation('plus2', '2013-01-14T10:00:00+02:00');
    expect(await find('2013-01-14T08:00Z'), ['plus2']);
    expect(await find('2013-01-14T10:00Z'), isEmpty);
  });

  test('_lastUpdated uses the same semantics', () async {
    await observation('now', '2013-01-14');
    final saved = (await dao.search(
      resourceType: R4ResourceType.Observation,
      searchParameters: const {},
    ))
        .single;
    final stamp = saved.meta!.lastUpdated!.valueDateTime!;
    final year = stamp.year.toString();
    expect(await find(year, parameter: '_lastUpdated'), ['now']);
    expect(await find('${stamp.year - 1}', parameter: '_lastUpdated'), isEmpty);
    expect(await find('lt$year', parameter: '_lastUpdated'), isEmpty);
    expect(await find('le$year', parameter: '_lastUpdated'), ['now']);
    expect(
      await find('gt${stamp.year - 1}', parameter: '_lastUpdated'),
      ['now'],
    );
  });

  test('the SQL-paged path and the general path agree on every prefix',
      () async {
    await observation('from-jan21', {'start': '2013-01-21'});
    await observation('to-jan21', {'end': '2013-01-21'});
    await observation('t14-10', '2013-01-14T10:00:00');
    await observation('d14', '2013-01-14');
    for (final prefix in [
      '',
      'eq',
      'ne',
      'gt',
      'lt',
      'ge',
      'le',
      'sa',
      'eb',
      'ap',
    ]) {
      final value = '${prefix}2013-01-14';
      expect(
        await find(value, count: 50),
        await find(value),
        reason: value,
      );
    }
  });
}
