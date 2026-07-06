import 'package:drift/drift.dart';
import 'package:fhir_r4_db/fhir_r4_db.dart';

part 'fhir_db.g.dart';

/// Standalone FHIR database using Drift/SQLite.
///
/// Includes tables for FHIR resources, history, search parameter indexing,
/// sync tracking, canonical resource caching, and general storage.
@DriftDatabase(
  tables: [
    Resources,
    ResourcesHistory,
    StringSearchParameters,
    TokenSearchParameters,
    ReferenceSearchParameters,
    DateSearchParameters,
    NumberSearchParameters,
    QuantitySearchParameters,
    UriSearchParameters,
    CompositeSearchParameters,
    SpecialSearchParameters,
    SyncResources,
    CanonicalResources,
    GeneralStorage,
  ],
  daos: [FhirDao],
)
class FhirDb extends _$FhirDb {
  /// Creates an instance of the database with the given [QueryExecutor].
  ///
  /// The caller is responsible for creating the appropriate executor:
  /// - Native: `NativeDatabase(File(path), setup: ...)`
  /// - Tests: `NativeDatabase.memory()`
  /// - Web: `WasmDatabase` or `WebDatabase`
  FhirDb(super.e);

  @override
  int get schemaVersion => 4;

  @override
  MigrationStrategy get migration => MigrationStrategy(
        onCreate: (m) async {
          await m.createAll();
        },
        onUpgrade: (m, from, to) async {
          if (from < 2) {
            // Make referenceValue nullable for identifier-only references
            await customStatement(
              'CREATE TABLE reference_search_parameters_new ( '
              'resource_type TEXT NOT NULL, '
              'id TEXT NOT NULL, '
              'last_updated INTEGER NOT NULL, '
              'search_path TEXT NOT NULL, '
              "search_name TEXT NOT NULL DEFAULT '', "
              'param_index INTEGER NOT NULL, '
              'reference_value TEXT, '
              'reference_resource_type TEXT, '
              'reference_id_part TEXT, '
              'reference_version TEXT, '
              'reference_base_url TEXT, '
              'identifier_system TEXT, '
              'identifier_value TEXT, '
              'PRIMARY KEY (resource_type, id, search_path, param_index) '
              ')',
            );
            await customStatement(
              'INSERT INTO reference_search_parameters_new '
              'SELECT * FROM reference_search_parameters',
            );
            await customStatement(
              'DROP TABLE reference_search_parameters',
            );
            await customStatement(
              'ALTER TABLE reference_search_parameters_new '
              'RENAME TO reference_search_parameters',
            );
          }
          if (from < 3) {
            // Add versionId column to resources_history and rebuild with new
            // primary key {resourceType, id, versionId} to prevent overwrites
            // when two saves happen within the same wall-clock second.
            await customStatement(
              'CREATE TABLE resources_history_new ( '
              'resource_type TEXT NOT NULL, '
              'id TEXT NOT NULL, '
              'version_id TEXT NOT NULL, '
              'resource TEXT NOT NULL, '
              'last_updated INTEGER NOT NULL, '
              'PRIMARY KEY (resource_type, id, version_id) '
              ')',
            );
            // Migrate existing data — extract versionId from JSON, fall back
            // to lastUpdated cast to TEXT so every row has a unique key.
            await customStatement(
              'INSERT OR IGNORE INTO resources_history_new '
              '(resource_type, id, version_id, resource, last_updated) '
              'SELECT resource_type, id, '
              'COALESCE('
              r"json_extract(resource, '$.meta.versionId'), "
              'CAST(last_updated AS TEXT) '
              '), '
              'resource, last_updated '
              'FROM resources_history',
            );
            await customStatement('DROP TABLE resources_history');
            await customStatement(
              'ALTER TABLE resources_history_new '
              'RENAME TO resources_history',
            );
          }
          if (from < 4) {
            // Convert lastUpdated from seconds to milliseconds in all tables.
            const tables = [
              'resources',
              'resources_history',
              'string_search_parameters',
              'token_search_parameters',
              'reference_search_parameters',
              'date_search_parameters',
              'number_search_parameters',
              'quantity_search_parameters',
              'uri_search_parameters',
              'composite_search_parameters',
              'special_search_parameters',
              'sync_resources',
            ];
            for (final table in tables) {
              await customStatement(
                'UPDATE $table SET last_updated = last_updated * 1000',
              );
            }
          }
        },
      );
}
