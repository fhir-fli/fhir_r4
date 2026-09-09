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
  int get schemaVersion => 14;

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
            // Re-extracted below, once, by the schema-10 step.
          }
          if (from < 8) {
            // The partial indexes on `id` for contained rows
            // (createValueIndexes). Without them the contained-row half of
            // every save's delete scanned every index table; see
            // _deleteSearchParams. After the schema-7 step: on a database
            // below 7 the columns some of these indexes cover do not exist
            // until the rebuild has run. Created below, by the schema-10
            // rebuild, on the tables in their current shape.
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
            // for the 5 GB MIMIC load, paged. Re-extracted below, once, by
            // the schema-10 step.
          }
          if (from < 10) {
            // The index tables lose search_path and their five-column key,
            // the single-column value indexes give way to covering
            // composites, and resources gains (resource_type,
            // last_updated): REVIEW-2026-09-06 §4, measured in its §4.5. The
            // tables are dropped and re-extracted in the new shape (derived
            // data); the old indexes on them go with them, and are dropped
            // by name too in case a table was not rebuilt. This one rebuild
            // serves the 7, 9 and 10 steps: a database below 7 is
            // re-extracted once, not three times.
            await dropLegacyValueIndexes();
            await rebuildSearchIndex();
          }
          if (from < 11) {
            await storeOpenBoundsAsInfinity();
          }
          if (from < 12) {
            await storeOpenDateBoundsAsSentinels();
          }
          if (from < 13) {
            await addHistoryDeletedColumn();
          }
          if (from < 14) {
            await moveCurrentVersionsOutOfHistory();
          }
        },
        beforeOpen: ensurePlannerStatistics,
      );

  /// Schema 13: `resources_history.deleted`, the tombstone flag as its own
  /// column, back-filled from the tombstone JSON every delete wrote until
  /// now (`meta.tag` v3-ObservationValue|DELETED, read exactly with json1
  /// rather than by substring). Public for the same reason as
  /// [createValueIndexes]: a subclass with its own [migration] calls it from
  /// there. Guarded, so a database created at this schema and stamped back
  /// (the upgrade tests do that) is not altered twice.
  Future<void> addHistoryDeletedColumn() async {
    final columns =
        await customSelect('PRAGMA table_info(resources_history)').get();
    if (!columns.any((c) => c.read<String>('name') == 'deleted')) {
      await customStatement(
        'ALTER TABLE resources_history ADD COLUMN deleted INTEGER NOT NULL '
        'DEFAULT 0',
      );
    }
    await customStatement(
      'UPDATE resources_history SET deleted = 1 WHERE deleted = 0 '
      "AND resource LIKE '%DELETED%' AND EXISTS ( "
      r"SELECT 1 FROM json_each(resources_history.resource, '$.meta.tag') t "
      r"WHERE json_extract(t.value, '$.code') = 'DELETED' "
      r"AND json_extract(t.value, '$.system') = "
      "'http://terminology.hl7.org/CodeSystem/v3-ObservationValue')",
    );
  }

  /// Schema 14: the current version of a resource is stored once, in
  /// `resources`; `resources_history` holds superseded versions and
  /// tombstones. `resources.version_id` is added and filled from the JSON,
  /// and every history row that duplicates a current version is deleted.
  /// The layout used to hold a full copy of every current version in
  /// history: measured 2026-09-06 on 928,935 resources, 1.07 GB of a
  /// 6.21 GB file (fhirant REVIEW-2026-09-06 §4.5). The freed pages are
  /// reused by SQLite; `VACUUM` shrinks the file and is the caller's to run
  /// outside a transaction. Public and guarded, as [addHistoryDeletedColumn].
  Future<void> moveCurrentVersionsOutOfHistory() async {
    final columns = await customSelect('PRAGMA table_info(resources)').get();
    if (!columns.any((c) => c.read<String>('name') == 'version_id')) {
      await customStatement(
        "ALTER TABLE resources ADD COLUMN version_id TEXT NOT NULL DEFAULT '1'",
      );
    }
    await customStatement(
      'UPDATE resources SET version_id = '
      r"COALESCE(json_extract(resource, '$.meta.versionId'), '1')",
    );
    await customStatement(
      'DELETE FROM resources_history WHERE deleted = 0 AND EXISTS ( '
      'SELECT 1 FROM resources r '
      'WHERE r.resource_type = resources_history.resource_type '
      'AND r.id = resources_history.id '
      'AND r.version_id = resources_history.version_id)',
    );
  }

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
  /// `PRAGMA analysis_limit` bounds what ANALYZE reads per index. Quoted
  /// verbatim from sqlite.org/pragma.html, read whole 2026-09-08: "The
  /// results of analysis are not as good when only part of each index is
  /// examined, but the results are usually good enough. Setting N to 100 or
  /// 1000 allows the ANALYZE command to run quickly, even on enormous
  /// database files." and "If the limit is zero, then the analysis limit is
  /// disabled and the ANALYZE command will examine all rows of each index."
  /// (Two sentences this comment used to attribute to that page are not on
  /// it.) Measured 2026-09-08 on the 929k MIMIC copy, 1000 was not good
  /// enough here: the token table's system index and value index came out
  /// alike (`1001 501 501` for both), so `code=http://loinc.org|8867-4` was
  /// planned through the SYSTEM index (every LOINC-coded row) and its count
  /// took 37 ms; at 10,000 the value index reads as 10 rows per value
  /// against 1,429 per system, the planner takes it, and the count is 7 ms.
  /// ANALYZE of the whole copy: 35 ms at 1,000, 65 ms at 10,000, 8.4 s
  /// unlimited. So the periodic refresh runs at 10,000, and the one-off
  /// refreshes after an upgrade or a rebuild ([analyzeFully]) run unlimited,
  /// since each follows work that took far longer. The upgrade's ANALYZE
  /// used to run under the 1,000 limit too, so it was never the full one
  /// its comment promised.
  ///
  /// Public because a subclass that overrides [migration] — fhirant does —
  /// replaces this `beforeOpen` and has to call it from its own.
  Future<void> ensurePlannerStatistics(OpeningDetails details) async {
    await customStatement('PRAGMA analysis_limit=$analysisLimit');
    if (details.hadUpgrade) {
      await analyzeFully();
      return;
    }
    await optimizePlannerStatistics(allTables: true);
  }

  /// Rows ANALYZE reads per index on the periodic refresh; see
  /// [ensurePlannerStatistics] for the measurement behind the number.
  static const int analysisLimit = 10000;

  /// A complete ANALYZE, every row of every index, leaving the connection's
  /// limit at [analysisLimit] afterwards. For the moments that rewrite whole
  /// tables (an upgrade, a rebuild, a restore): 8.4 s on the 929k MIMIC
  /// copy, against the 1,000 s the rebuild before it takes.
  Future<void> analyzeFully() async {
    await customStatement('PRAGMA analysis_limit=0');
    try {
      await customStatement('ANALYZE');
    } finally {
      await customStatement('PRAGMA analysis_limit=$analysisLimit');
    }
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
  /// Paged through the resources table by keyset rather than read whole
  /// (5 GB of JSON on the MIMIC load); inserted in batches. A resource that
  /// will not parse is skipped, so one bad row cannot keep a database shut;
  /// an insert that fails is a bug here and is not swallowed.
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
    // Keyset over the primary key: each page starts where the last ended,
    // so the walk is linear. `LIMIT/OFFSET` had SQLite skip every earlier
    // row again for each page, a quadratic walk (fhirant REVIEW-2026-09-06
    // §4.6/§6.1; the paging alone measured on the 929k copy in
    // fhirant `rebuild_paging.tsv`).
    const page = 500;
    var lastType = '';
    var lastId = '';
    while (true) {
      final stored = await customSelect(
        'SELECT resource_type, id, resource FROM resources '
        'WHERE (resource_type, id) > (?, ?) '
        'ORDER BY resource_type, id LIMIT $page',
        variables: [
          Variable.withString(lastType),
          Variable.withString(lastId),
        ],
        readsFrom: {resources},
      ).get();
      if (stored.isEmpty) {
        break;
      }
      lastType = stored.last.read<String>('resource_type');
      lastId = stored.last.read<String>('id');
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
        // The same extractor `FhirDao.saveResource` indexes with: the
        // resource's own rows AND the `#Type` rows of what it contains. The
        // rebuild used `updateSearchParameters` alone, so every schema
        // upgrade that rebuilt dropped the contained rows and a chained
        // search into a contained resource answered nothing until the
        // container was re-saved (fhirant REVIEW-2026-09-08 row 34).
        final extracted = extractWithContained(resource);
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
        b
          ..insertAll(stringSearchParameters, lists.stringParams)
          ..insertAll(tokenSearchParameters, lists.tokenParams)
          ..insertAll(referenceSearchParameters, lists.referenceParams)
          ..insertAll(dateSearchParameters, lists.dateParams)
          ..insertAll(numberSearchParameters, lists.numberParams)
          ..insertAll(quantitySearchParameters, lists.quantityParams)
          ..insertAll(uriSearchParameters, lists.uriParams)
          ..insertAll(compositeSearchParameters, lists.compositeParams)
          ..insertAll(specialSearchParameters, lists.specialParams);
      });
    }
    await createValueIndexes();
    await analyzeFully();
  }

  /// The indexes every search table is read and written through.
  ///
  /// Each index table is a rowid table with no declared key. Per table:
  ///
  /// - an OWNER index `(resource_type, id)`, what a re-index deletes by and
  ///   what an `EXISTS … WHERE id = ?` probe seeks on;
  /// - COVERING composites `(resource_type, search_name, <value…>, id)`, one
  ///   per value column a search filters or sorts on. A single-parameter
  ///   search answers from the index alone, a sort can walk it in order,
  ///   and `DISTINCT id` needs no temporary B-tree. Measured 2026-09-06 on
  ///   929k MIMIC resources (REVIEW-2026-09-06 §4.5): a token page 100 ms →
  ///   6 ms, `_lastUpdated` and the type page 6.4 s → 0 ms, the sort walk
  ///   for `status=final&_sort=-date` 12.9 s → 0 ms;
  /// - the partial index on `id` for contained rows (`#`-typed), the range a
  ///   container's re-save deletes by.
  ///
  /// `resources` and `resources_history` each get `(resource_type,
  /// last_updated)`: the type page, `_lastUpdated`, `_since` and export
  /// sorted or filtered every row of the type without it.
  ///
  /// `IF NOT EXISTS` keeps create and upgrade in step. Public for the same
  /// reason as [ensurePlannerStatistics]: a subclass with its own
  /// [migration] must call it from there.
  Future<void> createValueIndexes() async {
    const covers = [
      ('string_search_parameters', 'value', 'string_value'),
      ('string_search_parameters', 'exact', 'exact_value'),
      ('token_search_parameters', 'value', 'token_value'),
      ('token_search_parameters', 'system', 'token_system'),
      (
        'reference_search_parameters',
        'target',
        'reference_resource_type, reference_id_part'
      ),
      ('reference_search_parameters', 'value', 'reference_value'),
      ('reference_search_parameters', 'identifier', 'identifier_value'),
      ('date_search_parameters', 'low', 'date_value'),
      ('date_search_parameters', 'high', 'date_value_end'),
      ('number_search_parameters', 'low', 'number_low'),
      ('number_search_parameters', 'high', 'number_high'),
      ('quantity_search_parameters', 'low', 'quantity_low'),
      ('quantity_search_parameters', 'high', 'quantity_high'),
      ('uri_search_parameters', 'value', 'uri_value'),
      ('composite_search_parameters', 'values', 'c1_value, c2_value'),
      ('special_search_parameters', 'value', 'special_value'),
    ];
    for (final (table, tag, columns) in covers) {
      await customStatement(
        'CREATE INDEX IF NOT EXISTS idx_${table}_${tag}_cover '
        'ON $table(resource_type, search_name, $columns, id)',
      );
    }
    for (final table in searchTableNames) {
      await customStatement(
        'CREATE INDEX IF NOT EXISTS idx_${table}_owner '
        'ON $table(resource_type, id)',
      );
      // Contained resources' rows are filed under `#Type` with an id of
      // `<container type>/<container id>#<contained id>` (search §3.1.1.5.5,
      // contained_index.dart). Deleting them when the container is re-saved
      // is a range on id among the `#`-typed rows; the owner index leads
      // with resource_type and cannot serve that. The WHERE here is the
      // WHERE the delete uses, which is what lets SQLite apply a partial
      // index. Empty, and free, on a database with no contained resources.
      await customStatement(
        'CREATE INDEX IF NOT EXISTS idx_${table}_contained '
        "ON $table(id) WHERE resource_type LIKE '#%'",
      );
    }
    await customStatement(
      'CREATE INDEX IF NOT EXISTS idx_resources_type_updated '
      'ON resources(resource_type, last_updated)',
    );
    await customStatement(
      'CREATE INDEX IF NOT EXISTS idx_resources_history_type_updated '
      'ON resources_history(resource_type, last_updated)',
    );
  }

  /// The nine search index tables, by SQL name.
  static const searchTableNames = [
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

  /// Schema 11: an open bound in the number and quantity index tables (a
  /// Range with no `low` or no `high`) becomes -infinity / +infinity
  /// instead of NULL, so a number or quantity prefix is one range on the
  /// bound's covering index rather than an OR the planner can only scan
  /// (fhirant REVIEW-2026-09-06 §6.1). New rows are written that way; this
  /// converts what is stored. `1e999` is how SQLite spells infinity in SQL.
  Future<void> storeOpenBoundsAsInfinity() async {
    for (final (table, low, high) in const [
      ('number_search_parameters', 'number_low', 'number_high'),
      ('quantity_search_parameters', 'quantity_low', 'quantity_high'),
    ]) {
      await customStatement(
        'UPDATE $table SET $low = -1e999 WHERE $low IS NULL',
      );
      await customStatement(
        'UPDATE $table SET $high = 1e999 WHERE $high IS NULL',
      );
    }
  }

  /// Schema 12: an open bound in the date index table (a Period with no
  /// start or no end) becomes `beforeAnyDate` / `afterAnyDate` instead of
  /// NULL, and the composite table's date slots the same in seconds, its
  /// number and quantity slots ±infinity, so a date prefix is one range on
  /// the bound's covering index (fhirant REVIEW-2026-09-06 §6.1: with
  /// complete statistics `count date=ge2150` went through the owner index,
  /// 1,269 ms against 321 ms). The seconds are the two sentinels'
  /// `millisecondsSinceEpoch ~/ 1000`: 0001-01-01T00:00Z and
  /// 9999-12-31T00:00Z.
  Future<void> storeOpenDateBoundsAsSentinels() async {
    const start = -62135596800;
    const end = 253402214400;
    await customStatement(
      'UPDATE date_search_parameters SET date_value = $start '
      'WHERE date_value IS NULL',
    );
    await customStatement(
      'UPDATE date_search_parameters SET date_value_end = $end '
      'WHERE date_value_end IS NULL',
    );
    for (final n in const [1, 2, 3]) {
      await customStatement(
        'UPDATE composite_search_parameters SET c${n}_low = CASE c${n}_type '
        "WHEN 'date' THEN $start ELSE -1e999 END "
        'WHERE c${n}_low IS NULL AND c${n}_type IS NOT NULL',
      );
      await customStatement(
        'UPDATE composite_search_parameters SET c${n}_high = CASE c${n}_type '
        "WHEN 'date' THEN $end ELSE 1e999 END "
        'WHERE c${n}_high IS NULL AND c${n}_type IS NOT NULL',
      );
    }
  }

  /// Drops the single-column value indexes of schemas 7-9, which the
  /// covering composites of [createValueIndexes] replace. Public for a
  /// subclass's own migration, as [createValueIndexes] is.
  Future<void> dropLegacyValueIndexes() async {
    for (final name in const [
      'idx_string_value',
      'idx_token_value',
      'idx_token_system',
      'idx_ref_type',
      'idx_ref_id',
      'idx_ref_identifier_sys',
      'idx_ref_identifier_val',
      'idx_uri_value',
      'idx_date_value',
      'idx_date_value_end',
      'idx_number_low',
      'idx_number_high',
      'idx_quantity_low',
      'idx_quantity_high',
      'idx_special_value',
    ]) {
      await customStatement('DROP INDEX IF EXISTS $name');
    }
  }
}
