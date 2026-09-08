import 'package:drift/native.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_db/fhir_r4_db.dart' hide Resource;
import 'package:test/test.dart';

/// `_sort`, R4B §3.1.1.5.1, on every path: the SQL-paged one in both its
/// shapes (the index walk and the grouped join, forced each way through
/// `preferSortWalk`, and the one the sizes choose) and the general one
/// (forced with a `:missing` modifier, which the SQL path does not admit).
/// All must give the same order.
void main() {
  group('the shape the sizes choose', () => defineSortTests(null));
  group('forced: the index walk', () => defineSortTests(true));
  group('forced: the grouped join', () => defineSortTests(false));
}

void defineSortTests(bool? preferWalk) {
  late FhirDb db;
  late FhirDao dao;

  setUp(() async {
    db = FhirDb(NativeDatabase.memory());
    dao = db.fhirDao..preferSortWalk = preferWalk;
    // Five observations. Two carry TWO dates (a Period is one value; these
    // use component-value-quantity for a repeating numeric instead) and
    // one has no quantity at all.
    for (final (id, status, date, quantities) in [
      ('a', 'final', '2020-03-01', [5.0, 1.0]),
      ('b', 'final', '2020-01-01', [3.0]),
      ('c', 'preliminary', '2020-02-01', [2.0, 9.0]),
      ('d', 'final', '2020-04-01', <double>[]),
      ('e', 'final', '2020-02-01', [4.0]),
    ]) {
      await dao.saveResource(
        Observation.fromJson({
          'resourceType': 'Observation',
          'id': id,
          'status': status,
          'effectiveDateTime': date,
          'code': {
            'coding': [
              {'system': 'http://example.org', 'code': 'X'},
            ],
          },
          'component': [
            for (final q in quantities)
              {
                'code': {
                  'coding': [
                    {'system': 'http://example.org', 'code': 'mass'},
                  ],
                },
                'valueQuantity': {'value': q, 'code': 'mg'},
              },
          ],
        }),
      );
    }
  });

  tearDown(() => db.close());

  /// The SQL path: plain parameters only.
  Future<List<String>> sql(
    List<String> sort, {
    int? offset,
    int count = 10,
  }) async =>
      (await dao.search(
        resourceType: R4ResourceType.Observation,
        searchParameters: {
          'code': ['X'],
        },
        sort: sort,
        count: count,
        offset: offset,
      ))
          .map((r) => r.id!.valueString!)
          .toList();

  /// The general path: a modifier the SQL path refuses, matching everything.
  Future<List<String>> general(List<String> sort) async => (await dao.search(
        resourceType: R4ResourceType.Observation,
        searchParameters: {
          'code:missing': ['false'],
        },
        sort: sort,
        count: 10,
      ))
          .map((r) => r.id!.valueString!)
          .toList();

  test('ascending by date, ties broken by id', () async {
    expect(await sql(['date']), ['b', 'c', 'e', 'a', 'd']);
    expect(await general(['date']), ['b', 'c', 'e', 'a', 'd']);
  });

  test('descending by date', () async {
    expect(await sql(['-date']), ['d', 'a', 'c', 'e', 'b']);
    expect(await general(['-date']), ['d', 'a', 'c', 'e', 'b']);
  });

  test('a repeating value sorts by the one earliest in the sort order',
      () async {
    // Ascending: a's smallest is 1, c's is 2, b 3, e 4; d has none and
    // sorts last. Descending: c's largest is 9, a's 5, e 4, b 3, then d.
    const key = 'component-value-quantity';
    expect(await sql([key]), ['a', 'c', 'b', 'e', 'd']);
    expect(await sql(['-$key']), ['c', 'a', 'e', 'b', 'd']);
    expect(await general([key]), ['a', 'c', 'b', 'e', 'd']);
    expect(await general(['-$key']), ['c', 'a', 'e', 'b', 'd']);
  });

  test('two keys: status, then date descending', () async {
    expect(await sql(['status', '-date']), ['d', 'a', 'e', 'b', 'c']);
    expect(await general(['status', '-date']), ['d', 'a', 'e', 'b', 'c']);
  });

  test('_id and _lastUpdated', () async {
    expect(await sql(['-_id']), ['e', 'd', 'c', 'b', 'a']);
    expect(await general(['-_id']), ['e', 'd', 'c', 'b', 'a']);
    // Saved in order a..e within the same second or two; ascending by
    // _lastUpdated with id tie-break is then a..e either way.
    expect(await sql(['_lastUpdated']), ['a', 'b', 'c', 'd', 'e']);
  });

  test('a sorted search pages stably', () async {
    expect(
      await dao
          .search(
            resourceType: R4ResourceType.Observation,
            searchParameters: {
              'code': ['X'],
            },
            sort: ['date'],
            count: 2,
          )
          .then((r) => r.map((x) => x.id!.valueString!).toList()),
      ['b', 'c'],
    );
    expect(await sql(['date'], offset: 2), ['e', 'a', 'd']);
  });

  test('no parameters at all still pages in order', () async {
    final page = await dao.search(
      resourceType: R4ResourceType.Observation,
      searchParameters: const {},
      sort: ['-date'],
      count: 2,
    );
    expect(page.map((r) => r.id!.valueString), ['d', 'a']);
  });

  test('a string sorts case-insensitively', () async {
    for (final (id, family) in [
      ('p1', 'zed'),
      ('p2', 'Alpha'),
      ('p3', 'beta'),
    ]) {
      await dao.saveResource(
        Patient.fromJson({
          'resourceType': 'Patient',
          'id': id,
          'name': [
            {'family': family},
          ],
        }),
      );
    }
    final ordered = await dao.search(
      resourceType: R4ResourceType.Patient,
      searchParameters: const {},
      sort: ['family'],
      count: 10,
    );
    expect(ordered.map((r) => r.id!.valueString), ['p2', 'p3', 'p1']);
  });

  test('a page that begins in, or runs into, the no-value tail', () async {
    // component-value-quantity: a 1, c 2, b 3, e 4 have values; d has none
    // and sorts last. A page of two from offset 3 spans the last valued
    // resource and the tail; a page from offset 4 begins in the tail.
    const key = 'component-value-quantity';
    expect(await sql([key], offset: 3, count: 2), ['e', 'd']);
    expect(await sql([key], offset: 4, count: 2), ['d']);
    expect(await sql([key], offset: 5, count: 2), isEmpty);
    expect(await sql(['-$key'], offset: 4, count: 2), ['d']);
  });

  test(
      'a negated part and a compartment-free sort agree with the general '
      'path', () async {
    Future<List<String>> notFinal(List<String> sort) async => (await dao.search(
          resourceType: R4ResourceType.Observation,
          searchParameters: {
            'code': ['X'],
            'status:not': ['final'],
          },
          sort: sort,
          count: 10,
        ))
            .map((r) => r.id!.valueString!)
            .toList();
    expect(await notFinal(['date']), ['c']);
    expect(await notFinal(['-date']), ['c']);
  });

  test('a repeated value is one row of the order', () async {
    // a carries 5.0 and 1.0: once, at its earliest value, never twice.
    const key = 'component-value-quantity';
    final all = await sql([key]);
    expect(all.where((id) => id == 'a').length, 1);
    expect(all, ['a', 'c', 'b', 'e', 'd']);
  });
}
