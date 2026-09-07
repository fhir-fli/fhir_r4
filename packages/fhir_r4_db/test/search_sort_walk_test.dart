import 'package:drift/native.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_db/fhir_r4_db.dart' hide Resource;
import 'package:test/test.dart';

/// The sort-index walk: a one-key sort over a set that is a fair share of the
/// type is answered by reading the key's own index in order rather than
/// grouping every match. It must give exactly the grouped join's order.
/// R4B search.html 3.1.1.5.1, read whole 2026-09-06: "the sort is based on
/// the item in the set of multiple parameters that comes earliest in the
/// specified sort order"; nulls last and ties on id as the grouped join does.
/// And it must step aside for a rare filter, where reading the whole index to
/// find twenty hits would cost more than grouping the few matches.
///
/// The expected order is computed from the fixture itself, not read back
/// from another path of the same code.
Future<void> main() async {
  late FhirDb db;
  late FhirDao dao;

  const n = 600;
  String idOf(int i) => 'o${i.toString().padLeft(3, '0')}';
  bool dated(int i) => i % 10 != 0;
  String dateOf(int i) =>
      '2020-${((i ~/ 25) % 12 + 1).toString().padLeft(2, '0')}-'
      '${(i % 25 + 1).toString().padLeft(2, '0')}';
  List<int> quantitiesOf(int i) => [(i * 7) % 101, if (i % 7 == 0) 1000 - i];
  bool rare(int i) => i % 120 == 7;

  /// Ids in `-date` order: dated ones by date descending then id, then the
  /// undated ones by id.
  List<String> expectedByDateDesc(Iterable<int> pool) {
    final withDate = pool.where(dated).toList()
      ..sort((a, b) {
        final c = dateOf(b).compareTo(dateOf(a));
        return c != 0 ? c : a.compareTo(b);
      });
    final without = pool.where((i) => !dated(i)).toList()..sort();
    return [...withDate.map(idOf), ...without.map(idOf)];
  }

  List<String> expectedByDateAsc(Iterable<int> pool) {
    final withDate = pool.where(dated).toList()
      ..sort((a, b) {
        final c = dateOf(a).compareTo(dateOf(b));
        return c != 0 ? c : a.compareTo(b);
      });
    final without = pool.where((i) => !dated(i)).toList()..sort();
    return [...withDate.map(idOf), ...without.map(idOf)];
  }

  /// By component quantity: descending sorts each resource by its largest
  /// value, ascending by its smallest (the value earliest in the sort
  /// order), ties on id. Every observation has at least one, so no tail.
  List<String> expectedByQuantity({required bool descending}) {
    final pool = List.generate(n, (i) => i);
    int key(int i) => descending
        ? quantitiesOf(i).reduce((a, b) => a > b ? a : b)
        : quantitiesOf(i).reduce((a, b) => a < b ? a : b);
    pool.sort((a, b) {
      final c =
          descending ? key(b).compareTo(key(a)) : key(a).compareTo(key(b));
      return c != 0 ? c : a.compareTo(b);
    });
    return pool.map(idOf).toList();
  }

  setUp(() async {
    db = FhirDb(NativeDatabase.memory());
    dao = db.fhirDao;
    // 600 observations: every one final; a rare code on 5 dated ones; dates
    // that collide in bands so ties are exercised; every tenth one has no
    // date; every seventh carries TWO component quantities so the
    // first-appearance rule is exercised on a repeating value.
    for (var i = 0; i < n; i++) {
      await dao.saveResource(
        Observation.fromJson({
          'resourceType': 'Observation',
          'id': idOf(i),
          'status': 'final',
          'code': {
            'coding': [
              {
                'system': 'http://example.org',
                'code': rare(i) ? 'rare' : 'common',
              },
            ],
          },
          if (dated(i)) 'effectiveDateTime': dateOf(i),
          'component': [
            for (final q in quantitiesOf(i))
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

  Future<List<String>> ids(
    Map<String, List<String>> params,
    List<String> sort, {
    int? count,
    int? offset,
  }) async =>
      (await dao.search(
        resourceType: R4ResourceType.Observation,
        searchParameters: params,
        sort: sort,
        count: count,
        offset: offset,
      ))
          .map((r) => r.id!.valueString!)
          .toList();

  test("a fair-share filter walks the index, and the order is the join's",
      () async {
    final expected = expectedByDateDesc(List.generate(n, (i) => i));
    final walked = <String>[];
    for (var offset = 0; offset < n; offset += 50) {
      walked.addAll(
        await ids(
          {
            'status': ['final'],
          },
          ['-date'],
          count: 50,
          offset: offset,
        ),
      );
      expect(dao.lastSearchPagedInSql, isTrue);
      // The estimate walks while the page is cheaper to reach by walking
      // than the 600 matches are to group; the last page is not.
      expect(
        dao.lastSortWalkedIndex,
        offset + 50 < n,
        reason: 'offset $offset',
      );
    }
    expect(walked, expected);
    // The 60 undated observations came last, in id order.
    expect(walked.sublist(540), [for (var i = 0; i < n; i += 10) idOf(i)]);
  });

  test('ascending too, and a page deep into the undated tail', () async {
    final expected = expectedByDateAsc(List.generate(n, (i) => i));
    expect(
      await ids(
        {
          'status': ['final'],
        },
        ['date'],
        count: 30,
        offset: 530,
      ),
      expected.sublist(530, 560),
    );
    expect(dao.lastSortWalkedIndex, isTrue);
  });

  test('a repeating value sorts by its earliest in the sort order', () async {
    expect(
      await ids(
        {
          'status': ['final'],
        },
        ['-component-value-quantity'],
        count: 40,
      ),
      expectedByQuantity(descending: true).sublist(0, 40),
    );
    expect(dao.lastSortWalkedIndex, isTrue);
    expect(
      await ids(
        {
          'status': ['final'],
        },
        ['component-value-quantity'],
        count: 40,
      ),
      expectedByQuantity(descending: false).sublist(0, 40),
    );
  });

  test('the grouped join agrees with the walk on the same pages', () async {
    // Two keys force the grouped join; `status` is the same for every
    // resource, so the order is the date order.
    final grouped = await ids(
      {
        'status': ['final'],
      },
      ['status', '-date'],
      count: 100,
      offset: 500,
    );
    expect(dao.lastSortWalkedIndex, isFalse);
    expect(
      grouped,
      expectedByDateDesc(List.generate(n, (i) => i)).sublist(500, 600),
    );
  });

  test('a rare filter keeps the grouped join', () async {
    final page = await ids(
      {
        'code': ['rare'],
      },
      ['-date'],
      count: 20,
    );
    expect(dao.lastSearchPagedInSql, isTrue);
    expect(dao.lastSortWalkedIndex, isFalse);
    expect(page, expectedByDateDesc(List.generate(n, (i) => i).where(rare)));
  });

  test('_lastUpdated keeps the grouped join', () async {
    await ids(
      {
        'status': ['final'],
      },
      ['-_lastUpdated'],
      count: 20,
    );
    expect(dao.lastSortWalkedIndex, isFalse);
  });
}
