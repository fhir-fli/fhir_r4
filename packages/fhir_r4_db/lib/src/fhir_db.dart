import 'package:drift/drift.dart';
import 'package:fhir_r4/fhir_r4.dart' as fhir;
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
  int get schemaVersion => 9;

  @override
  MigrationStrategy get migration => MigrationStrategy(
        onCreate: (m) async {
          await m.createAll();
          await createValueIndexes();
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
          if (from < 5) {
            // searchName joins the primary key of every index table.
            //
            // One FHIR path can back more than one search parameter —
            // Observation.code serves both `code` and `combo-code`, and the
            // polymorphic value parameters (`value-quantity`,
            // `value-concept`) share a path with each other. With searchName
            // outside the key the second row collided with the first on
            // insert, so only one of them could ever be indexed.
            //
            // Rows are preserved. Parameters that could not be indexed before
            // appear for resources saved after this upgrade; existing
            // resources need re-saving to pick them up, the same way a FHIR
            // server reindexes after a SearchParameter is added.
            final indexTables = <TableInfo<Table, dynamic>>[
              stringSearchParameters,
              tokenSearchParameters,
              referenceSearchParameters,
              dateSearchParameters,
              numberSearchParameters,
              quantitySearchParameters,
              uriSearchParameters,
              compositeSearchParameters,
              specialSearchParameters,
            ];
            for (final table in indexTables) {
              await m.alterTable(
                TableMigration(
                  table,
                  // exact_value arrived with schema 6 and is not in a database
                  // older than 5. Without declaring it new, drift copies the
                  // rows with a SELECT naming every CURRENT column, and the
                  // upgrade fails on "no such column: exact_value" — which
                  // means a real version-4 database would not open at all.
                  newColumns: [
                    if (identical(table, stringSearchParameters))
                      stringSearchParameters.exactValue,
                  ],
                ),
              );
            }
          }
          // Exactly 5, not `< 6`. Anything older went through the rebuild
          // above, which recreates each index table from the CURRENT
          // definition and so already has this column; adding it again is a
          // duplicate-column error.
          if (from == 5) {
            // `:exact` needs the value as written, and the only column there
            // was holds it normalized, so casing and accents are gone before
            // a query can ask about them.
            await customStatement(
              'ALTER TABLE string_search_parameters '
              "ADD COLUMN exact_value TEXT NOT NULL DEFAULT ''",
            );
          }
          if (from < 7) {
            // Everything the 0.12.0 → 0.13.0 release changed about the index,
            // in one step, because the index is DERIVED data: every value in
            // it comes from a resource still sitting in `resources`, so there
            // is nothing to preserve and the only correct move is to throw it
            // away and re-extract it. What changed since schema 6:
            //
            //   - string rows carry the value as written (exact_value) and a
            //     new accent folding (schema 6 itself, on a rebuild path that
            //     used to be separate);
            //   - every date row is a range, and Period/Timing values are
            //     indexed at all (Encounter.date had NO rows);
            //   - the Resource.meta parameters are indexed (_tag, _profile,
            //     _security, _source had NO rows);
            //   - CodeableConcept.text is a display, not a code;
            //   - value indexes on every index table.
            //
            // Measured 2026-09-04: rebuilding the date index alone was 126s
            // and the meta rows 124s on 928,935 resources; the whole index is
            // one parse of every resource, see the CHANGELOG for the number.
            await rebuildSearchIndex();
          }
          if (from < 8) {
            // The partial indexes on `id` for contained rows
            // (createValueIndexes). Without them the contained-row half of
            // every save's delete scanned every index table; see
            // _deleteSearchParams. After the schema-7 step: on a database
            // below 7 the columns some of these indexes cover do not exist
            // until the rebuild has run.
            await createValueIndexes();
          }
          if (from < 9) {
            // The string index rows of Address and ContactPoint values moved
            // onto the whole-value convention (param_index a multiple of
            // 100, see StringSearchParameters.paramIndex) that `_sort` now
            // uses to leave the per-word rows of a name out of the order.
            // Rows written before this step sit on the old numbers and a
            // sort would skip them, so the index is re-extracted from the
            // stored resources, as schema 7 did: derived data, nothing to
            // keep. Measured 2026-09-04 (fhirant_db's schema-14 step): 467s
            // for the 5 GB MIMIC load, paged.
            await rebuildSearchIndex();
          }
        },
        beforeOpen: ensurePlannerStatistics,
      );

  /// Gives the query planner statistics that match the data, on every open.
  ///
  /// Measured 2026-09-03 on 928,935 resources: the database had never been
  /// ANALYZEd, so with no `sqlite_stat1` the planner chose the primary key for
  /// `SELECT DISTINCT id ... WHERE reference_id_part = ?`, whose leading
  /// column `resource_type` matched 2.9 million rows, and a 0.01s query took
  /// 10.35s. The first fix ran ANALYZE on create, on upgrade, or when the
  /// statistics table was missing. That was not enough: measured 2026-09-06,
  /// a database created empty and then loaded with the same 928,935 resources
  /// had a `sqlite_stat1` table with rows only for three empty indexes,
  /// because ANALYZE on empty tables writes nothing, and it was never run
  /// again; `status=final AND code` took 58s where the analysed database
  /// answered it in 0.23s. ANALYZE afterwards took 5.9s and fixed every
  /// number.
  ///
  /// So statistics are refreshed the way SQLite documents (lang_analyze.html,
  /// "Automatically Running ANALYZE"): "if the application keeps a single
  /// database connection open for a long time, then it should run "PRAGMA
  /// optimize=0x10002" when the connection is first opened and run "PRAGMA
  /// optimize;" periodically thereafter". `PRAGMA optimize` "will
  /// occasionally do so either for tables that have never before been
  /// analyzed, or for tables that have grown significantly since they were
  /// last analyzed" (pragma.html: "One or more indexes on the table lack
  /// entries in the sqlite_stat1 table" or "The number of rows in the table
  /// has increased or decreased by 10-fold since the last time ANALYZE was
  /// run on the table", SQLite 3.46.0 and later). The 0x10000 bit "causes all
  /// tables to be examined, even tables that have not been queried during the
  /// current connection". [optimizePlannerStatistics] is the periodic call,
  /// also run after every bulk save.
  ///
  /// `PRAGMA analysis_limit=1000` bounds what ANALYZE reads per index: "Values
  /// of N between 100 and 1000 are recommended", and the approximate
  /// statistics "are usually close enough". An upgrade still runs a full
  /// ANALYZE, since a rebuild changes every table at once.
  ///
  /// Public because a subclass that overrides [migration] — fhirant does —
  /// replaces this `beforeOpen` and has to call it from its own.
  Future<void> ensurePlannerStatistics(OpeningDetails details) async {
    await customStatement('PRAGMA analysis_limit=1000');
    if (details.hadUpgrade) {
      await customStatement('ANALYZE');
      return;
    }
    await optimizePlannerStatistics(allTables: true);
  }

  /// Refreshes planner statistics for the tables that need it, and no others.
  ///
  /// `PRAGMA optimize`, which runs ANALYZE only where statistics are missing
  /// or the table has grown or shrunk 10-fold (see [ensurePlannerStatistics]
  /// for the documentation this follows). With [allTables] every table is
  /// examined, not only those the planner has consulted on this connection:
  /// the form for an open, or right after a bulk load on a connection that
  /// has not searched yet. Cheap when nothing needs doing, so a server can
  /// call it on a timer and before it closes.
  Future<void> optimizePlannerStatistics({bool allTables = false}) async {
    await customStatement(
      allTables ? 'PRAGMA optimize=0x10002' : 'PRAGMA optimize',
    );
  }

  /// Drops every search index row and re-extracts all of them from the
  /// stored resources, then recreates the value indexes and statistics.
  ///
  /// The index is derived data, so this is always safe and is the one
  /// migration step for anything below schema 7. Public because a subclass
  /// that overrides [migration] — fhirant does — has to call it from its own
  /// upgrade at the version where it takes this package's schema 7. Also the
  /// right call after a change to the generated extractor.
  ///
  /// Paged through the resources table rather than read whole (5 GB of JSON
  /// on the MIMIC load); inserted in batches. A resource that will not parse
  /// is skipped, so one bad row cannot keep a database shut; an insert that
  /// fails is a bug here and is not swallowed.
  Future<void> rebuildSearchIndex() async {
    final m = createMigrator();
    for (final table in <TableInfo<Table, dynamic>>[
      stringSearchParameters,
      tokenSearchParameters,
      referenceSearchParameters,
      dateSearchParameters,
      numberSearchParameters,
      quantitySearchParameters,
      uriSearchParameters,
      compositeSearchParameters,
      specialSearchParameters,
    ]) {
      await m.deleteTable(table.actualTableName);
      await m.createTable(table);
    }
    const page = 500;
    var offset = 0;
    while (true) {
      final stored = await customSelect(
        'SELECT resource FROM resources ORDER BY resource_type, id '
        'LIMIT $page OFFSET $offset',
      ).get();
      if (stored.isEmpty) {
        break;
      }
      offset += stored.length;
      final lists = SearchParameterLists();
      for (final row in stored) {
        fhir.Resource resource;
        try {
          resource = fhir.Resource.fromJsonString(
            row.data['resource']! as String,
          );
        } catch (_) {
          continue;
        }
        final extracted = updateSearchParameters(resource);
        lists
          ..stringParams.addAll(extracted.stringParams)
          ..tokenParams.addAll(extracted.tokenParams)
          ..referenceParams.addAll(extracted.referenceParams)
          ..dateParams.addAll(extracted.dateParams)
          ..numberParams.addAll(extracted.numberParams)
          ..quantityParams.addAll(extracted.quantityParams)
          ..uriParams.addAll(extracted.uriParams)
          ..compositeParams.addAll(extracted.compositeParams)
          ..specialParams.addAll(extracted.specialParams);
      }
      await batch((b) {
        const mode = InsertMode.insertOrReplace;
        b
          ..insertAll(stringSearchParameters, lists.stringParams, mode: mode)
          ..insertAll(tokenSearchParameters, lists.tokenParams, mode: mode)
          ..insertAll(
            referenceSearchParameters,
            lists.referenceParams,
            mode: mode,
          )
          ..insertAll(dateSearchParameters, lists.dateParams, mode: mode)
          ..insertAll(numberSearchParameters, lists.numberParams, mode: mode)
          ..insertAll(
            quantitySearchParameters,
            lists.quantityParams,
            mode: mode,
          )
          ..insertAll(uriSearchParameters, lists.uriParams, mode: mode)
          ..insertAll(
            compositeSearchParameters,
            lists.compositeParams,
            mode: mode,
          )
          ..insertAll(
            specialSearchParameters,
            lists.specialParams,
            mode: mode,
          );
      });
    }
    await createValueIndexes();
    await customStatement('ANALYZE');
  }

  /// Indexes on the VALUE columns of the search tables.
  ///
  /// Each search table's primary key is `(resource_type, id, search_path,
  /// search_name, param_index)`, whose leading columns are what a search
  /// PRODUCES, not what it filters on. Without these, `WHERE token_value = ?`
  /// has no index to use and every search scans its whole resource type.
  ///
  /// fhirant has created exactly these since its first schema
  /// (`fhirant_db.dart`, `_createIndexes`), which is why fhirant never showed
  /// the problem. Any other consumer of this package got no indexes at all.
  /// They belong here, with the tables. `IF NOT EXISTS` keeps the two in step
  /// where both run. Public for the same reason as [ensurePlannerStatistics]:
  /// a subclass with its own [migration] must call it from there.
  Future<void> createValueIndexes() async {
    const statements = [
      ('idx_string_value', 'string_search_parameters', 'string_value'),
      ('idx_token_value', 'token_search_parameters', 'token_value'),
      ('idx_token_system', 'token_search_parameters', 'token_system'),
      (
        'idx_ref_type',
        'reference_search_parameters',
        'reference_resource_type'
      ),
      ('idx_ref_id', 'reference_search_parameters', 'reference_id_part'),
      (
        'idx_ref_identifier_sys',
        'reference_search_parameters',
        'identifier_system'
      ),
      (
        'idx_ref_identifier_val',
        'reference_search_parameters',
        'identifier_value'
      ),
      ('idx_uri_value', 'uri_search_parameters', 'uri_value'),
      ('idx_date_value', 'date_search_parameters', 'date_value'),
      ('idx_date_value_end', 'date_search_parameters', 'date_value_end'),
      ('idx_number_low', 'number_search_parameters', 'number_low'),
      ('idx_number_high', 'number_search_parameters', 'number_high'),
      ('idx_quantity_low', 'quantity_search_parameters', 'quantity_low'),
      ('idx_quantity_high', 'quantity_search_parameters', 'quantity_high'),
      ('idx_special_value', 'special_search_parameters', 'special_value'),
    ];
    for (final (name, table, column) in statements) {
      await customStatement(
        'CREATE INDEX IF NOT EXISTS $name ON $table($column)',
      );
    }
    // Contained resources' rows are filed under `#Type` with an id of
    // `<container type>/<container id>#<contained id>` (search §3.1.1.5.5,
    // contained_index.dart). Deleting them when the container is re-saved is
    // a range on id among the `#`-typed rows, and the primary key leads with
    // resource_type, so it cannot serve that; these partial indexes do. On a
    // database with no contained resources they are empty and cost nothing.
    // The WHERE here is the WHERE the delete uses, which is what lets SQLite
    // apply a partial index.
    for (final table in <String>[
      'string_search_parameters',
      'token_search_parameters',
      'reference_search_parameters',
      'date_search_parameters',
      'number_search_parameters',
      'quantity_search_parameters',
      'uri_search_parameters',
      'composite_search_parameters',
      'special_search_parameters',
    ]) {
      await customStatement(
        'CREATE INDEX IF NOT EXISTS idx_${table}_contained '
        "ON $table(id) WHERE resource_type LIKE '#%'",
      );
    }
  }
}
