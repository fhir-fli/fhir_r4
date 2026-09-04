import 'package:drift/native.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_db/fhir_r4_db.dart' hide Resource;
import 'package:test/test.dart';

/// Searches made only of plain token parameters are paged in SQL: one select
/// with `ORDER BY id LIMIT`, and each further parameter nested as
/// `id IN (SELECT …)`. These pin that the SQL path gives the same answer the
/// general path gives, page by page, and intersects rather than unions.
Future<void> main() async {
  late FhirDb db;
  late FhirDao dao;

  Future<List<String>> ids(
    Map<String, List<String>> params, {
    int? count,
    int? offset,
    List<String>? sort,
  }) async =>
      (await dao.search(
        resourceType: R4ResourceType.Observation,
        searchParameters: params,
        count: count,
        offset: offset,
        sort: sort,
      ))
          .map((r) => r.id!.valueString!)
          .toList();

  setUp(() async {
    db = FhirDb(NativeDatabase.memory());
    dao = db.fhirDao;
    // 30 observations: ids o00..o29, even ones final, odd ones preliminary,
    // and code A on the first 20, code B on the last 10.
    for (var i = 0; i < 30; i++) {
      await dao.saveResource(
        Observation.fromJson({
          'resourceType': 'Observation',
          'id': 'o${i.toString().padLeft(2, '0')}',
          'status': i.isEven ? 'final' : 'preliminary',
          'effectiveDateTime': '2020-01-${(i + 1).toString().padLeft(2, '0')}',
          'valueString': i < 10 ? 'Alpha reading' : 'Beta reading',
          'code': {
            'coding': [
              {'system': 'http://example.org', 'code': i < 20 ? 'A' : 'B'},
            ],
          },
        }),
      );
    }
  });

  tearDown(() => db.close());

  test('one token parameter pages in SQL and pages stably', () async {
    final page1 = await ids(
      {
        'status': ['final'],
      },
      count: 5,
    );
    final page2 = await ids(
      {
        'status': ['final'],
      },
      count: 5,
      offset: 5,
    );
    final page3 = await ids(
      {
        'status': ['final'],
      },
      count: 5,
      offset: 10,
    );
    expect(page1, ['o00', 'o02', 'o04', 'o06', 'o08']);
    expect(page2, ['o10', 'o12', 'o14', 'o16', 'o18']);
    expect(page3, ['o20', 'o22', 'o24', 'o26', 'o28']);
    expect(
      await ids(
        {
          'status': ['final'],
        },
        count: 5,
        offset: 15,
      ),
      isEmpty,
    );
  });

  test('two token parameters intersect, not union', () async {
    // final AND code B: even ids in 20..29 -> 5 rows. A union would be 25.
    final page = await ids(
      {
        'status': ['final'],
        'code': ['http://example.org|B'],
      },
      count: 10,
    );
    expect(page, ['o20', 'o22', 'o24', 'o26', 'o28']);
  });

  test('a date parameter pages in SQL with its prefix honoured', () async {
    // date gt 2020-01-20 -> o20..o29 -> 10 rows, paged 4 at a time.
    final page1 = await ids(
      {
        'date': ['gt2020-01-20'],
      },
      count: 4,
    );
    final page3 = await ids(
      {
        'date': ['gt2020-01-20'],
      },
      count: 4,
      offset: 8,
    );
    expect(page1, ['o20', 'o21', 'o22', 'o23']);
    expect(page3, ['o28', 'o29']);
  });

  test('a token and a date parameter intersect across two tables', () async {
    // final AND date gt 2020-01-20 -> even ids in 20..29 -> 5 rows.
    final page = await ids(
      {
        'status': ['final'],
        'date': ['gt2020-01-20'],
      },
      count: 10,
    );
    expect(page, ['o20', 'o22', 'o24', 'o26', 'o28']);
  });

  test('a date value that is not a date falls back and finds nothing',
      () async {
    expect(
      await ids(
        {
          'date': ['gtnot-a-date'],
        },
        count: 5,
      ),
      isEmpty,
    );
  });

  test('a string parameter pages in SQL with the starts-with default',
      () async {
    // value-string sw "alpha" -> o00..o09 -> 10 rows; case-insensitive.
    final page = await ids(
      {
        'value-string': ['alpha'],
      },
      count: 4,
      offset: 8,
    );
    expect(page, ['o08', 'o09']);
    expect(
      await ids(
        {
          'value-string': ['reading'],
        },
        count: 5,
      ),
      isEmpty,
      reason: 'starts-with, not contains',
    );
  });

  test('a string and a token parameter intersect', () async {
    // "Beta" AND final -> even ids in 10..29 -> 10 rows.
    final page = await ids(
      {
        'value-string': ['Beta'],
        'status': ['final'],
      },
      count: 3,
      offset: 6,
    );
    expect(page, ['o22', 'o24', 'o26']);
  });

  test('a string modifier falls back to the general path', () async {
    final exact = await ids(
      {
        'value-string:exact': ['Alpha reading'],
      },
      count: 3,
    );
    expect(exact, ['o00', 'o01', 'o02']);
  });

  test('the SQL path and the general path agree', () async {
    // A comma forces the general path; the same set without one takes the
    // SQL path. Both must give the same rows in the same order.
    final general = await ids(
      {
        'status': ['final,final'],
      },
      count: 7,
    );
    final sql = await ids(
      {
        'status': ['final'],
      },
      count: 7,
    );
    expect(sql, general);
  });

  test('a sort falls back to the general path and still pages', () async {
    final sorted = await ids(
      {
        'status': ['final'],
      },
      count: 3,
      sort: ['-_id'],
    );
    expect(sorted, hasLength(3));
  });
}
