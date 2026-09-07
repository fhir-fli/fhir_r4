import 'package:drift/drift.dart' hide isNull;
import 'package:drift/native.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_db/fhir_r4_db.dart' hide Resource;
import 'package:test/test.dart';

/// The delete that precedes every save's re-index must be served by indexes.
///
/// Measured 2026-09-06 on the same 5,000 MIMIC resources: the previous single
/// WHERE, `(type = ? AND id = ?) OR substr(id, 1, n) = ?`, could use no index
/// for its OR half and scanned every index table on every save — 30.2s
/// against 7.0s on 0.12.0, the rate falling as the tables grew. Split into a
/// primary-key delete and a range on a partial index, with the LIKE written
/// as literal SQL: 7.7s. (With the LIKE bound as a parameter SQLite could not
/// match the partial index's WHERE and it was 19.8s.) A timing assertion
/// would be flaky here; the plan is not. SQLite's EXPLAIN QUERY PLAN says
/// SCAN for a full-table pass and SEARCH ... USING INDEX otherwise.
Future<void> main() async {
  late FhirDb db;
  late FhirDao dao;

  const tables = [
    'string_search_parameters',
    'token_search_parameters',
    'reference_search_parameters',
    'date_search_parameters',
    'number_search_parameters',
    'quantity_search_parameters',
    'uri_search_parameters',
    'composite_search_parameters',
    'special_search_parameters',
  ];

  setUp(() async {
    db = FhirDb(NativeDatabase.memory());
    dao = db.fhirDao;
    await dao.saveResource(
      Patient.fromJson({'resourceType': 'Patient', 'id': 'p1'}),
    );
  });

  tearDown(() => db.close());

  Future<List<String>> plan(String sql, List<Variable<Object>> vars) async {
    final rows =
        await db.customSelect('EXPLAIN QUERY PLAN $sql', variables: vars).get();
    return rows.map((r) => r.read<String>('detail')).toList();
  }

  test("the resource's own rows are deleted through the primary key", () async {
    for (final table in tables) {
      final steps = await plan(
        'DELETE FROM $table WHERE resource_type = ? AND id = ?',
        [Variable.withString('Patient'), Variable.withString('p1')],
      );
      expect(steps.join('\n'), isNot(contains('SCAN')), reason: table);
    }
  });

  test('the contained rows are deleted through the partial index', () async {
    // The statement's WHERE is rendered from the DAO's own expression, so a
    // change that makes Drift bind the LIKE pattern (which SQLite cannot
    // match to the partial index's literal WHERE) fails here.
    for (final table in <TableInfo<Table, dynamic>>[
      db.stringSearchParameters,
      db.tokenSearchParameters,
      db.referenceSearchParameters,
      db.dateSearchParameters,
      db.numberSearchParameters,
      db.quantitySearchParameters,
      db.uriSearchParameters,
      db.compositeSearchParameters,
      db.specialSearchParameters,
    ]) {
      final rowId = table.columnsByName['id']! as GeneratedColumn<String>;
      final where = FhirDao.containedRowsOf(rowId, 'Patient', 'p1');
      final ctx = GenerationContext.fromDb(db);
      where.writeInto(ctx);
      final steps = await plan(
        'DELETE FROM ${table.actualTableName} WHERE ${ctx.sql}',
        [for (final v in ctx.boundVariables) Variable<Object>(v)],
      );
      final joined = steps.join('\n');
      final name = table.actualTableName;
      expect(joined, isNot(contains('SCAN')), reason: '$name: $joined');
      expect(joined, contains('idx_${name}_contained'), reason: name);
    }
  });

  test('re-saving a container without its contained resource removes its rows',
      () async {
    await dao.saveResource(
      MedicationRequest.fromJson({
        'resourceType': 'MedicationRequest',
        'id': 'mr1',
        'status': 'active',
        'intent': 'order',
        'subject': {'reference': 'Patient/p1'},
        'contained': [
          {
            'resourceType': 'Medication',
            'id': 'm1',
            'code': {
              'coding': [
                {'system': 'http://example.org', 'code': 'amox'},
              ],
            },
          },
        ],
        'medicationReference': {'reference': '#m1'},
      }),
    );
    Future<int> containedRows() async {
      final row = await db
          .customSelect(
            'SELECT COUNT(*) AS c FROM token_search_parameters '
            "WHERE resource_type = '#Medication'",
          )
          .getSingle();
      return row.read<int>('c');
    }

    expect(await containedRows(), greaterThan(0));
    // The chain into the contained Medication works while it is there.
    expect(
      (await dao.search(
        resourceType: R4ResourceType.MedicationRequest,
        searchParameters: {
          'medication.code': ['amox'],
        },
      ))
          .length,
      1,
    );
    await dao.saveResource(
      MedicationRequest.fromJson({
        'resourceType': 'MedicationRequest',
        'id': 'mr1',
        'status': 'active',
        'intent': 'order',
        'subject': {'reference': 'Patient/p1'},
        'medicationCodeableConcept': {
          'coding': [
            {'system': 'http://example.org', 'code': 'other'},
          ],
        },
      }),
    );
    expect(await containedRows(), 0);
    expect(
      await dao.search(
        resourceType: R4ResourceType.MedicationRequest,
        searchParameters: {
          'medication.code': ['amox'],
        },
      ),
      isEmpty,
    );
  });

  test('the partial indexes exist on a fresh database', () async {
    final rows = await db
        .customSelect(
          "SELECT name FROM sqlite_master WHERE type = 'index' "
          "AND name LIKE '%_contained'",
        )
        .get();
    expect(rows.map((r) => r.read<String>('name')).length, tables.length);
  });
}
