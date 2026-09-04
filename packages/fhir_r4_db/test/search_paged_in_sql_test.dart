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

  /// Runs the search, and asserts which path ran: SQL paging whenever a
  /// count was given, unless [general] says this shape is meant to fall
  /// back. A right answer proves nothing about the path on its own.
  Future<List<String>> ids(
    Map<String, List<String>> params, {
    int? count,
    int? offset,
    List<String>? sort,
    bool general = false,
  }) async {
    final found = await dao.search(
      resourceType: R4ResourceType.Observation,
      searchParameters: params,
      count: count,
      offset: offset,
      sort: sort,
    );
    expect(
      dao.lastSearchPagedInSql,
      count != null && !general,
      reason: 'path for $params count=$count sort=$sort',
    );
    return found.map((r) => r.id!.valueString!).toList();
  }

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
          if (i < 10) 'valueString': 'Alpha reading',
          if (i >= 10) 'valueString': 'Beta reading',
          'component': [
            {
              'code': {
                'coding': [
                  {'system': 'http://example.org', 'code': 'mass'},
                ],
              },
              'valueQuantity': {
                'value': i,
                'system': 'http://unitsofmeasure.org',
                'code': 'mg',
              },
            },
          ],
          'subject': {'reference': 'Patient/${i < 15 ? 'p1' : 'p2'}'},
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

  Future<List<String>> riskIds(
    Map<String, List<String>> params, {
    int? count,
    int? offset,
  }) async =>
      (await dao.search(
        resourceType: R4ResourceType.RiskAssessment,
        searchParameters: params,
        count: count,
        offset: offset,
      ))
          .map((r) => r.id!.valueString!)
          .toList();

  /// Ten risk assessments r0..r9 with probability 0.0, 0.1 … 0.9.
  Future<void> saveRisks() async {
    for (var i = 0; i < 10; i++) {
      await dao.saveResource(
        RiskAssessment.fromJson({
          'resourceType': 'RiskAssessment',
          'id': 'r$i',
          'status': 'final',
          'subject': {'reference': 'Patient/p1'},
          'prediction': [
            {'probabilityDecimal': i / 10},
          ],
        }),
      );
    }
  }

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

  test('the smaller set is the outer select, whichever was given first',
      () async {
    // status=final is 15 rows and code=B is 10, so code is the outer here
    // even though status came first — and it sits on an ALIAS of the same
    // table the nested status condition uses. Both orders must agree with
    // the general path and with each other.
    final statusFirst = await ids(
      {
        'status': ['final'],
        'code': ['B'],
      },
      count: 3,
    );
    final codeFirst = await ids(
      {
        'code': ['B'],
        'status': ['final'],
      },
      count: 3,
    );
    expect(statusFirst, ['o20', 'o22', 'o24']);
    expect(codeFirst, statusFirst);
    expect(
      await ids({
        'status': ['final'],
        'code': ['B'],
      }),
      ['o20', 'o22', 'o24', 'o26', 'o28'],
    );
  });

  test('a comma is an OR inside one parameter, paged in SQL', () async {
    // status=final,preliminary -> everything; code=B OR status=preliminary.
    expect(
      await ids(
        {
          'status': ['final,preliminary'],
        },
        count: 3,
        offset: 27,
      ),
      ['o27', 'o28', 'o29'],
    );
    expect(
      await ids(
        {
          'code': ['B'],
          'status': ['preliminary,cancelled'],
        },
        count: 3,
      ),
      ['o21', 'o23', 'o25'],
    );
    // An escaped comma is one value, and it matches nothing here.
    expect(
      await ids(
        {
          'status': [r'final\,preliminary'],
        },
        count: 3,
      ),
      isEmpty,
    );
  });

  test('a repeated parameter is an AND, paged in SQL', () async {
    // code=A AND code=B: no observation has both.
    expect(
      await ids(
        {
          'code': ['A', 'B'],
        },
        count: 3,
      ),
      isEmpty,
    );
    // status=final AND status=final,preliminary: the even ids.
    expect(
      await ids(
        {
          'status': ['final', 'final,preliminary'],
        },
        count: 3,
      ),
      ['o00', 'o02', 'o04'],
    );
    // Agrees with the general path (no count, so no SQL paging).
    expect(
      await ids({
        'code': ['A', 'B'],
      }),
      isEmpty,
    );
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
        general: true,
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
      general: true,
    );
    expect(exact, ['o00', 'o01', 'o02']);
  });

  test('a reference parameter pages in SQL, Type/id and bare id', () async {
    // subject=Patient/p2 -> o15..o29 -> 15 rows.
    final typed = await ids(
      {
        'subject': ['Patient/p2'],
      },
      count: 4,
      offset: 12,
    );
    expect(typed, ['o27', 'o28', 'o29']);
    final bare = await ids(
      {
        'subject': ['p2'],
      },
      count: 2,
    );
    expect(bare, ['o15', 'o16']);
  });

  test('the query a client makes: subject AND code, paged in SQL', () async {
    // Patient/p1 AND code B -> none: p1 holds o00..o14, B is o20..o29.
    expect(
      await ids(
        {
          'subject': ['Patient/p1'],
          'code': ['http://example.org|B'],
        },
        count: 5,
      ),
      isEmpty,
    );
    // Patient/p2 AND code B AND final -> even ids in 20..29.
    expect(
      await ids(
        {
          'subject': ['Patient/p2'],
          'code': ['http://example.org|B'],
          'status': ['final'],
        },
        count: 10,
      ),
      ['o20', 'o22', 'o24', 'o26', 'o28'],
    );
  });

  test('a quantity parameter pages in SQL with its prefix honoured', () async {
    // component-value-quantity is the quantity parameter over the component.
    const key = 'component-value-quantity';
    expect(
      await ids(
        {
          key: ['gt25|http://unitsofmeasure.org|mg'],
        },
        count: 3,
      ),
      ['o26', 'o27', 'o28'],
    );
    expect(
      await ids(
        {
          key: ['gt25|http://unitsofmeasure.org|mg'],
        },
        count: 3,
        offset: 3,
      ),
      ['o29'],
    );
    // A unit that no row carries matches nothing, so the system|code clauses
    // are part of the WHERE and not dropped.
    expect(
      await ids(
        {
          key: ['gt25|http://unitsofmeasure.org|kg'],
        },
        count: 3,
      ),
      isEmpty,
    );
    // `5.4||mg`: the code OR the human unit. The rows carry code, not unit.
    expect(
      await ids(
        {
          key: ['ge28||mg'],
        },
        count: 5,
      ),
      ['o28', 'o29'],
    );
    // Value alone, no unit: le with a page.
    expect(
      await ids(
        {
          key: ['le2'],
        },
        count: 10,
      ),
      ['o00', 'o01', 'o02'],
    );
  });

  test('a quantity and a token parameter intersect', () async {
    expect(
      await ids(
        {
          'component-value-quantity': ['ge20'],
          'status': ['final'],
        },
        count: 3,
      ),
      ['o20', 'o22', 'o24'],
    );
  });

  test('a number parameter pages in SQL with its prefix honoured', () async {
    await saveRisks();
    expect(
      await riskIds(
        {
          'probability': ['gt0.55'],
        },
        count: 2,
      ),
      ['r6', 'r7'],
    );
    expect(
      await riskIds(
        {
          'probability': ['gt0.55'],
        },
        count: 2,
        offset: 2,
      ),
      ['r8', 'r9'],
    );
    expect(
      await riskIds(
        {
          'probability': ['0.3'],
        },
        count: 5,
      ),
      ['r3'],
    );
    expect(
      await riskIds(
        {
          'probability': ['lt0.2'],
          'subject': ['Patient/p1'],
        },
        count: 5,
      ),
      ['r0', 'r1'],
    );
  });

  test('eq on a number is the implicit range, not equality', () async {
    // R4B 3.1.1.4.6: `0.3` is [0.25, 0.35). Stored 0.31 and 0.34 are in it,
    // 0.35 is not, and `0.30` narrows to [0.295, 0.305).
    for (final (id, value) in [
      ('n31', 0.31),
      ('n34', 0.34),
      ('n35', 0.35),
      ('n25', 0.25),
      ('n24', 0.249),
      ('n30', 0.3),
    ]) {
      await dao.saveResource(
        RiskAssessment.fromJson({
          'resourceType': 'RiskAssessment',
          'id': id,
          'status': 'final',
          'subject': {'reference': 'Patient/p1'},
          'prediction': [
            {'probabilityDecimal': value},
          ],
        }),
      );
    }
    Future<List<String>> both(String value) async {
      final paged = await riskIds(
        {
          'probability': [value],
        },
        count: 50,
      );
      final general = await riskIds({
        'probability': [value],
      });
      expect(general..sort(), paged, reason: 'general path agrees for $value');
      return paged;
    }

    expect(await both('0.3'), ['n25', 'n30', 'n31', 'n34']);
    expect(await both('0.30'), ['n30']);
    expect(await both('ne0.3'), ['n24', 'n35']);
    expect(await both('sa0.3'), ['n35']);
    expect(await both('eb0.3'), ['n24']);
    // gt ignores the implicit precision: exactly above 0.3.
    expect(await both('gt0.3'), ['n31', 'n34', 'n35']);
    // ap: [0.25, 0.35) widened by 10% of 0.3 each side, [0.22, 0.38).
    expect(await both('ap0.3'), ['n24', 'n25', 'n30', 'n31', 'n34', 'n35']);
  });

  test('eq on a quantity is the implicit range too', () async {
    // 5.4 is [5.35, 5.45): the spec's own example, "5.4(+/-0.05) mg".
    // 5.35 is the lower bound itself, and the bound `5.4 - 0.05` computed in
    // floating point is above it; the range is built as decimals instead.
    for (final (id, value) in [
      ('q535', 5.35),
      ('q536', 5.36),
      ('q544', 5.44),
      ('q545', 5.45),
    ]) {
      await dao.saveResource(
        Observation.fromJson({
          'resourceType': 'Observation',
          'id': id,
          'status': 'final',
          'code': {
            'coding': [
              {'system': 'http://example.org', 'code': 'Z'},
            ],
          },
          'valueQuantity': {
            'value': value,
            'system': 'http://unitsofmeasure.org',
            'code': 'mg',
          },
        }),
      );
    }
    expect(
      await ids(
        {
          'value-quantity': ['5.4|http://unitsofmeasure.org|mg'],
        },
        count: 10,
      ),
      ['q535', 'q536', 'q544'],
    );
    expect(
      await ids(
        {
          'value-quantity': ['5.4|http://unitsofmeasure.org|mg'],
        },
      ),
      ['q535', 'q536', 'q544'],
    );
  });

  test('a number value that is not a number falls back and finds nothing',
      () async {
    await saveRisks();
    expect(
      await riskIds(
        {
          'probability': ['high'],
        },
        count: 5,
      ),
      isEmpty,
    );
  });

  test('a uri parameter pages in SQL, exact and case-sensitive', () async {
    for (var i = 0; i < 6; i++) {
      await dao.saveResource(
        ValueSet.fromJson({
          'resourceType': 'ValueSet',
          'id': 'vs$i',
          'status': 'active',
          'url': 'http://example.org/vs/${i.isEven ? 'even' : 'odd'}',
        }),
      );
    }
    Future<List<String>> vsIds(String url, {int? offset}) async =>
        (await dao.search(
          resourceType: R4ResourceType.ValueSet,
          searchParameters: {
            'url': [url],
          },
          count: 2,
          offset: offset,
        ))
            .map((r) => r.id!.valueString!)
            .toList();
    expect(await vsIds('http://example.org/vs/even'), ['vs0', 'vs2']);
    expect(await vsIds('http://example.org/vs/even', offset: 2), ['vs4']);
    expect(await vsIds('http://example.org/vs/EVEN'), isEmpty);
    expect(await vsIds('http://example.org/vs/ev'), isEmpty);
  });

  test('a chained reference falls back to the general path', () async {
    // subject.name would need the Patient; none is stored, so it finds
    // nothing, but it must not throw and must not be answered by the SQL
    // path as though the chain were a plain value.
    expect(
      await ids(
        {
          'subject.name': ['anything'],
        },
        count: 5,
        general: true,
      ),
      isEmpty,
    );
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

  test('a sort pages in SQL too: the page is the top of the ORDER', () async {
    final sorted = await ids(
      {
        'status': ['final'],
      },
      count: 3,
      sort: ['-_id'],
    );
    expect(sorted, ['o28', 'o26', 'o24']);
    expect(
      await ids(
        {
          'status': ['final'],
        },
        count: 3,
        offset: 3,
        sort: ['-_id'],
      ),
      ['o22', 'o20', 'o18'],
    );
  });
}
