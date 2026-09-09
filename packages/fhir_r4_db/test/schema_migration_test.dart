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
  /// columns plus the `search_path` column schema 10 dropped, the version-4
  /// key `(resource_type, id, search_path, param_index)` (schema 10 has no
  /// declared key), `user_version` set to 4. Hand-written DDL would only
  /// prove the migration works against whatever I typed.
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
      var v4Sql = sql.replaceFirst(
        '"search_name" TEXT',
        '"search_path" TEXT NOT NULL, "search_name" TEXT',
      );
      expect(v4Sql, isNot(equals(sql)), reason: 'no search_name in $name');
      expect(v4Sql, endsWith(')'), reason: name);
      v4Sql = '${v4Sql.substring(0, v4Sql.length - 1)}, PRIMARY KEY '
          '("resource_type", "id", "search_path", "param_index"))';
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
    expect(version.data.values.first, equals(db.schemaVersion));

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
    // The covering index on exact_value has to go before the column can.
    await upgraded.customStatement(
      'DROP INDEX IF EXISTS idx_string_search_parameters_exact_cover',
    );
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

  test('a version-6 database (published 0.12.0) has its whole index rebuilt',
      () async {
    // Schema 7 is one step for everything 0.13.0 changed about the index:
    // date rows as ranges with Period values indexed at all, the
    // Resource.meta parameters indexed at all, CodeableConcept.text as a
    // display rather than a code, value indexes. Save three resources, walk
    // the database back to the version-6 shape, stamp it, reopen.
    final db6 = FhirDb(NativeDatabase(dbFile));
    await db6.fhirDao.saveResource(
      Encounter.fromJson({
        'resourceType': 'Encounter',
        'id': 'enc',
        'status': 'finished',
        'class': {'code': 'IMP'},
        'period': {'start': '2013-01-14', 'end': '2013-01-16'},
      }),
    );
    await db6.fhirDao.saveResource(
      Patient.fromJson({
        'resourceType': 'Patient',
        'id': 'tagged',
        'meta': {
          'tag': [
            {'system': 'http://example.org/tags', 'code': 'urgent'},
          ],
          'profile': ['http://example.org/StructureDefinition/p'],
          'source': 'http://example.org/src',
        },
      }),
    );
    await db6.fhirDao.saveResource(
      Observation.fromJson({
        'resourceType': 'Observation',
        'id': 'obs',
        'status': 'final',
        'code': {'text': 'Heart Rate'},
        'effectiveDateTime': '2013-01-14',
      }),
    );
    // Version 6: no Period rows, no date_value_end, no meta rows, the text
    // written as a token value, no value indexes.
    await db6.customStatement(
      "DELETE FROM date_search_parameters WHERE resource_type = 'Encounter'",
    );
    await db6.customStatement(
      'DROP INDEX IF EXISTS idx_date_search_parameters_high_cover',
    );
    await db6.customStatement(
      'ALTER TABLE date_search_parameters DROP COLUMN date_value_end',
    );
    await db6.customStatement(
      "DELETE FROM token_search_parameters WHERE search_name = '_tag'",
    );
    await db6.customStatement(
      'DELETE FROM uri_search_parameters WHERE search_name IN '
      "('_profile', '_source')",
    );
    await db6.customStatement(
      "DELETE FROM reference_search_parameters WHERE search_name = '_profile'",
    );
    await db6.customStatement(
      "UPDATE token_search_parameters SET token_value = 'Heart Rate', "
      "token_display = NULL WHERE id = 'obs' AND search_name = 'code'",
    );
    await db6.customStatement('PRAGMA user_version = 6');
    await db6.close();

    final db = FhirDb(NativeDatabase(dbFile));
    Future<List<String>> find(
      R4ResourceType type,
      String key,
      String value,
    ) async =>
        (await db.fhirDao.search(
          resourceType: type,
          searchParameters: {
            key: [value],
          },
          count: 5,
        ))
            .map((r) => r.id!.valueString!)
            .toList();
    final dates = await db.fhirDao.select(db.dateSearchParameters).get();
    final enc = dates.where((r) => r.id == 'enc' && r.searchName == 'date');
    expect(enc.single.dateValue, DateTime(2013, 1, 14));
    expect(enc.single.dateValueEnd, DateTime(2013, 1, 17));
    expect(await find(R4ResourceType.Encounter, 'date', '2013-01'), ['enc']);
    expect(await find(R4ResourceType.Patient, '_tag', 'urgent'), ['tagged']);
    expect(
      await find(
        R4ResourceType.Patient,
        '_profile',
        'http://example.org/StructureDefinition/p',
      ),
      ['tagged'],
    );
    expect(
      await find(R4ResourceType.Patient, '_source', 'http://example.org/src'),
      ['tagged'],
    );
    expect(
      await find(R4ResourceType.Observation, 'code:text', 'heart'),
      ['obs'],
    );
    expect(
      await find(R4ResourceType.Observation, 'code', 'Heart Rate'),
      isEmpty,
    );
    final version = await db.customSelect('PRAGMA user_version').getSingle();
    expect(version.data.values.first, equals(db.schemaVersion));
    await db.close();
  });

  test('the value indexes exist after a fresh create and after an upgrade',
      () async {
    // Schema 10: a covering composite per value column, an owner index and
    // a contained-row partial index per table, and (resource_type,
    // last_updated) on resources and resources_history. fhirant created the
    // earlier single-column set itself from its first schema, so it never
    // showed their absence; any other consumer of this package got none.
    Future<Set<String>> indexesIn(FhirDb db) async {
      final rows = await db
          .customSelect(
            "SELECT name FROM sqlite_master WHERE type = 'index' "
            "AND name NOT LIKE 'sqlite_autoindex%'",
          )
          .get();
      return rows.map((r) => r.read<String>('name')).toSet();
    }

    final expected = {
      'idx_string_search_parameters_value_cover',
      'idx_string_search_parameters_exact_cover',
      'idx_token_search_parameters_value_cover',
      'idx_token_search_parameters_system_cover',
      'idx_reference_search_parameters_target_cover',
      'idx_reference_search_parameters_value_cover',
      'idx_reference_search_parameters_identifier_cover',
      'idx_date_search_parameters_low_cover',
      'idx_date_search_parameters_high_cover',
      'idx_number_search_parameters_low_cover',
      'idx_number_search_parameters_high_cover',
      'idx_quantity_search_parameters_low_cover',
      'idx_quantity_search_parameters_high_cover',
      'idx_uri_search_parameters_value_cover',
      'idx_composite_search_parameters_values_cover',
      'idx_special_search_parameters_value_cover',
      for (final table in FhirDb.searchTableNames) 'idx_${table}_owner',
      for (final table in FhirDb.searchTableNames) 'idx_${table}_contained',
      'idx_resources_type_updated',
      'idx_resources_history_type_updated',
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
  test('a version-7 database gains the contained-row partial indexes',
      () async {
    // Schema 8 adds a partial index on id per index table for the rows of
    // contained resources, so re-saving a container deletes them through an
    // index instead of scanning every table. A 7 has the tables and columns
    // already; the step only creates the indexes, no rebuild.
    final dir = await Directory.systemTemp.createTemp('fhir_db_v7_');
    addTearDown(() => dir.delete(recursive: true));
    final file = File('${dir.path}/db.sqlite');
    final db7 = FhirDb(NativeDatabase(file));
    await db7.fhirDao.saveResource(
      Patient.fromJson({'resourceType': 'Patient', 'id': 'v7'}),
    );
    for (final table in [
      'string_search_parameters',
      'token_search_parameters',
      'date_search_parameters',
    ]) {
      await db7.customStatement('DROP INDEX IF EXISTS idx_${table}_contained');
    }
    await db7.customStatement('PRAGMA user_version = 7');
    await db7.close();

    final db = FhirDb(NativeDatabase(file));
    final indexes = await db
        .customSelect(
          "SELECT name FROM sqlite_master WHERE type = 'index' "
          "AND name LIKE '%_contained'",
        )
        .get();
    expect(indexes.length, 9);
    // The stored resource is untouched and still searchable.
    expect(
      (await db.fhirDao.search(
        resourceType: R4ResourceType.Patient,
        searchParameters: {
          '_id': <String>['v7'],
        },
      ))
          .length,
      1,
    );
    final version = await db.customSelect('PRAGMA user_version').getSingle();
    expect(version.data.values.first, equals(db.schemaVersion));
    await db.close();
  });

  test('a version-8 database has its search index rebuilt', () async {
    // Schema 9 moved Address and ContactPoint string rows onto the
    // whole-value param_index convention that `_sort` relies on; rows on
    // the old numbers would be left out of a sort, so the index is
    // re-extracted. Observable here: the string rows are emptied by hand,
    // the version stamped back to 8, and the reopen brings them back.
    final dir = await Directory.systemTemp.createTemp('fhir_db_v8_');
    addTearDown(() => dir.delete(recursive: true));
    final file = File('${dir.path}/db.sqlite');
    final db8 = FhirDb(NativeDatabase(file));
    await db8.fhirDao.saveResource(
      Patient.fromJson({
        'resourceType': 'Patient',
        'id': 'v8',
        'address': [
          {
            'line': ['Zeta Street', 'Alpha Building'],
            'city': 'Middle',
          },
        ],
      }),
    );
    await db8.customStatement('DELETE FROM string_search_parameters');
    await db8.customStatement('PRAGMA user_version = 8');
    await db8.close();

    final db = FhirDb(NativeDatabase(file));
    final rows = await db
        .customSelect(
          'SELECT param_index FROM string_search_parameters '
          "WHERE search_name = 'address' ORDER BY param_index",
        )
        .get();
    expect(
      rows.map((r) => r.read<int>('param_index')).toList(),
      [0, 100, 200],
      reason: 'three whole values, each on a multiple of 100',
    );
    expect(
      (await db.fhirDao.search(
        resourceType: R4ResourceType.Patient,
        searchParameters: {
          'address': <String>['Alpha'],
        },
      ))
          .length,
      1,
    );
    final version = await db.customSelect('PRAGMA user_version').getSingle();
    expect(version.data.values.first, equals(db.schemaVersion));
    await db.close();
  });
  test('a version-11 database stores its open date bounds as sentinels',
      () async {
    final dir = await Directory.systemTemp.createTemp('fhir_db_v11_');
    addTearDown(() => dir.delete(recursive: true));
    final file = File('${dir.path}/db.sqlite');
    final db11 = FhirDb(NativeDatabase(file));
    await db11.fhirDao.saveResource(
      Patient.fromJson({'resourceType': 'Patient', 'id': 'v11'}),
    );
    await db11.customStatement(
      'INSERT INTO date_search_parameters (resource_type, id, last_updated, '
      'search_name, param_index, date_string, date_value, date_value_end) '
      "VALUES ('Observation', 'open', 0, 'date', 0, '{}', 1358726400, NULL)",
    );
    await db11.customStatement(
      'INSERT INTO composite_search_parameters (resource_type, id, '
      'last_updated, search_name, param_index, c1_type, c1_low, c1_high, '
      "c2_type, c2_low, c2_high) VALUES ('Observation', 'open', 0, "
      "'code-value-date', 0, 'token', NULL, NULL, 'date', NULL, 1358726400)",
    );
    await db11.customStatement('PRAGMA user_version = 11');
    await db11.close();

    final db = FhirDb(NativeDatabase(file));
    final row = await db
        .customSelect(
          'SELECT date_value AS l, date_value_end AS h FROM '
          "date_search_parameters WHERE id = 'open'",
        )
        .getSingle();
    expect(row.read<int>('l'), 1358726400);
    expect(row.read<int>('h'), 253402214400);
    final composite = await db
        .customSelect(
          'SELECT c1_low AS a, c1_high AS b, c2_low AS c, c2_high AS d FROM '
          "composite_search_parameters WHERE id = 'open'",
        )
        .getSingle();
    expect(composite.read<double>('a'), double.negativeInfinity);
    expect(composite.read<double>('b'), double.infinity);
    expect(composite.read<double>('c'), -62135596800);
    expect(composite.read<double>('d'), 1358726400);
    await db.close();
  });

  test('a version-10 database stores its open bounds as infinity', () async {
    // Schema 11: a Range with no low or no high used to leave the bound
    // NULL; reopening converts every NULL bound and the row is then found
    // through a single index range.
    final dir = await Directory.systemTemp.createTemp('fhir_db_v10_');
    addTearDown(() => dir.delete(recursive: true));
    final file = File('${dir.path}/db.sqlite');
    final db10 = FhirDb(NativeDatabase(file));
    await db10.fhirDao.saveResource(
      Patient.fromJson({'resourceType': 'Patient', 'id': 'v10'}),
    );
    await db10.customStatement(
      'INSERT INTO quantity_search_parameters (resource_type, id, '
      'last_updated, search_name, param_index, quantity_value, quantity_low, '
      "quantity_high, quantity_code) VALUES ('ActivityDefinition', 'open', 0, "
      "'context-quantity', 0, NULL, 200, NULL, 'a')",
    );
    await db10.customStatement('PRAGMA user_version = 10');
    await db10.close();

    final db = FhirDb(NativeDatabase(file));
    final row = await db
        .customSelect(
          'SELECT quantity_low AS l, quantity_high AS h FROM '
          "quantity_search_parameters WHERE id = 'open'",
        )
        .getSingle();
    expect(row.read<double>('l'), 200);
    expect(row.read<double>('h'), double.infinity);
    expect(
      await db.customSelect('PRAGMA user_version').getSingle().then(
            (r) => r.read<int>('user_version'),
          ),
      12,
    );
    await db.close();
  });

  test('a version-9 database loses search_path, its key and the old indexes',
      () async {
    // Walk a current database back to the schema-9 shape: search_path on an
    // index table, one of the single-column indexes, the version stamp.
    // Reopening must re-extract the tables without the column and with the
    // covering indexes, and the resource must still be found.
    final dir = await Directory.systemTemp.createTemp('fhir_db_v9_');
    addTearDown(() => dir.delete(recursive: true));
    final file = File('${dir.path}/db.sqlite');
    final db9 = FhirDb(NativeDatabase(file));
    await db9.fhirDao.saveResource(
      Observation.fromJson({
        'resourceType': 'Observation',
        'id': 'v9',
        'status': 'final',
        'code': {
          'coding': [
            {'system': 'http://s', 'code': 'c9'},
          ],
        },
      }),
    );
    await db9.customStatement(
      'ALTER TABLE token_search_parameters '
      "ADD COLUMN search_path TEXT NOT NULL DEFAULT ''",
    );
    await db9.customStatement(
      'CREATE INDEX idx_token_value ON token_search_parameters(token_value)',
    );
    await db9.customStatement('PRAGMA user_version = 9');
    await db9.close();

    final db = FhirDb(NativeDatabase(file));
    final columns = await db
        .customSelect('PRAGMA table_info(token_search_parameters)')
        .get();
    expect(
      columns.map((c) => c.read<String>('name')),
      isNot(contains('search_path')),
    );
    final indexes = (await db
            .customSelect(
              "SELECT name FROM sqlite_master WHERE type = 'index' "
              "AND tbl_name = 'token_search_parameters'",
            )
            .get())
        .map((r) => r.read<String>('name'))
        .toSet();
    expect(indexes, isNot(contains('idx_token_value')));
    expect(
      indexes,
      containsAll([
        'idx_token_search_parameters_value_cover',
        'idx_token_search_parameters_owner',
      ]),
    );
    expect(
      indexes.where((i) => i.startsWith('sqlite_autoindex')),
      isEmpty,
      reason: 'no declared key, so no key index',
    );
    expect(
      (await db.fhirDao.search(
        resourceType: R4ResourceType.Observation,
        searchParameters: {
          'code': <String>['http://s|c9'],
        },
      ))
          .length,
      1,
    );
    final version = await db.customSelect('PRAGMA user_version').getSingle();
    expect(version.data.values.first, equals(db.schemaVersion));
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
