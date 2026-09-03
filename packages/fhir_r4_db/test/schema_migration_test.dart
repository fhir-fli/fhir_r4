import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_db/fhir_r4_db.dart' hide Resource;
import 'package:test/test.dart';

/// Tests the schema 4 → 5 upgrade against a real schema-4 database.
///
/// Every other test in this package builds a fresh database, which is created
/// at the current version and never runs `onUpgrade` at all. That leaves the
/// riskiest path in the release untested: an upgrade runs on databases that
/// already hold someone's records, and a failure there means the records do
/// not open.
///
/// Version 5 puts `searchName` into the primary key of the nine index tables.
/// Drift does that with `alterTable(TableMigration(...))`, which creates a new
/// table, copies the rows across and swaps it in — so the thing worth proving
/// is that the rows survive the copy and the new key admits what the old one
/// rejected.
void main() {
  late Directory tempDir;
  late File dbFile;

  setUp(() {
    tempDir = Directory.systemTemp.createTempSync('fhir_r4_db_migration');
    dbFile = File('${tempDir.path}/v4.sqlite');
  });

  tearDown(() {
    tempDir.deleteSync(recursive: true);
  });

  /// Builds a faithful version-4 database.
  ///
  /// Rather than hand-writing DDL for nine tables, this creates the real
  /// current schema and walks the index tables back: same tables, same
  /// columns, `search_name` removed from the primary key, `user_version` set
  /// to 4. Hand-written DDL would only prove the migration works against
  /// whatever I typed.
  Future<void> createSchemaV4(File file) async {
    final db = FhirDb(NativeDatabase(file));
    // Force the schema to be created before reading it back.
    await db.customSelect('SELECT 1').get();

    final tables = await db
        .customSelect(
          "SELECT name, sql FROM sqlite_master WHERE type='table' "
          "AND name LIKE '%search_parameters'",
        )
        .get();
    expect(
      tables.length,
      equals(9),
      reason: 'the migration alters nine index tables; if this count changes '
          'the fixture is no longer the schema being migrated',
    );

    for (final row in tables) {
      final name = row.data['name']! as String;
      final sql = row.data['sql']! as String;
      // Only the primary-key clause spells it `"search_name",` — in the
      // column list it is `"search_name" TEXT ...`.
      var v4Sql = sql.replaceFirst('"search_name", ', '');
      expect(v4Sql, isNot(equals(sql)), reason: 'PK rewrite failed for $name');
      // A real version-4 database has no exact_value: that column arrived
      // with schema 6, when `:exact` needed the value as written rather than
      // the normalized one. Leaving it in would make the fixture a database
      // that never existed.
      if (name == 'string_search_parameters') {
        final before = v4Sql;
        v4Sql = v4Sql.replaceFirst(
          RegExp(r',\s*"exact_value" TEXT NOT NULL DEFAULT \x27\x27'),
          '',
        );
        expect(
          v4Sql,
          isNot(equals(before)),
          reason: 'exact_value not found in the generated schema',
        );
      }
      await db.customStatement('DROP TABLE "$name"');
      await db.customStatement(v4Sql);
    }

    await db.customStatement('PRAGMA user_version = 4');
    await db.close();
  }

  test('an existing schema-4 database opens, and its index is rebuilt',
      () async {
    await createSchemaV4(dbFile);

    // A resource, plus the stale index rows a version-4 database would hold
    // for it. The index is DERIVED from the resource, so the upgrade throws
    // the rows away and re-extracts them: the alternative is rows with no
    // exact value, which would make :exact silently ignore this patient.
    // meta.lastUpdated included because every stored resource has it:
    // saveResource sets it, and updateSearchParameters requires it.
    final patient = Patient(
      id: 'pat-1'.toFhirString,
      meta: FhirMeta(
        versionId: '1'.toFhirId,
        lastUpdated: FhirInstant.fromDateTime(DateTime.utc(2026)),
      ),
      name: [HumanName(family: 'Mu\u00f1oz'.toFhirString)],
    );
    final seed = _SeedDb(NativeDatabase(dbFile));
    await seed.customStatement(
      'INSERT INTO resources VALUES '
      "('Patient', 'pat-1', ?, 0)",
      [patient.toJsonString()],
    );
    await seed.customStatement(
      'INSERT INTO string_search_parameters VALUES '
      "('Patient', 'pat-1', 0, 'Patient.name', 'name', 0, 'stale')",
    );
    await seed.close();

    final db = FhirDb(NativeDatabase(dbFile));
    final rows = await db.fhirDao.select(db.stringSearchParameters).get();

    expect(
      rows.any((r) => r.exactValue == 'Mu\u00f1oz'),
      isTrue,
      reason: 'the exact spelling has to come back, or :exact cannot answer '
          'for anything stored before the upgrade',
    );
    expect(
      rows.any((r) => r.stringValue == 'munoz'),
      isTrue,
      reason: 'and the folded form, since accent folding changed in the same '
          'version and every accented value was stale',
    );
    expect(
      rows.any((r) => r.stringValue == 'stale'),
      isFalse,
      reason: 'the old rows are replaced, not added to',
    );

    final version = await db.customSelect('PRAGMA user_version').getSingle();
    expect(version.data.values.first, equals(7));

    await db.close();
  });

  test('a version-5 database gains the column without a rebuild', () async {
    // The 4 to 5 rebuild recreates each index table from the current
    // definition, so it brings exact_value with it. A database already at 5
    // did not go through that, and needs the column added on its own — and
    // adding it twice is a duplicate-column error, which is why the branch
    // tests `from == 5` rather than `from < 6`.
    await createSchemaV4(dbFile);
    final upgraded = FhirDb(NativeDatabase(dbFile));
    await upgraded.customSelect('SELECT 1').get();
    await upgraded.customStatement('PRAGMA user_version = 5');
    await upgraded.customStatement(
      'ALTER TABLE string_search_parameters DROP COLUMN exact_value',
    );
    await upgraded.close();

    final db = FhirDb(NativeDatabase(dbFile));
    await db.fhirDao.saveResource(
      Patient(
        id: 'pat-3'.toFhirString,
        name: [HumanName(family: 'Mu\u00f1oz'.toFhirString)],
      ),
    );
    final rows = await db.fhirDao.select(db.stringSearchParameters).get();
    expect(
      rows.any((r) => r.exactValue == 'Mu\u00f1oz'),
      isTrue,
      reason: 'the column has to exist and be written after the upgrade',
    );
    await db.close();
  });

  test('the value indexes exist after a fresh create and after an upgrade',
      () async {
    // The search tables' primary keys lead with resource_type and id, which a
    // search PRODUCES rather than filters on. Without an index on each value
    // column, `WHERE token_value = ?` scans the whole resource type. fhirant
    // created these itself from its first schema, so it never showed the
    // problem; any other consumer of this package got no indexes at all.
    Future<Set<String>> indexesIn(FhirDb db) async {
      final rows = await db
          .customSelect(
            "SELECT name FROM sqlite_master WHERE type = 'index' "
            "AND name NOT LIKE 'sqlite_autoindex%'",
          )
          .get();
      return rows.map((r) => r.read<String>('name')).toSet();
    }

    const expected = {
      'idx_string_value',
      'idx_token_value',
      'idx_token_system',
      'idx_ref_type',
      'idx_ref_id',
      'idx_ref_identifier_sys',
      'idx_ref_identifier_val',
      'idx_uri_value',
      'idx_date_value',
      'idx_number_value',
      'idx_quantity_value',
      'idx_special_value',
    };

    final fresh = FhirDb(NativeDatabase.memory());
    await fresh.customSelect('SELECT 1').get();
    expect(await indexesIn(fresh), containsAll(expected));
    await fresh.close();

    await createSchemaV4(dbFile);
    final upgraded = FhirDb(NativeDatabase(dbFile));
    await upgraded.customSelect('SELECT 1').get();
    expect(await indexesIn(upgraded), containsAll(expected));
    await upgraded.close();
  });

  test('the planner has statistics once the database is open', () async {
    // A database that has never been ANALYZEd has no sqlite_stat1, and the
    // planner then guesses. Measured 2026-09-03 on 928,935 resources: it
    // picked the primary key for a DISTINCT-id reference query and turned
    // 0.01s into 10.35s. beforeOpen runs ANALYZE when the statistics are
    // missing, so the table has to exist after any open.
    final db = FhirDb(NativeDatabase(dbFile));
    await db.fhirDao.saveResource(Patient(id: 'p'.toFhirString));
    final stat = await db
        .customSelect(
          "SELECT name FROM sqlite_master WHERE type = 'table' "
          "AND name = 'sqlite_stat1'",
        )
        .get();
    expect(stat, isNotEmpty, reason: 'ANALYZE never ran');
    await db.close();
  });

  test('after upgrading, two parameters can share one path', () async {
    // This is what version 4 could not do, and the reason for the change:
    // Observation.code backs both `code` and `combo-code`, and with
    // searchName outside the key the second insert collided with the first,
    // so only one of them was ever indexed.
    await createSchemaV4(dbFile);

    final db = FhirDb(NativeDatabase(dbFile));
    final dao = db.fhirDao;

    await dao.into(db.stringSearchParameters).insert(
          StringSearchParametersCompanion.insert(
            resourceType: 'Observation',
            id: 'obs-1',
            lastUpdated: 0,
            searchPath: 'Observation.code',
            searchName: const Value('code'),
            paramIndex: 0,
            stringValue: 'weight',
          ),
        );
    await dao.into(db.stringSearchParameters).insert(
          StringSearchParametersCompanion.insert(
            resourceType: 'Observation',
            id: 'obs-1',
            lastUpdated: 0,
            searchPath: 'Observation.code',
            searchName: const Value('combo-code'),
            paramIndex: 0,
            stringValue: 'weight',
          ),
        );

    final rows = await dao.select(db.stringSearchParameters).get();
    expect(
      rows.map((r) => r.searchName).toSet(),
      equals({'code', 'combo-code'}),
      reason: 'both parameters must survive; under the version-4 key the '
          'second silently replaced the first',
    );

    await db.close();
  });

  test('a resource saved after the upgrade indexes and is searchable',
      () async {
    // End to end: the migrated database is not merely readable, it still
    // works.
    await createSchemaV4(dbFile);

    final db = FhirDb(NativeDatabase(dbFile));
    await db.fhirDao.saveResource(
      Patient(
        id: 'pat-2'.toFhirString,
        name: [HumanName(family: 'Okello'.toFhirString)],
      ),
    );

    final found = await db.fhirDao.search(
      resourceType: R4ResourceType.Patient,
      searchParameters: {
        'family': ['Okello'],
      },
    );
    expect(found.length, equals(1));

    await db.close();
  });
}

/// Opens the version-4 file to seed rows without triggering the migration.
///
/// It declares schemaVersion 4, so drift sees nothing to upgrade.
class _SeedDb extends GeneratedDatabase {
  _SeedDb(super.executor);

  @override
  Iterable<TableInfo<Table, dynamic>> get allTables => const [];

  @override
  int get schemaVersion => 4;
}
