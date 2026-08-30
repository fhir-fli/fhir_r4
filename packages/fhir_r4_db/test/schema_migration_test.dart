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
        v4Sql = v4Sql.replaceFirst(RegExp(r',\s*"exact_value" TEXT NULL'), '');
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

  test('an existing schema-4 database opens, and keeps its rows', () async {
    await createSchemaV4(dbFile);

    // Two rows a version-4 database could legitimately hold.
    final seed = _SeedDb(NativeDatabase(dbFile));
    await seed.customStatement(
      'INSERT INTO string_search_parameters VALUES '
      "('Patient', 'pat-1', 0, 'Patient.name', 'name', 0, 'Faulkenberry')",
    );
    await seed.customStatement(
      'INSERT INTO string_search_parameters VALUES '
      "('Patient', 'pat-1', 0, 'Patient.address.city', 'address-city', 0, "
      "'Gulu')",
    );
    await seed.close();

    // Opening with the current code runs onUpgrade for real.
    final db = FhirDb(NativeDatabase(dbFile));
    final rows = await db.fhirDao.select(db.stringSearchParameters).get();

    expect(
      rows.length,
      equals(2),
      reason: 'the upgrade rebuilds each index table by copying rows into a '
          'new one; losing them here would lose the index for every resource '
          'already stored',
    );
    expect(
      rows.map((r) => r.stringValue).toSet(),
      equals({'Faulkenberry', 'Gulu'}),
    );

    final version = await db.customSelect('PRAGMA user_version').getSingle();
    expect(version.data.values.first, equals(6));

    // The rows come across with a null exact value: schema 6 added that
    // column and the original text is not in this table to backfill from.
    // They answer the default search; they cannot answer :exact until the
    // resource is saved again.
    expect(rows.every((r) => r.exactValue == null), isTrue);

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
