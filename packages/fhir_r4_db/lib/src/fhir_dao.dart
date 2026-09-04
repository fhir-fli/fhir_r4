// ignore_for_file: lines_longer_than_80_chars, avoid_print

import 'package:drift/drift.dart';
import 'package:fhir_r4/fhir_r4.dart' as fhir;
import 'package:fhir_r4_db/fhir_r4_db.dart';
import 'package:meta/meta.dart';

part 'fhir_dao.g.dart';

/// A Drift DAO that provides FHIR CRUD, search, and history operations.
///
/// This DAO uses [DatabaseAccessor<GeneratedDatabase>] so it can be reused
/// in any Drift database that includes the required tables.
@DriftAccessor(
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
)
class FhirDao extends DatabaseAccessor<FhirDb> with _$FhirDaoMixin {
  /// Creates the data-access object for the local encrypted FHIR store,
  /// attached to the given [FhirDb] database.
  FhirDao(super.attachedDatabase);

  /// Set to true to store resources for sync.
  bool storeForSync = false;

  /// Pulls the index rows out of a resource.
  ///
  /// Production always uses the generated [updateSearchParameters]. It is a
  /// field so a test can replace it with one that fails, which is the only way
  /// to exercise what a save does when indexing cannot be completed.
  @visibleForTesting
  SearchParameterLists Function(fhir.Resource resource)
      extractSearchParameters = updateSearchParameters;

  /// Set to true to store versionId as a timestamp instead of an integer.
  bool versionIdAsTime = false;

  // ──────────────────────────────────────────────────────────────────────────
  // CRUD Operations
  // ──────────────────────────────────────────────────────────────────────────

  /// Retrieve a single resource by type and id.
  Future<fhir.Resource?> getResource(
    fhir.R4ResourceType resourceType,
    String id,
  ) async {
    final resourceTypeString = resourceType.toString();
    final query = select(resources)
      ..where(
        (tbl) =>
            tbl.resourceType.equals(resourceTypeString) & tbl.id.equals(id),
      );
    final resourceRow = await query.getSingleOrNull();
    if (resourceRow == null) return null;
    return fhir.Resource.fromJsonString(resourceRow.resource);
  }

  /// Save a single FHIR resource (insert or update).
  Future<fhir.Resource> saveResource(fhir.Resource resource) async {
    final withId = resource.newIdIfNoId();

    // Look up the existing resource's meta so version counting works correctly.
    fhir.FhirMeta? oldMeta;
    if (!versionIdAsTime) {
      final existing = await getResource(
        withId.resourceType,
        withId.id!.valueString!,
      );
      if (existing?.meta != null) {
        // Only use old meta if the versionId is a valid integer;
        // otherwise (e.g. a timestamp from versionIdAsTime mode) start fresh.
        final vid = existing!.meta!.versionId?.toString();
        if (vid != null && int.tryParse(vid) != null) {
          oldMeta = existing.meta;
        }
      }
    }

    final newResource = withId.updateVersion(
      oldMeta: oldMeta,
      versionIdAsTime: versionIdAsTime,
    );

    // The row and its index rows go in together. Separately, a failure part
    // way through left a resource stored that no search could find, and the
    // caller was handed the resource as though it had worked.
    await transaction(() async {
      await into(resources).insertOnConflictUpdate(
        ResourcesCompanion(
          resourceType: Value(resource.resourceType.toString()),
          id: Value(newResource.id!.valueString!),
          resource: Value(newResource.toJsonString()),
          lastUpdated: Value(
            newResource
                .meta!.lastUpdated!.valueDateTime!.millisecondsSinceEpoch,
          ),
        ),
      );

      await into(resourcesHistory).insertOnConflictUpdate(
        ResourcesHistoryCompanion(
          resourceType: Value(resource.resourceType.toString()),
          id: Value(newResource.id!.valueString!),
          versionId: Value(newResource.meta?.versionId?.toString() ?? '1'),
          resource: Value(newResource.toJsonString()),
          lastUpdated: Value(
            newResource
                .meta!.lastUpdated!.valueDateTime!.millisecondsSinceEpoch,
          ),
        ),
      );

      await _updateSearchParameters(newResource);
    });

    if (storeForSync) {
      await _saveToSync(newResource);
    }

    return newResource;
  }

  /// Save multiple FHIR resources in a single batch.
  Future<bool> saveResources(List<fhir.Resource> resourcesList) async {
    try {
      final newResources = <fhir.Resource>[];
      await batch((batch) {
        final resourceCompanions = <ResourcesCompanion>[];
        final historyCompanions = <ResourcesHistoryCompanion>[];

        for (final resource in resourcesList) {
          final newResource = resource
              .newIdIfNoId()
              .updateVersion(versionIdAsTime: versionIdAsTime);
          newResources.add(newResource);
          resourceCompanions.add(
            ResourcesCompanion(
              resourceType: Value(resource.resourceType.toString()),
              id: Value(newResource.id!.valueString!),
              resource: Value(newResource.toJsonString()),
              lastUpdated: Value(
                newResource
                    .meta!.lastUpdated!.valueDateTime!.millisecondsSinceEpoch,
              ),
            ),
          );
          historyCompanions.add(
            ResourcesHistoryCompanion(
              resourceType: Value(resource.resourceType.toString()),
              id: Value(newResource.id!.valueString!),
              versionId: Value(newResource.meta?.versionId?.toString() ?? '1'),
              resource: Value(newResource.toJsonString()),
              lastUpdated: Value(
                newResource
                    .meta!.lastUpdated!.valueDateTime!.millisecondsSinceEpoch,
              ),
            ),
          );
        }

        batch
          ..insertAllOnConflictUpdate(resources, resourceCompanions)
          ..insertAllOnConflictUpdate(resourcesHistory, historyCompanions);
      });

      await _updateSearchParametersBulk(newResources);

      if (storeForSync) {
        for (final r in newResources) {
          await _saveToSync(r);
        }
      }

      return true;
    } catch (e) {
      print('Error in saveResources: $e');
      return false;
    }
  }

  /// Delete a resource by type and id.
  ///
  /// Creates a tombstone entry in the history table (a version with no
  /// resource content, marked as deleted) before removing the resource
  /// from the current table.
  Future<bool> deleteResource(
    fhir.R4ResourceType resourceType,
    String id,
  ) async {
    final resourceTypeString = resourceType.toString();

    // Determine the next version number from the current resource
    final existing = await getResource(resourceType, id);
    if (existing == null) return false;

    final currentVersion = existing.meta?.versionId?.toString();
    final nextVersion =
        currentVersion != null && int.tryParse(currentVersion) != null
            ? (int.parse(currentVersion) + 1).toString()
            : DateTime.now().toUtc().millisecondsSinceEpoch.toString();

    final now = DateTime.now().toUtc();

    // Write a tombstone entry to history — minimal JSON marking the deletion
    await into(resourcesHistory).insertOnConflictUpdate(
      ResourcesHistoryCompanion(
        resourceType: Value(resourceTypeString),
        id: Value(id),
        versionId: Value(nextVersion),
        resource: Value('{"resourceType":"$resourceTypeString","id":"$id",'
            '"meta":{"versionId":"$nextVersion",'
            '"lastUpdated":"${now.toIso8601String()}",'
            '"tag":[{"system":"http://terminology.hl7.org/CodeSystem/v3-ObservationValue",'
            '"code":"DELETED"}]}}'),
        lastUpdated: Value(
          now.millisecondsSinceEpoch,
        ),
      ),
    );

    // Remove from current resources table
    final count = await (delete(resources)
          ..where(
            (tbl) =>
                tbl.resourceType.equals(resourceTypeString) & tbl.id.equals(id),
          ))
        .go();

    // Clean up search parameter indexes
    if (count > 0) {
      await (delete(stringSearchParameters)
            ..where(
              (t) =>
                  t.resourceType.equals(resourceTypeString) & t.id.equals(id),
            ))
          .go();
      await (delete(tokenSearchParameters)
            ..where(
              (t) =>
                  t.resourceType.equals(resourceTypeString) & t.id.equals(id),
            ))
          .go();
      await (delete(referenceSearchParameters)
            ..where(
              (t) =>
                  t.resourceType.equals(resourceTypeString) & t.id.equals(id),
            ))
          .go();
      await (delete(dateSearchParameters)
            ..where(
              (t) =>
                  t.resourceType.equals(resourceTypeString) & t.id.equals(id),
            ))
          .go();
      await (delete(numberSearchParameters)
            ..where(
              (t) =>
                  t.resourceType.equals(resourceTypeString) & t.id.equals(id),
            ))
          .go();
      await (delete(quantitySearchParameters)
            ..where(
              (t) =>
                  t.resourceType.equals(resourceTypeString) & t.id.equals(id),
            ))
          .go();
      await (delete(uriSearchParameters)
            ..where(
              (t) =>
                  t.resourceType.equals(resourceTypeString) & t.id.equals(id),
            ))
          .go();
      await (delete(compositeSearchParameters)
            ..where(
              (t) =>
                  t.resourceType.equals(resourceTypeString) & t.id.equals(id),
            ))
          .go();
      await (delete(specialSearchParameters)
            ..where(
              (t) =>
                  t.resourceType.equals(resourceTypeString) & t.id.equals(id),
            ))
          .go();
    }

    return count > 0;
  }

  /// Retrieve all resources of a given type.
  Future<List<fhir.Resource>> getResourcesByType(
    fhir.R4ResourceType resourceType,
  ) async {
    final resourceTypeString = resourceType.toString();
    final query = select(resources)
      ..where((tbl) => tbl.resourceType.equals(resourceTypeString))
      ..orderBy([(tbl) => OrderingTerm.desc(tbl.lastUpdated)]);
    final rows = await query.get();
    return rows
        .map((row) => fhir.Resource.fromJsonString(row.resource))
        .toList();
  }

  /// Retrieve a paginated list of resources of a given type.
  Future<List<fhir.Resource>> getResourcesWithPagination({
    required fhir.R4ResourceType resourceType,
    required int count,
    required int offset,
  }) async {
    final resourceTypeString = resourceType.toString();
    final query = select(resources)
      ..where((tbl) => tbl.resourceType.equals(resourceTypeString))
      ..orderBy([(tbl) => OrderingTerm.desc(tbl.lastUpdated)])
      ..limit(count, offset: offset);
    final rows = await query.get();
    return rows
        .map((row) => fhir.Resource.fromJsonString(row.resource))
        .toList();
  }

  /// Return a count of resources for a given type.
  Future<int> getResourceCount(fhir.R4ResourceType resourceType) async {
    final resourceTypeString = resourceType.toString();
    final countExp = resources.id.count();
    final query = selectOnly(resources)
      ..addColumns([countExp])
      ..where(resources.resourceType.equals(resourceTypeString));
    final row = await query.getSingle();
    return row.read(countExp) ?? 0;
  }

  /// Retrieve a list of distinct resource types currently stored.
  Future<List<fhir.R4ResourceType>> getResourceTypes() async {
    final results = await customSelect(
      'SELECT DISTINCT resource_type FROM resources;',
      readsFrom: {resources},
    ).get();

    final resourceTypes = <fhir.R4ResourceType>[];
    for (final row in results) {
      final resourceTypeString = row.data['resource_type'] as String;
      final resourceType = fhir.R4ResourceType.fromString(resourceTypeString);
      if (resourceType != null) {
        resourceTypes.add(resourceType);
      }
    }
    return resourceTypes;
  }

  /// Retrieve the history of a specific resource.
  Future<List<fhir.Resource>> getResourceHistory(
    fhir.R4ResourceType resourceType,
    String id,
  ) async {
    final resourceTypeString = resourceType.toString();
    final query = select(resourcesHistory)
      ..where(
        (tbl) =>
            tbl.resourceType.equals(resourceTypeString) & tbl.id.equals(id),
      )
      ..orderBy([
        (tbl) => OrderingTerm.desc(tbl.lastUpdated),
        (tbl) => OrderingTerm.desc(tbl.versionId),
      ]);
    final rows = await query.get();
    return rows
        .map((row) => fhir.Resource.fromJsonString(row.resource))
        .toList();
  }

  /// Check if a resource exists.
  Future<bool> exists(fhir.R4ResourceType resourceType, String id) async {
    final resourceTypeString = resourceType.toString();
    final query = select(resources)
      ..where(
        (tbl) =>
            tbl.resourceType.equals(resourceTypeString) & tbl.id.equals(id),
      );
    final row = await query.getSingleOrNull();
    return row != null;
  }

  // ──────────────────────────────────────────────────────────────────────────
  // Search Operations
  // ──────────────────────────────────────────────────────────────────────────

  /// Whether the last [search] was paged in SQL (true) or resolved its ids
  /// on the general path (false). For tests: a search that gives the right
  /// answer on either path proves nothing about which one ran.
  @visibleForTesting
  bool lastSearchPagedInSql = false;

  /// Search resources using search parameters.
  Future<List<fhir.Resource>> search({
    required fhir.R4ResourceType resourceType,
    Map<String, List<String>>? searchParameters,
    List<HasParameter>? hasParameters,
    int? count,
    int? offset,
    List<String>? sort,
  }) async {
    final resourceTypeString = resourceType.toString();

    final paged = await _pagedIds(
      resourceTypeString,
      searchParameters,
      hasParameters,
      sort,
      count,
      offset,
    );
    lastSearchPagedInSql = paged != null;
    if (paged != null) {
      final results = <fhir.Resource>[];
      for (final id in paged) {
        final resource = await getResource(resourceType, id);
        if (resource != null) {
          results.add(resource);
        }
      }
      return results;
    }

    final matchingIds = await _matchingIds(
      resourceType: resourceType,
      searchParameters: searchParameters,
      hasParameters: hasParameters,
    );

    if (matchingIds.isEmpty) {
      return [];
    }

    // Cut the page out of the ID set BEFORE reading any resource.
    //
    // This used to read every match — one query and one parse each — build the
    // whole list in memory, and then throw away all but the page. Measured on
    // 928,935 MIMIC resources: `Observation?status=final` with count=20 took
    // **190.94 seconds**, because it read roughly 800,000 rows to return 20.
    //
    // `matchingIds` is a Set, so its iteration order is not a defined order to
    // page over: offset 20 was not guaranteed to continue where offset 0 left
    // off. The ids are sorted first, which makes paging stable and repeatable
    // for a caller that walks the pages.
    //
    // A sort on this path still reads every match, because the page cannot
    // be chosen until the resources are ordered. This path is reached only
    // for a search the SQL-paged path refuses (a modifier, a chain, `_has`,
    // a comma, a repeated parameter); a plain sorted search is paged in SQL.
    final ordered = matchingIds.toList()..sort();

    if (sort != null && sort.isNotEmpty) {
      final all = <fhir.Resource>[];
      for (final id in ordered) {
        final resource = await getResource(resourceType, id);
        if (resource != null) {
          all.add(resource);
        }
      }
      await _sortResults(all, sort, resourceTypeString);
      return _page(all, offset, count);
    }

    final page = _page(ordered, offset, count);
    final results = <fhir.Resource>[];
    for (final id in page) {
      final resource = await getResource(resourceType, id);
      if (resource != null) {
        results.add(resource);
      }
    }
    return results;
  }

  /// The requested slice of [items], given an offset and a count.
  static List<T> _page<T>(List<T> items, int? offset, int? count) {
    final start = (offset != null && offset > 0)
        ? (offset > items.length ? items.length : offset)
        : 0;
    var end = items.length;
    if (count != null && count > 0 && end - start > count) {
      end = start + count;
    }
    return items.sublist(start, end);
  }

  /// The page of ids, cut in SQL, for a search made only of parameters this
  /// path knows how to express as a typed WHERE: any number of them, each one
  /// repetition, no modifier, no comma, no `_has`, no `_sort`. Returns null
  /// for anything else, and the general path runs.
  ///
  /// The first parameter is the select; each further one becomes
  /// `id IN (SELECT id FROM <its table> WHERE …)` on it through Drift's
  /// `isInQuery`, so nothing is raw SQL and SQLite intersects the parameters
  /// and stops at the page. `status=final` alone took 46.71s on the published
  /// 0.12.0 and ~5s after the earlier fixes, every remaining second of it
  /// SQLite handing 813,513 ids to Dart so Dart could keep 20; measured after
  /// this, 1.12s, and `status=final AND code=227969` 0.73s.
  ///
  /// Types covered: token, date, string, reference, number, quantity,
  /// uri. Each further type is one condition builder
  /// added to [_conditionFor]; a search using a type not there falls through.
  ///
  /// A `_sort` is paged here too, as a LEFT JOIN per key with GROUP BY and
  /// MIN/MAX; see [_sortKeyFor]. A search with no parameter at all selects
  /// from the resources table.
  Future<List<String>?> _pagedIds(
    String resourceType,
    Map<String, List<String>>? searchParameters,
    List<HasParameter>? hasParameters,
    List<String>? sort,
    int? count,
    int? offset,
  ) async {
    if (count != null && count <= 0) return null;

    final sortKeys = <_SortKey>[];
    for (final (i, rule) in (sort ?? const <String>[]).indexed) {
      final key = _sortKeyFor(resourceType, rule, 's$i');
      if (key == null) return null;
      sortKeys.add(key);
    }

    final parts = <_IndexCondition>[];
    var aliases = 0;
    String nextAlias() => 'p${++aliases}';

    for (final entry in (searchParameters ?? const {}).entries) {
      final key = SearchQueryKey.parse(entry.key);

      // R4B 3.1.1.4.17: a repeated parameter is an AND, a comma inside one
      // is an OR. Each repetition is one condition on its own (aliased)
      // table; the comma-separated values inside it are ORed on that same
      // table. The split honours FHIR's backslash escaping, so `a\,b` is
      // one value.
      for (final repetition in entry.value) {
        final orValues = splitEscaped(repetition, ',')
            .map((v) => v.trim())
            .where((v) => v.isNotEmpty)
            .toList();
        if (orValues.isEmpty) return null;

        // The first condition is the outer select on its own table; every
        // further one is nested on an ALIAS of its table, so two conditions
        // on the same table (status and code are both tokens) do not
        // collide.
        final aliasName = parts.isEmpty ? null : nextAlias();
        _IndexCondition? combined;
        for (final value in orValues) {
          final one = await _conditionForKey(
            resourceType,
            key,
            value,
            aliasName: aliasName,
            nextAlias: nextAlias,
          );
          if (one == null) return null;
          combined = combined == null
              ? one
              : _IndexCondition(
                  combined.table,
                  combined.idColumn,
                  combined.condition | one.condition,
                  negated: combined.negated,
                );
        }
        parts.add(combined!);
      }
    }

    // `_has`, R4B 3.1.1.4.14: the source is what a reference on the target
    // type points at, so the condition sits on the reference table and its
    // "id" is the referenced id. Nested as any other part.
    for (final has in hasParameters ?? const <HasParameter>[]) {
      final part = await _hasCondition(
        resourceType,
        has,
        aliasName: nextAlias(),
        nextAlias: nextAlias,
      );
      if (part == null) return null;
      parts.add(part);
    }

    // Which parameter is the outer select, and how the others nest, is
    // decided by SIZE, because SQLite cannot: sqlite_stat1 holds one average
    // per index (idx_token_value: 25 rows per value) and this build has no
    // STAT4, so the planner reads `status=final` as 25 rows when it is
    // 813,513, and walks it through the value index followed by a sort that
    // has to see every row before the LIMIT. Measured 2026-09-04 on the
    // 929k-resource MIMIC load, 20 rows each:
    //
    //   status=final & code=227969   IN, status outer    0.63s
    //                                EXISTS, code outer  0.15s
    //                                EXISTS, status outer 3.89s
    //   date=2137 & status=final     IN, date outer      2.19s
    //                                EXISTS, date outer  0.00s
    //                                EXISTS, status outer 4.52s
    //   subject=Patient/x & code     IN, subject outer   0.06s
    //                                EXISTS, code outer  0.16s
    //
    // `id IN (SELECT …)` has SQLite materialise the whole inner set first,
    // so its cost is the inner's size; a correlated EXISTS probes the inner
    // table's primary key once per outer row, so its cost is the outer's
    // size. Each parameter is therefore probed for its row count, capped
    // so the probe itself stays cheap (0.03–0.17s each at 100,000 on that
    // load, counted inside SQLite). The smallest known set
    // is the outer; a nested set that is known to be small is materialised
    // (IN), one that is not is probed (EXISTS). When every set exceeds the
    // cap nothing is known, and the parameters are taken in the order given
    // with IN, whose cost is at least bounded by the inner sizes.
    //
    // The probe escalates, 2,000 then 100,000, so the common case pays
    // almost nothing: one patient's records against one code is settled
    // by the first stage in a few milliseconds, and only a query whose
    // every parameter matches thousands of rows pays for the second.
    // A negated condition (`:missing=true`, `:not`, `:not-in`) says what a
    // resource must NOT have a row for. It cannot drive the select, so it
    // is set aside and nested as NOT EXISTS on whatever the outer is; when
    // nothing positive remains, the resources table is the outer.
    final negated = parts.where((p) => p.negated).toList();
    parts.removeWhere((p) => p.negated);

    var limit = _probeLimits.first;
    final sized = <(_IndexCondition, int)>[];
    if (parts.isEmpty) {
      // No parameter at all — `Observation?_count=20`, or a bare `_sort`:
      // the outer select is the resources table itself.
      sized.add(
        (
          _IndexCondition(
            resources,
            resources.id,
            resources.resourceType.equals(resourceType),
          ),
          0,
        ),
      );
    } else if (parts.length > 1) {
      for (final probeLimit in _probeLimits) {
        limit = probeLimit;
        sized.clear();
        for (final part in parts) {
          sized.add((part, await _probeSize(part, probeLimit)));
        }
        if (sized.any((s) => s.$2 < probeLimit)) {
          break;
        }
      }
    } else {
      sized.add((parts.single, 0));
    }
    final allBig = sized.every((s) => s.$2 >= limit);
    if (!allBig) {
      sized.sort((a, b) => a.$2.compareTo(b.$2));
    }
    final first = sized.first.$1;
    var where = first.condition;
    for (final (other, size) in sized.skip(1)) {
      if (size < limit) {
        where = where &
            first.idColumn.isInQuery(
              selectOnly(other.table, distinct: true)
                ..addColumns([other.idColumn])
                ..where(other.condition),
            );
      } else {
        where = where &
            existsQuery(
              selectOnly(other.table)
                ..addColumns([const Constant(1)])
                ..where(
                  other.condition & other.idColumn.equalsExp(first.idColumn),
                ),
            );
      }
    }
    for (final other in negated) {
      where = where &
          notExistsQuery(
            selectOnly(other.table)
              ..addColumns([const Constant(1)])
              ..where(
                other.condition & other.idColumn.equalsExp(first.idColumn),
              ),
          );
    }

    if (sortKeys.isEmpty) {
      final statement = selectOnly(first.table, distinct: true)
        ..addColumns([first.idColumn])
        ..where(where)
        ..orderBy([OrderingTerm.asc(first.idColumn)]);
      // No count: every matching id, still in SQL. That is how the general
      // path's job is done for any search this path can express; only a
      // shape it cannot build goes back to the Dart set arithmetic.
      if (count != null) {
        statement.limit(count, offset: offset);
      } else if (offset != null && offset > 0) {
        statement.limit(-1, offset: offset);
      }
      final rows = await statement.get();
      return rows
          .map((r) => r.read(first.idColumn))
          .whereType<String>()
          .toList();
    }

    // §3.1.1.5.1: "there can be multiple values for a given search parameter
    // for a single resource. In this case, the sort is based on the item in
    // the set of multiple parameters that comes earliest in the specified
    // sort order" — so each sort key is a LEFT JOIN to its index table, the
    // rows are grouped by id, and the key is MIN of the value ascending or
    // MAX descending. A resource with no value for the key keeps its place
    // in the result and sorts last (a LEFT JOIN, and NULLS LAST, which is
    // not SQLite's default for ascending). Ties break on id so a page is
    // stable. This used to read EVERY matching resource and sort in Dart.
    final joined = selectOnly(first.table).join([
      for (final key in sortKeys)
        leftOuterJoin(
          key.table,
          key.on(first.idColumn),
          useColumns: false,
        ),
    ])
      ..addColumns([first.idColumn])
      ..where(where)
      ..groupBy([first.idColumn])
      ..orderBy([
        for (final key in sortKeys)
          OrderingTerm(
            expression: key.descending ? key.value.max() : key.value.min(),
            mode: key.descending ? OrderingMode.desc : OrderingMode.asc,
            nulls: NullsOrder.last,
          ),
        OrderingTerm.asc(first.idColumn),
      ]);
    if (count != null) {
      joined.limit(count, offset: offset);
    } else if (offset != null && offset > 0) {
      joined.limit(-1, offset: offset);
    }
    final rows = await joined.get();
    return rows.map((r) => r.read(first.idColumn)).whereType<String>().toList();
  }

  /// One `_sort` rule as a join to the table holding its value, or null when
  /// the rule names nothing this path can sort by (a parameter of a type with
  /// no value column, or an unknown parameter), which sends the search down
  /// the general path.
  ///
  /// `_id` and `_lastUpdated` join the resources table. A string sorts on its
  /// normalized column, which is lower-cased and accent-folded: §3.1.1.5.1,
  /// "sorting SHOULD be performed on a case-insensitive basis. Accents may
  /// either be ignored or sorted as per realm convention."
  _SortKey? _sortKeyFor(String resourceType, String rule, String aliasName) {
    final descending = rule.startsWith('-');
    final name = descending ? rule.substring(1) : rule;
    if (name.isEmpty) return null;

    if (name == '_id' || name == '_lastUpdated') {
      final r = alias(resources, aliasName);
      return _SortKey(
        table: r,
        on: (id) => r.resourceType.equals(resourceType) & r.id.equalsExp(id),
        value: name == '_id' ? r.id : r.lastUpdated,
        descending: descending,
      );
    }

    final declared = searchParameterFor(resourceType, name);
    if (declared == null) return null;

    Expression<bool> path(
      GeneratedColumn<String> type,
      GeneratedColumn<String> searchName,
      GeneratedColumn<String> searchPath,
      GeneratedColumn<String> id,
      GeneratedColumn<String> outerId,
    ) =>
        type.equals(resourceType) &
        id.equalsExp(outerId) &
        (searchName.equals(name) |
            searchPath.like('$resourceType.$name') |
            searchPath.like('$resourceType.%.$name'));

    switch (declared.type) {
      case 'string':
        final s = alias(stringSearchParameters, aliasName);
        return _SortKey(
          table: s,
          on: (id) =>
              path(s.resourceType, s.searchName, s.searchPath, s.id, id),
          value: s.stringValue,
          descending: descending,
        );
      case 'token':
        final s = alias(tokenSearchParameters, aliasName);
        return _SortKey(
          table: s,
          on: (id) =>
              path(s.resourceType, s.searchName, s.searchPath, s.id, id),
          value: s.tokenValue,
          descending: descending,
        );
      case 'date':
        final s = alias(dateSearchParameters, aliasName);
        return _SortKey(
          table: s,
          on: (id) =>
              path(s.resourceType, s.searchName, s.searchPath, s.id, id),
          value: s.dateValue,
          descending: descending,
        );
      case 'number':
        final s = alias(numberSearchParameters, aliasName);
        return _SortKey(
          table: s,
          on: (id) =>
              path(s.resourceType, s.searchName, s.searchPath, s.id, id),
          value: s.numberValue,
          descending: descending,
        );
      case 'quantity':
        final s = alias(quantitySearchParameters, aliasName);
        return _SortKey(
          table: s,
          on: (id) =>
              path(s.resourceType, s.searchName, s.searchPath, s.id, id),
          value: s.quantityValue,
          descending: descending,
        );
      case 'reference':
        final s = alias(referenceSearchParameters, aliasName);
        return _SortKey(
          table: s,
          on: (id) =>
              path(s.resourceType, s.searchName, s.searchPath, s.id, id),
          value: s.referenceValue,
          descending: descending,
        );
      case 'uri':
        final s = alias(uriSearchParameters, aliasName);
        return _SortKey(
          table: s,
          on: (id) =>
              path(s.resourceType, s.searchName, s.searchPath, s.id, id),
          value: s.uriValue,
          descending: descending,
        );
      default:
        return null;
    }
  }

  /// Rows a condition matches, counted inside SQLite and capped at
  /// [_probeLimit]: `SELECT count(*) FROM (SELECT id … LIMIT n)`. Not
  /// DISTINCT, so a parameter indexed twice per resource counts double —
  /// this ranks sets, it does not report them, and the plain count was
  /// measured at a third of the DISTINCT one on the big sets.
  Future<int> _probeSize(_IndexCondition part, int limit) async {
    final limited = Subquery(
      selectOnly(part.table)
        ..addColumns([part.idColumn])
        ..where(part.condition)
        ..limit(limit),
      'probe',
    );
    final count = countAll();
    final row = await (selectOnly(limited)..addColumns([count])).getSingle();
    return row.read(count) ?? 0;
  }

  /// The probe's stages. A set at or above the last one is "big" and its
  /// exact size is not worth finding: the probe would cost as much as the
  /// search (0.17s for 100,000 rows of the date index on the MIMIC load).
  static const _probeLimits = [2000, 100000];

  /// One parsed key's condition: a plain or modified parameter through
  /// [_conditionFor], or a chain through [_chainCondition].
  Future<_IndexCondition?> _conditionForKey(
    String resourceType,
    SearchQueryKey key,
    String value, {
    required String? aliasName,
    required String Function() nextAlias,
  }) async {
    // `_tag`, `_profile`, `_security`, `_source`, `_id`, `_lastUpdated` are
    // published against Resource (R4B 3.1.1.4.1), not against each type.
    final declared = searchParameterFor(resourceType, key.name);
    if (declared == null) return null;
    if (key.chain != null) {
      if (declared.type != 'reference') return null;
      return _chainCondition(
        resourceType,
        key.name,
        key.modifier,
        key.chain!,
        value,
        aliasName: aliasName ?? nextAlias(),
        nextAlias: nextAlias,
      );
    }
    return _conditionFor(
      resourceType,
      key.name,
      value,
      declared,
      modifier: key.modifier,
      aliasName: aliasName,
    );
  }

  /// A chained parameter, R4B 3.1.1.4.13: `subject.name=peter` selects the
  /// resources whose `subject` references a resource whose `name` matches.
  ///
  /// The condition sits on the reference table: the reference row for
  /// [refName], whose target is a resource of some type that satisfies the
  /// rest of the chain, tested with a correlated EXISTS on that type's index
  /// table joined on `(reference_resource_type, reference_id_part)`. With no
  /// type constraint the candidates are every resource type that declares
  /// the chained parameter, ORed; `subject:Patient.name` narrows them to one.
  /// A longer chain (`subject.organization.name`) recurses one hop at a
  /// time. A reference stored with no type (a bare id) cannot be followed
  /// and does not match.
  ///
  /// The general path did this by reading EVERY reference row for the
  /// parameter and running a full search on the target for each one.
  Future<_IndexCondition?> _chainCondition(
    String resourceType,
    String refName,
    String? typeConstraint,
    String chain,
    String value, {
    required String aliasName,
    required String Function() nextAlias,
  }) async {
    final c = alias(referenceSearchParameters, aliasName);
    final path = c.resourceType.equals(resourceType) &
        (c.searchName.equals(refName) |
            c.searchPath.like('$resourceType.$refName') |
            c.searchPath.like('$resourceType.%.$refName'));
    final chainedKey = SearchQueryKey.parse(chain);
    final candidates = typeConstraint != null
        ? [typeConstraint]
        : [
            for (final type in searchParameterTypes.keys)
              if (fhir.R4ResourceType.fromString(type) != null &&
                  searchParameterFor(type, chainedKey.name) != null)
                type,
          ];
    if (candidates.isEmpty) return null;
    Expression<bool>? any;
    for (final target in candidates) {
      if (searchParameterFor(target, chainedKey.name) == null) {
        // `subject:Group.family`: the constrained type has no such
        // parameter, so nothing can match through it.
        any = any ?? const Constant(false);
        continue;
      }
      final inner = await _conditionForKey(
        target,
        chainedKey,
        value,
        aliasName: nextAlias(),
        nextAlias: nextAlias,
      );
      // A candidate this path cannot express sends the whole search down
      // the general path rather than quietly leaving that type out.
      if (inner == null) return null;
      final hop = c.referenceResourceType.equals(target) &
          await _nest(inner, c.referenceIdPart);
      any = any == null ? hop : any | hop;
    }
    return _IndexCondition(c, c.id, path & any!);
  }

  /// Nests [inner] on [correlate]: as `IN (SELECT id …)` when the inner set
  /// is small enough to materialise cheaply (probed), else as a correlated
  /// `EXISTS`, the same rule the top-level parameters use. A negated inner
  /// is the complement. Measured 2026-09-04 on the MIMIC load: the chain
  /// `subject.gender=female&code=…` as EXISTS-only was 2.9s, because every
  /// probe of the reference table re-ran the target's EXISTS.
  Future<Expression<bool>> _nest(
    _IndexCondition inner,
    Expression<String> correlate,
  ) async {
    final size = await _probeSize(inner, _probeLimits.last);
    if (size < _probeLimits.last) {
      final set = selectOnly(inner.table, distinct: true)
        ..addColumns([inner.idColumn])
        ..where(inner.condition);
      final within = correlate.isInQuery(set);
      return inner.negated ? within.not() : within;
    }
    final correlated = selectOnly(inner.table)
      ..addColumns([const Constant(1)])
      ..where(inner.condition & inner.idColumn.equalsExp(correlate));
    return inner.negated ? notExistsQuery(correlated) : existsQuery(correlated);
  }

  /// A `_has` parameter, R4B 3.1.1.4.14: `Patient?_has:Observation:patient:
  /// code=1234` selects the Patients that some Observation with code 1234
  /// points at through its `patient` parameter.
  ///
  /// The condition sits on the reference table of the TARGET type: a row for
  /// [HasParameter.referenceParam] on [HasParameter.targetType] whose target
  /// is this resource type, and whose owning resource satisfies the search
  /// parameter (or the nested `_has`), tested with a correlated EXISTS. Its
  /// id column is the REFERENCED id, which is what makes it combine with the
  /// other conditions on the source. The general path ignored the reference
  /// parameter and accepted any reference from the target type to the source.
  Future<_IndexCondition?> _hasCondition(
    String resourceType,
    HasParameter has, {
    required String aliasName,
    required String Function() nextAlias,
  }) async {
    if (fhir.R4ResourceType.fromString(has.targetType) == null) return null;
    final h = alias(referenceSearchParameters, aliasName);
    final target = has.targetType;
    final refName = has.referenceParam;
    final path = h.resourceType.equals(target) &
        (h.searchName.equals(refName) |
            h.searchPath.like('$target.$refName') |
            h.searchPath.like('$target.%.$refName')) &
        h.referenceResourceType.equals(resourceType);
    final _IndexCondition? inner;
    if (has.nested != null) {
      inner = await _hasCondition(
        target,
        has.nested!,
        aliasName: nextAlias(),
        nextAlias: nextAlias,
      );
    } else {
      inner = await _conditionForKey(
        target,
        SearchQueryKey.parse(has.searchParam),
        has.value,
        aliasName: nextAlias(),
        nextAlias: nextAlias,
      );
    }
    if (inner == null) return null;
    return _IndexCondition(
      h,
      h.referenceIdPart,
      path & await _nest(inner, h.id),
    );
  }

  /// One parameter's typed WHERE on its own index table, or null when this
  /// path has no builder for the parameter's type, the value does not parse
  /// for it, or the modifier is one the general path alone handles.
  ///
  /// Modifiers, R4B §3.1.1.4.4, by type:
  /// - any type: `:missing`. `true` is negated (no row with this path);
  ///   `false` is any row with this path.
  /// - string: `:exact` on the value as written; `:contains` on the
  ///   normalized value.
  /// - token: `:text` on the display; `:not` is the plain match, negated;
  ///   `:in` is an OR over the ValueSet's codes and `:not-in` that, negated
  ///   (`:not-in` with an empty expansion excludes nothing). `:of-type` is
  ///   not built: the index has no identifier type and the general path
  ///   reads resources for it.
  /// - reference: `:identifier` on `Reference.identifier`; a resource type
  ///   as the modifier (`subject:Patient=23`) "has the same effect as
  ///   subject=Patient/23" (§3.1.1.4.12).
  /// - uri: `:below` is prefix; `:above` is not built (it needs the stored
  ///   value as the prefix of the search value, which the general path does
  ///   in Dart).
  Future<_IndexCondition?> _conditionFor(
    String resourceType,
    String name,
    String value,
    SearchParameterDefinition declared, {
    String? modifier,
    String? aliasName,
  }) async {
    Expression<bool> onPath(
      GeneratedColumn<String> type,
      GeneratedColumn<String> searchName,
      GeneratedColumn<String> searchPath,
    ) =>
        type.equals(resourceType) &
        (searchName.equals(name) |
            searchPath.like('$resourceType.$name') |
            searchPath.like('$resourceType.%.$name'));

    // `_id` and `_lastUpdated` are columns of the resources table, not
    // index rows. `_id:missing` and `_lastUpdated:missing` are meaningless
    // (every resource has both) and take the general path.
    if (name == '_id' || name == '_lastUpdated') {
      if (modifier != null) return null;
      final r = aliasName == null ? resources : alias(resources, aliasName);
      final Expression<bool>? condition;
      if (name == '_id') {
        condition = r.id.equals(unescapeValue(value));
      } else {
        final (prefix, rest) = splitComparator(declared, value);
        condition = _lastUpdatedCondition(prefix, rest, on: r);
      }
      if (condition == null) return null;
      return _IndexCondition(
        r,
        r.id,
        r.resourceType.equals(resourceType) & condition,
      );
    }

    switch (declared.type) {
      case 'token':
        final t = aliasName == null
            ? tokenSearchParameters
            : alias(tokenSearchParameters, aliasName);
        final path = onPath(t.resourceType, t.searchName, t.searchPath);
        switch (modifier) {
          case null:
            return _IndexCondition(
              t,
              t.id,
              _tokenCondition(resourceType, name, value, on: t),
            );
          case 'not':
            return _IndexCondition(
              t,
              t.id,
              _tokenCondition(resourceType, name, value, on: t),
              negated: true,
            );
          case 'missing':
            return _IndexCondition(t, t.id, path, negated: value == 'true');
          case 'text':
            return _IndexCondition(
              t,
              t.id,
              path & t.tokenDisplay.like('%${unescapeValue(value)}%'),
            );
          case 'in':
          case 'not-in':
            final codes = await _getCodesFromValueSet(value);
            if (codes.isEmpty) {
              // `:in` an empty expansion matches nothing; `:not-in` excludes
              // nothing. A condition no row satisfies does both when negated
              // accordingly.
              return _IndexCondition(
                t,
                t.id,
                const Constant(false),
                negated: modifier == 'not-in',
              );
            }
            Expression<bool>? any;
            for (final code in codes) {
              final one = _tokenCondition(
                resourceType,
                name,
                code.system != null ? '${code.system}|${code.code}' : code.code,
                on: t,
              );
              any = any == null ? one : any | one;
            }
            return _IndexCondition(
              t,
              t.id,
              any!,
              negated: modifier == 'not-in',
            );
          default:
            return null;
        }
      case 'reference':
        final t = aliasName == null
            ? referenceSearchParameters
            : alias(referenceSearchParameters, aliasName);
        final path = onPath(t.resourceType, t.searchName, t.searchPath);
        switch (modifier) {
          case null:
            return _IndexCondition(
              t,
              t.id,
              _referenceCondition(resourceType, name, value, on: t),
            );
          case 'missing':
            return _IndexCondition(t, t.id, path, negated: value == 'true');
          case 'identifier':
            final parts = splitEscaped(value, '|');
            var where = path &
                t.identifierValue.equals(
                  parts.length > 1 ? parts[1] : unescapeValue(value),
                );
            if (parts.length > 1 && parts[0].isNotEmpty) {
              where = where & t.identifierSystem.equals(parts[0]);
            }
            return _IndexCondition(t, t.id, where);
          default:
            // A resource type: `subject:Patient=23` is `subject=Patient/23`.
            if (fhir.R4ResourceType.fromString(modifier) == null) return null;
            if (value.contains('/')) return null;
            return _IndexCondition(
              t,
              t.id,
              _referenceCondition(
                resourceType,
                name,
                '$modifier/${unescapeValue(value)}',
                on: t,
              ),
            );
        }
      case 'number':
        final t = aliasName == null
            ? numberSearchParameters
            : alias(numberSearchParameters, aliasName);
        if (modifier == 'missing') {
          final path = onPath(t.resourceType, t.searchName, t.searchPath);
          return _IndexCondition(t, t.id, path, negated: value == 'true');
        }
        if (modifier != null) return null;
        final (prefix, rest) = splitComparator(declared, value);
        final condition =
            _numberCondition(resourceType, name, prefix, rest, on: t);
        if (condition == null) return null;
        return _IndexCondition(t, t.id, condition);
      case 'quantity':
        final t = aliasName == null
            ? quantitySearchParameters
            : alias(quantitySearchParameters, aliasName);
        if (modifier == 'missing') {
          final path = onPath(t.resourceType, t.searchName, t.searchPath);
          return _IndexCondition(t, t.id, path, negated: value == 'true');
        }
        if (modifier != null) return null;
        final (prefix, rest) = splitComparator(declared, value);
        final condition =
            _quantityCondition(resourceType, name, prefix, rest, on: t);
        if (condition == null) return null;
        return _IndexCondition(t, t.id, condition);
      case 'uri':
        final t = aliasName == null
            ? uriSearchParameters
            : alias(uriSearchParameters, aliasName);
        final path = onPath(t.resourceType, t.searchName, t.searchPath);
        switch (modifier) {
          case null:
            return _IndexCondition(
              t,
              t.id,
              _uriCondition(resourceType, name, value, on: t),
            );
          case 'missing':
            return _IndexCondition(t, t.id, path, negated: value == 'true');
          case 'below':
            return _IndexCondition(
              t,
              t.id,
              path & t.uriValue.like('${unescapeValue(value)}%'),
            );
          default:
            return null;
        }
      case 'string':
        final t = aliasName == null
            ? stringSearchParameters
            : alias(stringSearchParameters, aliasName);
        final path = onPath(t.resourceType, t.searchName, t.searchPath);
        switch (modifier) {
          case null:
            return _IndexCondition(
              t,
              t.id,
              _stringCondition(resourceType, name, value, on: t),
            );
          case 'missing':
            return _IndexCondition(t, t.id, path, negated: value == 'true');
          case 'exact':
            return _IndexCondition(
              t,
              t.id,
              path & t.exactValue.equals(unescapeValue(value).trim()),
            );
          case 'contains':
            final normalized =
                normalizeSearchString(unescapeValue(value)).trim();
            return _IndexCondition(
              t,
              t.id,
              path & t.stringValue.like('%$normalized%'),
            );
          default:
            return null;
        }
      case 'date':
        final t = aliasName == null
            ? dateSearchParameters
            : alias(dateSearchParameters, aliasName);
        if (modifier == 'missing') {
          final path = onPath(t.resourceType, t.searchName, t.searchPath);
          return _IndexCondition(t, t.id, path, negated: value == 'true');
        }
        if (modifier != null) return null;
        final (prefix, rest) = splitComparator(declared, value);
        final condition =
            _dateCondition(resourceType, name, prefix, rest, on: t);
        if (condition == null) return null;
        return _IndexCondition(t, t.id, condition);
      default:
        return null;
    }
  }

  /// The ids matching a search, without reading a single resource.
  ///
  /// Split out so `searchCount` can answer without hydrating: it used to call
  /// `search` with no count and return `results.length`, which read and parsed
  /// every match. Measured on 928,935 MIMIC resources, `Observation?status=
  /// final`: 184.63s to count 813,513, against 10.54s for the same ids inside
  /// `search`.
  Future<Set<String>> _matchingIds({
    required fhir.R4ResourceType resourceType,
    Map<String, List<String>>? searchParameters,
    List<HasParameter>? hasParameters,
  }) async {
    final resourceTypeString = resourceType.toString();

    // One SQL statement when every part can be expressed as one; the Dart
    // set arithmetic below is only for the shapes that cannot.
    final inSql = await _pagedIds(
      resourceTypeString,
      searchParameters,
      hasParameters,
      null,
      null,
      null,
    );
    if (inSql != null) {
      return inSql.toSet();
    }

    var matchingIds = <String>{};
    var firstParam = true;

    // Process _has parameters first (reverse chaining)
    if (hasParameters != null && hasParameters.isNotEmpty) {
      for (final hasParam in hasParameters) {
        final hasIds =
            await _resolveHasParameter(resourceTypeString, hasParam, 0);
        if (firstParam) {
          matchingIds = hasIds;
          firstParam = false;
        } else {
          matchingIds = matchingIds.intersection(hasIds);
        }
      }
    }

    // Process each search parameter
    if (searchParameters != null && searchParameters.isNotEmpty) {
      for (final entry in searchParameters.entries) {
        final paramName = entry.key;
        final paramValues = entry.value;

        // Handle special parameters
        if (paramName == '_id') {
          // Same two rules: each repetition is ANDed, each comma-separated
          // value inside one is ORed. A resource has one id, so repeating
          // _id with different values correctly yields nothing.
          Set<String>? ids;
          for (final repetition in paramValues) {
            final orValues = splitEscaped(repetition, ',')
                .map((v) => v.trim())
                .where((v) => v.isNotEmpty)
                .toSet();
            ids = ids == null ? orValues : ids.intersection(orValues);
          }
          if (ids == null) {
            continue;
          }
          if (firstParam) {
            matchingIds = ids;
          } else {
            matchingIds = matchingIds.intersection(ids);
          }
          firstParam = false;
          continue;
        }

        if (paramName == '_lastUpdated') {
          final lastUpdatedIds = await _searchLastUpdatedParameter(
            resourceTypeString,
            paramValues,
          );
          if (firstParam) {
            matchingIds = lastUpdatedIds;
          } else {
            matchingIds = matchingIds.intersection(lastUpdatedIds);
          }
          firstParam = false;
          continue;
        }

        // Universal :missing handler
        if (paramValues.length == 1 && paramValues[0].endsWith(':missing')) {
          final missingIds =
              await _searchMissingParameter(resourceTypeString, paramName);
          if (firstParam) {
            matchingIds = missingIds;
          } else {
            matchingIds = matchingIds.intersection(missingIds);
          }
          firstParam = false;
          continue;
        }

        // Determine parameter type and search accordingly
        // R4 3.1.1.4.17 gives the two separators different meanings, and a
        // caller cannot express both through one flat list:
        //
        //   ?given=A&given=B   repeated  -> AND, "records that have BOTH"
        //   ?given=A,B         comma     -> OR,  "records with EITHER"
        //
        // So ONE ELEMENT OF THIS LIST IS ONE REPETITION. Each is resolved on
        // its own and the results intersected; the comma split inside an
        // element produces the OR set. Passing the whole list to one call, as
        // this used to, made every repeat behave as OR.
        Set<String>? paramIds;
        for (final repetition in paramValues) {
          final orValues = splitEscaped(repetition, ',')
              .map((v) => v.trim())
              .where((v) => v.isNotEmpty)
              .toList();
          if (orValues.isEmpty) {
            continue;
          }
          final ids = await _resolveSearchParameter(
            resourceTypeString,
            paramName,
            orValues,
          );
          paramIds = paramIds == null ? ids : paramIds.intersection(ids);
        }
        if (paramIds == null) {
          continue;
        }

        if (firstParam) {
          matchingIds = paramIds;
          firstParam = false;
        } else {
          matchingIds = matchingIds.intersection(paramIds);
        }
      }
    }

    // If no search parameters were processed, get all resource IDs
    if (firstParam) {
      final allRows = await (select(resources)
            ..where((tbl) => tbl.resourceType.equals(resourceTypeString)))
          .get();
      matchingIds = allRows.map((r) => r.id).toSet();
    }
    return matchingIds;
  }

  /// Get count of resources matching search parameters.
  Future<int> searchCount({
    required fhir.R4ResourceType resourceType,
    Map<String, List<String>>? searchParameters,
    List<HasParameter>? hasParameters,
  }) async {
    final hasSearch = searchParameters != null && searchParameters.isNotEmpty;
    final hasHas = hasParameters != null && hasParameters.isNotEmpty;
    if (!hasSearch && !hasHas) {
      return getResourceCount(resourceType);
    }

    final ids = await _matchingIds(
      resourceType: resourceType,
      searchParameters: searchParameters,
      hasParameters: hasParameters,
    );
    return ids.length;
  }

  // ──────────────────────────────────────────────────────────────────────────
  // Sync Operations
  // ──────────────────────────────────────────────────────────────────────────

  Future<void> _saveToSync(fhir.Resource resource) async {
    await into(syncResources).insertOnConflictUpdate(
      SyncResourcesCompanion(
        resourceType: Value(resource.resourceType.toString()),
        id: Value(resource.id!.valueString!),
        resource: Value(resource.toJsonString()),
        lastUpdated: Value(
          resource.meta!.lastUpdated!.valueDateTime!.millisecondsSinceEpoch,
        ),
        versionId: Value(resource.meta!.versionId!.valueString!),
      ),
    );
  }

  /// Get all resources stored for sync.
  Future<List<fhir.Resource>> getSync() async {
    final rows = await select(syncResources).get();
    return rows.map((r) => fhir.Resource.fromJsonString(r.resource)).toList();
  }

  /// Clear all sync resources.
  Future<void> clearSync() async {
    await delete(syncResources).go();
  }

  /// Watch sync resources for changes.
  Stream<List<fhir.Resource>> watchSync() {
    return select(syncResources).watch().map(
          (rows) => rows
              .map((r) => fhir.Resource.fromJsonString(r.resource))
              .toList(),
        );
  }

  // ──────────────────────────────────────────────────────────────────────────
  // Canonical Resource Cache
  // ──────────────────────────────────────────────────────────────────────────

  /// Check if a canonical URL is stored in the cache.
  Future<bool> containsCanonicalKey(String key) async {
    final query = select(canonicalResources)
      ..where((tbl) => tbl.url.equals(key));
    final row = await query.getSingleOrNull();
    return row != null;
  }

  /// List all canonical URLs in the cache.
  Future<List<String>> listCanonicalKeys() async {
    final rows = await select(canonicalResources).get();
    return rows.map((r) => r.url).toList();
  }

  /// Retrieve all canonical resources of a type.
  Future<List<T>> getAllCanonicalByType<T extends fhir.CanonicalResource>(
    fhir.R4ResourceType type,
  ) async {
    final query = select(canonicalResources)
      ..where((tbl) => tbl.resourceType.equals(type.toString()));
    final rows = await query.get();
    return rows
        .map((r) => fhir.Resource.fromJsonString(r.resource))
        .whereType<T>()
        .toList();
  }

  /// Save a canonical resource to the cache.
  Future<void> saveCanonicalResource(fhir.CanonicalResource resource) async {
    await into(canonicalResources).insertOnConflictUpdate(
      CanonicalResourcesCompanion(
        url: Value(resource.url.toString()),
        resourceType: Value(resource.resourceType.toString()),
        resource: Value(resource.toJsonString()),
      ),
    );
  }

  /// Retrieve a canonical resource by URL.
  Future<fhir.CanonicalResource?> getCanonicalResource(String url) async {
    final query = select(canonicalResources)
      ..where((tbl) => tbl.url.equals(url));
    var row = await query.getSingleOrNull();

    if (row == null && !url.contains('http')) {
      final fallbackQuery = select(canonicalResources)
        ..where(
          (tbl) =>
              tbl.url.equals('http://hl7.org/fhir/StructureDefinition/$url'),
        );
      row = await fallbackQuery.getSingleOrNull();
    }

    if (row == null) return null;
    final resource = fhir.Resource.fromJsonString(row.resource);
    return resource is fhir.CanonicalResource ? resource : null;
  }

  // ──────────────────────────────────────────────────────────────────────────
  // General Storage
  // ──────────────────────────────────────────────────────────────────────────

  /// Save an object to general storage. Returns the row id.
  Future<int> saveGeneral({
    required String value,
    int? key,
    String? keyName,
  }) async {
    if (key != null) {
      await into(generalStorage).insertOnConflictUpdate(
        GeneralStorageCompanion(
          id: Value(key),
          key: keyName == null ? const Value.absent() : Value(keyName),
          value: Value(value),
        ),
      );
      return key;
    }
    return into(generalStorage).insert(
      GeneralStorageCompanion(
        key: keyName == null ? const Value.absent() : Value(keyName),
        value: Value(value),
      ),
    );
  }

  /// Read a value from general storage by id.
  Future<String?> readGeneral(int key) async {
    final query = select(generalStorage)..where((tbl) => tbl.id.equals(key));
    final row = await query.getSingleOrNull();
    return row?.value;
  }

  /// Get all values from general storage.
  Future<List<GeneralStorageData>> getAllGeneral() async {
    return select(generalStorage).get();
  }

  /// Delete from general storage.
  Future<void> deleteFromGeneral(int key) async {
    await (delete(generalStorage)..where((tbl) => tbl.id.equals(key))).go();
  }

  /// Clear all general storage.
  Future<void> clearGeneral() async {
    await delete(generalStorage).go();
  }

  // ──────────────────────────────────────────────────────────────────────────
  // Private: Search parameter indexing
  // ──────────────────────────────────────────────────────────────────────────

  /// Rewrites the index rows for one resource.
  ///
  /// A failure here is NOT caught. It used to be: the exception was printed
  /// and `false` returned, and [saveResource] ignored the `false`, so a
  /// resource could be stored with no index rows while the caller was told
  /// the save had succeeded. The record was then invisible to every search,
  /// which is worse than an error the caller can act on.
  Future<void> _updateSearchParameters(fhir.Resource resource) async {
    final searchParams = extractSearchParameters(resource);
    await batch((batch) {
      final resourceType = resource.resourceType.toString();
      final id = resource.id!.valueString!;

      // Delete old search parameters
      _deleteSearchParams(batch, resourceType, id);

      // Insert new search parameters
      _insertSearchParams(batch, searchParams);
    });
  }

  /// Rewrites the index rows for a batch of resources.
  ///
  /// As with [_updateSearchParameters], a failure propagates rather than
  /// leaving unindexed rows behind a successful-looking return.
  Future<void> _updateSearchParametersBulk(
    List<fhir.Resource> resourcesList,
  ) async {
    {
      final searchParameterLists = SearchParameterLists();
      for (final resource in resourcesList) {
        final searchParams = extractSearchParameters(resource);
        searchParameterLists.stringParams.addAll(searchParams.stringParams);
        searchParameterLists.tokenParams.addAll(searchParams.tokenParams);
        searchParameterLists.referenceParams
            .addAll(searchParams.referenceParams);
        searchParameterLists.dateParams.addAll(searchParams.dateParams);
        searchParameterLists.numberParams.addAll(searchParams.numberParams);
        searchParameterLists.quantityParams.addAll(searchParams.quantityParams);
        searchParameterLists.uriParams.addAll(searchParams.uriParams);
        searchParameterLists.compositeParams
            .addAll(searchParams.compositeParams);
        searchParameterLists.specialParams.addAll(searchParams.specialParams);
      }

      await batch((batch) {
        for (final resource in resourcesList) {
          _deleteSearchParams(
            batch,
            resource.resourceType.toString(),
            resource.id!.valueString!,
          );
        }
        _insertSearchParams(batch, searchParameterLists);
      });
    }
  }

  void _deleteSearchParams(Batch batch, String resourceType, String id) {
    batch
      ..deleteWhere(
        stringSearchParameters,
        (tbl) => tbl.resourceType.equals(resourceType) & tbl.id.equals(id),
      )
      ..deleteWhere(
        tokenSearchParameters,
        (tbl) => tbl.resourceType.equals(resourceType) & tbl.id.equals(id),
      )
      ..deleteWhere(
        referenceSearchParameters,
        (tbl) => tbl.resourceType.equals(resourceType) & tbl.id.equals(id),
      )
      ..deleteWhere(
        dateSearchParameters,
        (tbl) => tbl.resourceType.equals(resourceType) & tbl.id.equals(id),
      )
      ..deleteWhere(
        numberSearchParameters,
        (tbl) => tbl.resourceType.equals(resourceType) & tbl.id.equals(id),
      )
      ..deleteWhere(
        quantitySearchParameters,
        (tbl) => tbl.resourceType.equals(resourceType) & tbl.id.equals(id),
      )
      ..deleteWhere(
        uriSearchParameters,
        (tbl) => tbl.resourceType.equals(resourceType) & tbl.id.equals(id),
      )
      ..deleteWhere(
        compositeSearchParameters,
        (tbl) => tbl.resourceType.equals(resourceType) & tbl.id.equals(id),
      )
      ..deleteWhere(
        specialSearchParameters,
        (tbl) => tbl.resourceType.equals(resourceType) & tbl.id.equals(id),
      );
  }

  void _insertSearchParams(Batch batch, SearchParameterLists params) {
    if (params.stringParams.isNotEmpty) {
      batch.insertAll(stringSearchParameters, params.stringParams);
    }
    if (params.tokenParams.isNotEmpty) {
      batch.insertAll(tokenSearchParameters, params.tokenParams);
    }
    if (params.referenceParams.isNotEmpty) {
      batch.insertAll(referenceSearchParameters, params.referenceParams);
    }
    if (params.dateParams.isNotEmpty) {
      batch.insertAll(dateSearchParameters, params.dateParams);
    }
    if (params.numberParams.isNotEmpty) {
      batch.insertAll(numberSearchParameters, params.numberParams);
    }
    if (params.quantityParams.isNotEmpty) {
      batch.insertAll(quantitySearchParameters, params.quantityParams);
    }
    if (params.uriParams.isNotEmpty) {
      batch.insertAll(uriSearchParameters, params.uriParams);
    }
    if (params.compositeParams.isNotEmpty) {
      batch.insertAll(compositeSearchParameters, params.compositeParams);
    }
    if (params.specialParams.isNotEmpty) {
      batch.insertAll(specialSearchParameters, params.specialParams);
    }
  }

  // ──────────────────────────────────────────────────────────────────────────
  // Private: Search parameter type resolution and query helpers
  // ──────────────────────────────────────────────────────────────────────────

  /// The R4 comparator prefixes, for the ordered types: number, date and
  /// quantity. search.html: "a prefix to the parameter value may be used to
  /// control the nature of the matching".
  static const comparatorPrefixes = [
    'eq',
    'ne',
    'gt',
    'lt',
    'ge',
    'le',
    'sa',
    'eb',
    'ap',
  ];

  /// The value with any R4 comparator prefix removed.
  ///
  /// Only strips when what follows still looks like a number or a date, so an
  /// ordinary string beginning with those two letters is left alone — `Apgar`
  /// keeps its `ap`, `Nelson` keeps its `ne`, `Ledger` keeps its `le`.
  static String stripComparatorPrefix(String value) {
    for (final prefix in comparatorPrefixes) {
      if (!value.startsWith(prefix) || value.length == prefix.length) {
        continue;
      }
      final rest = value.substring(prefix.length);
      final looksOrdered = RegExp(r'^-?\d').hasMatch(rest);
      if (looksOrdered) {
        return rest;
      }
    }
    return value;
  }

  /// Determine the parameter type and dispatch to the appropriate search method.
  Future<Set<String>> _resolveSearchParameter(
    String resourceType,
    String paramName,
    List<String> paramValues,
  ) async {
    // R4 search.html gives exactly two forms, and this DAO used to read both
    // off the END of the value (`family=Smith:exact`), which is neither:
    //
    //   [parameter]:[modifier]=[value]   — modifier on the NAME
    //   [parameter]=[prefix][value]      — prefix on the VALUE, ordered types
    //
    // Every modifier and every comparator was therefore unreachable from a
    // conforming client, and any string value containing a colon was truncated
    // at it — `name=Clinic: SOUTH Wing` returned `Clinic: North Wing`.
    final key = SearchQueryKey.parse(paramName);
    final modifier = key.modifier;

    // searchPath is the original HTTP param name (e.g., "monitoring-program-name")
    // The search tables store this in the searchName column alongside the
    // FHIR expression path in searchPath. Queries match on either.
    //
    // A chained key keeps its chain, because the reference branch parses the
    // chain itself.
    final searchPath = key.chain == null ? key.name : paramName;

    // What the parameter IS, from the published definitions. This decides
    // whether `gt` on the front of a value is a comparator or the first two
    // letters of a name. Not having this fact is why the old code guessed from
    // the shape of the value.
    final declared = searchParameterFor(resourceType, key.name);

    // R4 3.1.1.4.4, a SHALL: a modifier the parameter's type does not allow is
    // rejected, not ignored. Ignoring it silently changes what the query means
    // and returns records the client did not ask for.
    //
    // Only checked when the parameter is known. A custom parameter this build
    // has no definition for cannot have its modifier validated, and refusing
    // it on that basis would reject searches a deployment does support.
    if (declared != null && modifier != null) {
      if (!isModifierAllowed(declared.type, modifier)) {
        throw UnsupportedSearchModifier(
          parameter: key.name,
          modifier: modifier,
          type: declared.type,
          allowed: modifiersByType[declared.type] ?? const <String>{},
        );
      }
    }

    // :missing applies to every parameter type, so it is answered before any
    // type detection runs. R4 search.html: "true" finds resources where the
    // parameter is absent, "false" where it is present, so the false case is
    // the complement rather than a second query.
    if (modifier == 'missing') {
      final absent = await _searchMissingParameter(resourceType, searchPath);
      final wantsAbsent = paramValues.any(
        (v) => v.trim().toLowerCase() == 'true',
      );
      if (wantsAbsent) {
        return absent;
      }
      final all = (await (select(resources)
                ..where((tbl) => tbl.resourceType.equals(resourceType)))
              .get())
          .map((r) => r.id)
          .toSet();
      return all.difference(absent);
    }

    var isDateParam = false;
    var isTokenParam = false;
    var isNumberParam = false;
    var isQuantityParam = false;
    var isUriParam = false;
    var isReferenceParam = false;
    var isCompositeParam = false;

    // Check for composite parameter (value contains $)
    for (final val in paramValues) {
      if (val.contains(r'$') && paramName.contains('-')) {
        isCompositeParam = true;
        break;
      }
    }

    // Check for reference chaining (paramName contains '.')
    // Supports type-constrained chaining: subject:Patient.name=Smith
    final isChainedReference = paramName.contains('.');

    // Check if value looks like a reference
    if (!isDateParam &&
        !isNumberParam &&
        !isQuantityParam &&
        !isTokenParam &&
        !isUriParam) {
      for (final val in paramValues) {
        final valWithoutModifier = val.split(':')[0];
        if (RegExp(r'^[A-Z][a-zA-Z]+/[^/]+$').hasMatch(valWithoutModifier)) {
          isReferenceParam = true;
          break;
        }
      }
    }

    // When the parameter is known, its declared type settles everything and
    // nothing is inferred from the values at all.
    if (declared != null && key.chain == null) {
      switch (declared.type) {
        case 'date':
          return _searchDateParameter(
            resourceType,
            searchPath,
            paramValues,
            declared,
          );
        case 'quantity':
          return _searchQuantityParameter(
            resourceType,
            searchPath,
            paramValues,
            declared,
          );
        case 'number':
          return _searchNumberParameter(
            resourceType,
            searchPath,
            paramValues,
            declared,
          );
        case 'uri':
          return _searchUriParameter(
            resourceType,
            searchPath,
            paramValues,
            modifier,
          );
        case 'token':
          return _searchTokenParameter(
            resourceType,
            searchPath,
            paramValues,
            modifier,
          );
        case 'string':
          return _searchStringParameter(
            resourceType,
            searchPath,
            paramValues,
            modifier,
          );
        case 'composite':
          return _searchCompositeParameter(
            resourceType,
            searchPath,
            paramValues,
          );
        case 'reference':
          return _searchReferenceParameter(
            resourceType,
            searchPath,
            paramValues,
            false,
            modifier,
          );
      }
    }

    // Unknown parameter, or a chained one the reference branch handles: fall
    // back to inspecting the values, which is what this did for everything
    // before the definitions were available.
    for (final val in paramValues) {
      final valWithoutModifier = stripComparatorPrefix(val);
      final detectedModifier = valWithoutModifier == val ? null : 'prefix';

      // Check for token or quantity (contains |)
      if (valWithoutModifier.contains('|')) {
        final parts = splitEscaped(valWithoutModifier, '|');
        var foundNumeric = false;
        if (parts.length == 2) {
          try {
            double.parse(parts[0]);
            foundNumeric = true;
          } catch (_) {}
        } else if (parts.length == 3) {
          try {
            double.parse(parts[1]);
            foundNumeric = true;
          } catch (_) {}
        }
        if (foundNumeric) {
          isQuantityParam = true;
        } else {
          isTokenParam = true;
        }
      } else if (val.contains('|') && !valWithoutModifier.contains('|')) {
        isTokenParam = true;
      }

      if (detectedModifier == 'prefix') {
        final datePattern = RegExp(r'^\d{4}(-\d{2})?(-\d{2})?(T.*)?$');
        if (datePattern.hasMatch(valWithoutModifier)) {
          isDateParam = true;
        } else {
          try {
            double.parse(valWithoutModifier);
            if (paramName.toLowerCase().contains('quantity') ||
                paramName.toLowerCase().contains('value')) {
              isQuantityParam = true;
            } else {
              isNumberParam = true;
            }
          } catch (_) {}
        }
      }

      if (!isDateParam && !isNumberParam && !isQuantityParam) {
        final datePattern = RegExp(r'^\d{4}(-\d{2})?(-\d{2})?(T.*)?$');
        if (datePattern.hasMatch(valWithoutModifier)) {
          isDateParam = true;
        }
      }

      if (!isDateParam &&
          !isNumberParam &&
          !isQuantityParam &&
          !isTokenParam &&
          !isUriParam) {
        if (valWithoutModifier.startsWith('http://') ||
            valWithoutModifier.startsWith('https://') ||
            valWithoutModifier.startsWith('urn:') ||
            valWithoutModifier.startsWith('file://')) {
          isUriParam = true;
        }
      }

      if (!isDateParam && !isNumberParam && !isQuantityParam && !isTokenParam) {
        try {
          double.parse(valWithoutModifier);
          if (paramName.toLowerCase().contains('quantity') ||
              paramName.toLowerCase().contains('value')) {
            isQuantityParam = true;
          } else {
            isNumberParam = true;
          }
        } catch (_) {}
      }
    }

    if (isDateParam) {
      return _searchDateParameter(resourceType, searchPath, paramValues, null);
    } else if (isQuantityParam) {
      return _searchQuantityParameter(
        resourceType,
        searchPath,
        paramValues,
        null,
      );
    } else if (isNumberParam) {
      return _searchNumberParameter(
        resourceType,
        searchPath,
        paramValues,
        null,
      );
    } else if (isUriParam) {
      return _searchUriParameter(resourceType, searchPath, paramValues);
    } else if (isTokenParam) {
      return _searchTokenParameter(
        resourceType,
        searchPath,
        paramValues,
        modifier,
      );
    } else if (isCompositeParam) {
      return _searchCompositeParameter(resourceType, searchPath, paramValues);
    } else if (isReferenceParam || isChainedReference) {
      return _searchReferenceParameter(
        resourceType,
        paramName,
        paramValues,
        isChainedReference,
      );
    } else {
      // Default: try string and token search tables
      final stringIds = await _searchStringParameter(
        resourceType,
        searchPath,
        paramValues,
        modifier,
      );
      final tokenIds = await _searchTokenParameter(
        resourceType,
        searchPath,
        paramValues,
        modifier,
      );
      return stringIds.union(tokenIds);
    }
  }

  // ──────────────────────────────────────────────────────────────────────────
  // Private: Individual search parameter type handlers
  // ──────────────────────────────────────────────────────────────────────────

  /// The WHERE for one plain string value — the default match, R4 3.1.1.4.8:
  /// "equals or starts with the supplied parameter value, after both have
  /// been normalized by case and combining characters". `:exact` and
  /// `:contains` are not built here; the SQL-paged path admits no modifier,
  /// so they take the general path.
  Expression<bool> _stringCondition(
    String resourceType,
    String searchPath,
    String value, {
    $StringSearchParametersTable? on,
  }) {
    final t = on ?? stringSearchParameters;
    final normalized = normalizeSearchString(unescapeValue(value)).trim();
    return t.resourceType.equals(resourceType) &
        (t.searchName.equals(searchPath) |
            t.searchPath.like('$resourceType.$searchPath') |
            t.searchPath.like('$resourceType.%.$searchPath')) &
        t.stringValue.like('$normalized%');
  }

  Future<Set<String>> _searchStringParameter(
    String resourceType,
    String searchPath,
    List<String> values,
    String? modifier,
  ) async {
    final matchingIds = <String>{};

    for (final value in values) {
      // The value is DATA. It used to be split on any colon it contained,
      // which truncated `Clinic: North Wing` to `Clinic` and made
      // `name=Clinic: SOUTH Wing` return the North Wing.
      //
      // A string is compared whole, so it also has to lose FHIR's escaping
      // before the comparison: a name written with an escaped comma would
      // otherwise be matched with the backslash still in it.
      final searchValue = unescapeValue(value);

      // Folded the same way the index was, or the query and the stored value
      // normalize differently and an accented name is unfindable.
      final normalizedValue = normalizeSearchString(searchValue).trim();

      final query = select(stringSearchParameters);
      var whereCondition =
          stringSearchParameters.resourceType.equals(resourceType) &
              (stringSearchParameters.searchName.equals(searchPath) |
                  stringSearchParameters.searchPath
                      .like('$resourceType.$searchPath') |
                  stringSearchParameters.searchPath
                      .like('$resourceType.%.$searchPath'));

      if (modifier == 'exact') {
        // R4 3.1.1.4.4: ":exact returns results that match the entire supplied
        // parameter, including casing and combining characters." So it compares
        // the value as written, not the normalized one, and the search value
        // keeps its own casing and accents too.
        whereCondition = whereCondition &
            stringSearchParameters.exactValue.equals(searchValue.trim());
      } else if (modifier == 'contains') {
        whereCondition = whereCondition &
            stringSearchParameters.stringValue.like('%$normalizedValue%');
      } else if (modifier == 'missing') {
        final allResourceIds = (await (select(resources)
                  ..where((tbl) => tbl.resourceType.equals(resourceType)))
                .get())
            .map((r) => r.id)
            .toSet();
        final resourcesWithParam = (await (selectOnly(stringSearchParameters)
                  ..addColumns([stringSearchParameters.id])
                  ..where(
                    stringSearchParameters.resourceType.equals(resourceType) &
                        (stringSearchParameters.searchPath
                                .like('$resourceType.$searchPath') |
                            stringSearchParameters.searchPath
                                .like('$resourceType.%.$searchPath')),
                  ))
                .get())
            .map((r) => r.read(stringSearchParameters.id)!)
            .toSet();
        matchingIds.addAll(allResourceIds.difference(resourcesWithParam));
        continue;
      } else {
        // Default string search is "starts with" per FHIR spec
        whereCondition = whereCondition &
            stringSearchParameters.stringValue.like('$normalizedValue%');
      }

      query.where((tbl) => whereCondition);
      // Only the id column is read, not every column of every
      // matching row; see _executeTokenQuery for the measurement.
      final idColumn = stringSearchParameters.id;
      final rows = await (selectOnly(stringSearchParameters, distinct: true)
            ..addColumns([idColumn])
            ..where(whereCondition))
          .get();
      for (final row in rows) {
        final id = row.read(idColumn);
        if (id != null) {
          matchingIds.add(id);
        }
      }
    }

    return matchingIds;
  }

  Future<Set<String>> _searchTokenParameter(
    String resourceType,
    String searchPath,
    List<String> values,
    String? modifier,
  ) async {
    final matchingIds = <String>{};

    for (final value in values) {
      // The modifier arrives from the parameter NAME, per R4 search.html. It
      // used to be read off the end of the value, so `code:text=x` never
      // reached this and `code=x:text` did.
      //
      // Escaping is stripped AFTER any `|` split below, never before, or the
      // split would consume an escaped pipe that is part of the value.
      final searchValue = value;

      if (modifier == 'in') {
        // :in modifier — value is a ValueSet URL; match tokens in that ValueSet
        final codes = await _getCodesFromValueSet(searchValue);
        if (codes.isNotEmpty) {
          for (final entry in codes) {
            final queryValue = entry.system != null
                ? '${entry.system}|${entry.code}'
                : entry.code;
            final matched = await _executeTokenQuery(
              resourceType,
              searchPath,
              queryValue,
            );
            matchingIds.addAll(matched);
          }
        }
        continue;
      }

      if (modifier == 'not-in') {
        // :not-in modifier — value is a ValueSet URL; exclude tokens in that VS
        final codes = await _getCodesFromValueSet(searchValue);
        final allResourceIds = (await (select(resources)
                  ..where((tbl) => tbl.resourceType.equals(resourceType)))
                .get())
            .map((r) => r.id)
            .toSet();
        final excludedIds = <String>{};
        for (final entry in codes) {
          final queryValue = entry.system != null
              ? '${entry.system}|${entry.code}'
              : entry.code;
          final matched = await _executeTokenQuery(
            resourceType,
            searchPath,
            queryValue,
          );
          excludedIds.addAll(matched);
        }
        matchingIds.addAll(allResourceIds.difference(excludedIds));
        continue;
      }

      if (modifier == 'not') {
        final allResourceIds = (await (select(resources)
                  ..where((tbl) => tbl.resourceType.equals(resourceType)))
                .get())
            .map((r) => r.id)
            .toSet();
        final matched =
            await _executeTokenQuery(resourceType, searchPath, searchValue);
        matchingIds.addAll(allResourceIds.difference(matched));
        continue;
      }

      if (modifier == 'text') {
        final query = select(tokenSearchParameters)
          ..where(
            (tbl) =>
                tbl.resourceType.equals(resourceType) &
                (tbl.searchPath.like('$resourceType.$searchPath') |
                    tbl.searchPath.like('$resourceType.%.$searchPath')) &
                tbl.tokenDisplay.like('%${searchValue.toLowerCase()}%'),
          );
        final rows = await query.get();
        for (final row in rows) {
          matchingIds.add(row.id);
        }
        continue;
      }

      if (modifier == 'of-type') {
        // :of-type modifier for Identifier: typeSystem|typeCode|value
        // Searches identifiers where type.coding matches and value matches.
        // Since identifier.type is not indexed, we search by value first,
        // then filter by type in Dart.
        final pipeParts = splitEscaped(searchValue, '|');
        if (pipeParts.length == 3) {
          final typeSystem = pipeParts[0];
          final typeCode = pipeParts[1];
          final identifierValue = pipeParts[2];

          // Phase 1: Find candidate resources by identifier value
          final candidates = await _executeTokenQuery(
            resourceType,
            searchPath,
            identifierValue,
          );

          // Phase 2: Filter by identifier.type in Dart
          for (final candidateId in candidates) {
            final resourceType_ = fhir.R4ResourceType.fromString(resourceType);
            if (resourceType_ == null) continue;
            final resource = await getResource(resourceType_, candidateId);
            if (resource == null) continue;

            final json = resource.toJson();
            if (_matchesOfType(
              json,
              searchPath,
              typeSystem,
              typeCode,
              identifierValue,
            )) {
              matchingIds.add(candidateId);
            }
          }
        }
        continue;
      }

      final matched =
          await _executeTokenQuery(resourceType, searchPath, searchValue);
      matchingIds.addAll(matched);
    }

    return matchingIds;
  }

  /// The WHERE for one plain token value, as a typed expression, so it can be
  /// run on its own or nested as `id IN (SELECT …)` inside another.
  Expression<bool> _tokenCondition(
    String resourceType,
    String searchPath,
    String searchValue, {
    $TokenSearchParametersTable? on,
  }) {
    final t = on ?? tokenSearchParameters;
    String? system;
    var tokenValue = searchValue;

    if (searchValue.contains('|')) {
      final parts = splitEscaped(searchValue, '|');
      if (parts.length == 2) {
        system = parts[0].isEmpty ? null : parts[0];
        tokenValue = parts[1];
      }
    }

    var whereCondition = t.resourceType.equals(resourceType) &
        (t.searchName.equals(searchPath) |
            t.searchPath.like('$resourceType.$searchPath') |
            t.searchPath.like('$resourceType.%.$searchPath'));

    if (system != null && system.isNotEmpty && tokenValue.isNotEmpty) {
      whereCondition = whereCondition &
          t.tokenSystem.equals(system) &
          t.tokenValue.equals(tokenValue);
    } else if (system != null && system.isNotEmpty) {
      whereCondition = whereCondition & t.tokenSystem.equals(system);
    } else if (tokenValue.isNotEmpty) {
      whereCondition = whereCondition & t.tokenValue.equals(tokenValue);
    }
    return whereCondition;
  }

  Future<Set<String>> _executeTokenQuery(
    String resourceType,
    String searchPath,
    String searchValue, {
    int? limit,
    int? offset,
  }) async {
    final matchingIds = <String>{};
    final whereCondition =
        _tokenCondition(resourceType, searchPath, searchValue);

    // Only the id column is wanted, so only the id column is read. Selecting
    // whole rows marshalled every column of every match — searchPath,
    // searchName, tokenSystem, tokenValue, paramIndex, lastUpdated — to keep
    // one string. On 928,935 MIMIC resources, `Observation?status=final`
    // matches 813,513 rows, so that is 813,513 rows built and discarded.
    final idColumn = tokenSearchParameters.id;
    final query = selectOnly(tokenSearchParameters, distinct: true)
      ..addColumns([idColumn])
      ..where(whereCondition);
    if (limit != null) {
      // The page is cut HERE, in SQL, when the caller can prove it is the
      // whole answer. Measured on 928,935 resources, `status=final`,
      // 813,513 matches: every id 3.77s; `ORDER BY id LIMIT 20` 0.55s. The
      // ORDER BY is what makes offset 20 follow offset 0.
      query
        ..orderBy([OrderingTerm.asc(idColumn)])
        ..limit(limit, offset: offset);
    }
    final rows = await query.get();
    for (final row in rows) {
      final id = row.read(idColumn);
      if (id != null) {
        matchingIds.add(id);
      }
    }

    return matchingIds;
  }

  /// Extract all codes from a ValueSet (by URL) for :in/:not-in modifiers.
  ///
  /// Looks up the ValueSet by URL, then extracts codes from either
  /// the pre-computed expansion or the compose.include rules.
  Future<List<({String? system, String code})>> _getCodesFromValueSet(
    String valueSetUrl,
  ) async {
    // Look up the ValueSet by URL
    final results = await search(
      resourceType: fhir.R4ResourceType.ValueSet,
      searchParameters: {
        'url': [valueSetUrl],
      },
      count: 1,
    );
    if (results.isEmpty) return [];
    final valueSet = results.first as fhir.ValueSet;

    final codes = <({String? system, String code})>[];

    // 1. Check pre-computed expansion first
    if (valueSet.expansion?.contains != null) {
      _extractFromContains(valueSet.expansion!.contains!, codes);
      return codes;
    }

    // 2. Expand from compose.include
    if (valueSet.compose?.include != null) {
      for (final include in valueSet.compose!.include) {
        final includeSystem = include.system?.valueString;

        if (include.concept != null && include.concept!.isNotEmpty) {
          for (final c in include.concept!) {
            final code = c.code.valueString;
            if (code != null) {
              codes.add((system: includeSystem, code: code));
            }
          }
        } else if (includeSystem != null) {
          // Include all codes from the CodeSystem
          final csResults = await search(
            resourceType: fhir.R4ResourceType.CodeSystem,
            searchParameters: {
              'url': [includeSystem],
            },
            count: 1,
          );
          if (csResults.isNotEmpty) {
            final cs = csResults.first as fhir.CodeSystem;
            if (cs.concept != null) {
              _flattenCodeSystemConcepts(
                cs.concept!,
                includeSystem,
                codes,
              );
            }
          }
        }
      }
    }

    return codes;
  }

  /// Recursively extract codes from ValueSet expansion contains.
  void _extractFromContains(
    List<fhir.ValueSetContains> contains,
    List<({String? system, String code})> out,
  ) {
    for (final entry in contains) {
      final code = entry.code?.valueString;
      if (code != null) {
        out.add((system: entry.system?.valueString, code: code));
      }
      if (entry.contains != null) {
        _extractFromContains(entry.contains!, out);
      }
    }
  }

  /// Recursively flatten CodeSystem concepts into (system, code) pairs.
  void _flattenCodeSystemConcepts(
    List<fhir.CodeSystemConcept> concepts,
    String system,
    List<({String? system, String code})> out,
  ) {
    for (final c in concepts) {
      final code = c.code.valueString;
      if (code != null) {
        out.add((system: system, code: code));
      }
      if (c.concept != null) {
        _flattenCodeSystemConcepts(c.concept!, system, out);
      }
    }
  }

  /// Check if a resource's identifier field matches the :of-type criteria.
  ///
  /// Walks through the resource JSON to find identifier fields at the
  /// given search path that have a matching type coding and value.
  bool _matchesOfType(
    Map<String, dynamic> json,
    String searchPath,
    String typeSystem,
    String typeCode,
    String identifierValue,
  ) {
    // The searchPath is the FHIR search parameter name (e.g., "identifier").
    // We need to find all Identifier elements in the resource and check
    // if any match both the type coding and the value.

    // Try common field names for identifiers
    final fieldsToCheck = <String>['identifier'];

    // Also check the searchPath itself as a field name
    if (!fieldsToCheck.contains(searchPath)) {
      fieldsToCheck.add(searchPath);
    }

    for (final field in fieldsToCheck) {
      final fieldValue = json[field];
      if (fieldValue is List) {
        for (final item in fieldValue) {
          if (item is Map<String, dynamic>) {
            if (_identifierMatchesOfType(
              item,
              typeSystem,
              typeCode,
              identifierValue,
            )) {
              return true;
            }
          }
        }
      } else if (fieldValue is Map<String, dynamic>) {
        if (_identifierMatchesOfType(
          fieldValue,
          typeSystem,
          typeCode,
          identifierValue,
        )) {
          return true;
        }
      }
    }

    return false;
  }

  /// Check if a single Identifier JSON object matches the :of-type criteria.
  bool _identifierMatchesOfType(
    Map<String, dynamic> identifier,
    String typeSystem,
    String typeCode,
    String identifierValue,
  ) {
    // Check value
    final value = identifier['value'];
    if (value?.toString() != identifierValue) return false;

    // Check type.coding
    final type = identifier['type'];
    if (type is! Map<String, dynamic>) return false;

    final coding = type['coding'];
    if (coding is! List) return false;

    for (final c in coding) {
      if (c is Map<String, dynamic>) {
        final system = c['system']?.toString() ?? '';
        final code = c['code']?.toString() ?? '';
        if ((typeSystem.isEmpty || system == typeSystem) &&
            (typeCode.isEmpty || code == typeCode)) {
          return true;
        }
      }
    }

    return false;
  }

  /// The WHERE for one date value with its prefix, or null when the value
  /// is not a search date.
  ///
  /// R4B §3.1.1.4.7: the value "SHALL be populated from the left", "the
  /// minutes SHALL be present if an hour is present", and "Time can consist
  /// of hours and minutes with no seconds". That grammar is checked whole
  /// before parsing, because the primitive parser is lenient at the tail —
  /// `2013-1-4` parsed as the year 2013, which is a different search.
  Expression<bool>? _dateCondition(
    String resourceType,
    String searchPath,
    String? modifier,
    String searchValue, {
    $DateSearchParametersTable? on,
  }) {
    final t = on ?? dateSearchParameters;
    final range = searchDateRange(searchValue);
    if (range == null) {
      return null;
    }
    return t.resourceType.equals(resourceType) &
        (t.searchName.equals(searchPath) |
            t.searchPath.like('$resourceType.$searchPath') |
            t.searchPath.like('$resourceType.%.$searchPath')) &
        _dateRangeCondition(
          low: t.dateValue,
          high: t.dateValueEnd,
          prefix: modifier,
          search: range,
        );
  }

  /// The comparison of a stored range `[low, high)` against a search range,
  /// R4B §3.1.1.4.5 as applied to dates in §3.1.1.4.7. A null [low] is
  /// "'less than' any actual date" and a null [high] "'greater than' any
  /// actual date", which is how a Period with a missing bound is indexed.
  ///
  /// With the stored range `[L, H)` and the search range `[l, h)`:
  ///
  /// - `eq`: "the range of the search value fully contains the range of the
  ///   target value": `L >= l AND H <= h`. A missing bound cannot be
  ///   contained.
  /// - `ne`: "does not fully contain": the complement.
  /// - `gt`: "the range above the search value intersects (i.e. overlaps)
  ///   with the range of the target value": `H > h`, or no upper bound.
  /// - `lt`: the range below intersects: `L < l`, or no lower bound.
  /// - `ge`: `gt` or `eq`. `le`: `lt` or `eq`.
  /// - `sa`: "does not overlap … and the range above the search value
  ///   contains the range of the target value": `L >= h`.
  /// - `eb`: `H <= l`.
  /// - `ap`: the search range widened by "10% of the gap between now and the
  ///   date" on each side overlaps the target.
  ///
  /// Every worked example in §3.1.1.4.7 is a test: "from 21-Jan 2013
  /// onwards" is a Period with no end, and `ge2013-03-14` includes it
  /// "because that period may include times after 14-Mar 2013".
  Expression<bool> _dateRangeCondition({
    required Expression<DateTime> low,
    required Expression<DateTime> high,
    required String? prefix,
    required ({DateTime low, DateTime high}) search,
  }) {
    final l = search.low;
    final h = search.high;
    final lowMissing = low.isNull();
    final highMissing = high.isNull();
    final contained = low.isNotNull() &
        high.isNotNull() &
        low.isBiggerOrEqualValue(l) &
        high.isSmallerOrEqualValue(h);
    final above = highMissing | high.isBiggerThanValue(h);
    final below = lowMissing | low.isSmallerThanValue(l);
    switch (prefix) {
      case 'gt':
        return above;
      case 'lt':
        return below;
      case 'ge':
        return above | contained;
      case 'le':
        return below | contained;
      case 'sa':
        return low.isNotNull() & low.isBiggerOrEqualValue(h);
      case 'eb':
        return high.isNotNull() & high.isSmallerOrEqualValue(l);
      case 'ne':
        return contained.not();
      case 'ap':
        // "the recommended value for the approximation is 10% of the stated
        // value (or for a date, 10% of the gap between now and the date)".
        final gap = DateTime.now().difference(l).abs();
        final margin = Duration(milliseconds: gap.inMilliseconds ~/ 10);
        final widenedLow = l.subtract(margin);
        final widenedHigh = h.add(margin);
        return (lowMissing | low.isSmallerThanValue(widenedHigh)) &
            (highMissing | high.isBiggerThanValue(widenedLow));
      default:
        // eq, and no prefix at all: §3.1.1.4.5, "If no prefix is present,
        // the prefix eq is assumed."
        return contained;
    }
  }

  Future<Set<String>> _searchDateParameter(
    String resourceType,
    String searchPath,
    List<String> values,
    SearchParameterDefinition? declared,
  ) async {
    final matchingIds = <String>{};

    for (final value in values) {
      String? modifier;
      var searchValue = value;

      // The comparators the PARAMETER declares, not a list copied out of the
      // prose. R4 core declares all nine on every date parameter, but a
      // deployment's custom parameter may declare fewer and must then be held
      // to that.
      final (prefix, rest) = splitComparator(
        declared ?? const SearchParameterDefinition('date', comparatorPrefixes),
        value,
      );
      if (prefix != null) {
        modifier = prefix;
        searchValue = rest;
      }

      if (modifier == 'missing') {
        final allResourceIds = (await (select(resources)
                  ..where((tbl) => tbl.resourceType.equals(resourceType)))
                .get())
            .map((r) => r.id)
            .toSet();
        final resourcesWithParam = (await (selectOnly(dateSearchParameters)
                  ..addColumns([dateSearchParameters.id])
                  ..where(
                    dateSearchParameters.resourceType.equals(resourceType) &
                        (dateSearchParameters.searchPath
                                .like('$resourceType.$searchPath') |
                            dateSearchParameters.searchPath
                                .like('$resourceType.%.$searchPath')),
                  ))
                .get())
            .map((r) => r.read(dateSearchParameters.id)!)
            .toSet();
        matchingIds.addAll(allResourceIds.difference(resourcesWithParam));
        continue;
      }

      final whereCondition =
          _dateCondition(resourceType, searchPath, modifier, searchValue);
      if (whereCondition == null) {
        continue;
      }

      final idColumn = dateSearchParameters.id;
      final rows = await (selectOnly(dateSearchParameters, distinct: true)
            ..addColumns([idColumn])
            ..where(whereCondition))
          .get();
      for (final row in rows) {
        final id = row.read(idColumn);
        if (id != null) {
          matchingIds.add(id);
        }
      }
    }

    return matchingIds;
  }

  /// `_lastUpdated` reads `resources.last_updated`, an instant in
  /// milliseconds, so the stored range is the point `[t, t + 1ms)`; the
  /// prefix semantics are the same as for every other date parameter.
  Future<Set<String>> _searchLastUpdatedParameter(
    String resourceType,
    List<String> values,
  ) async {
    final matchingIds = <String>{};
    for (final value in values) {
      final (prefix, rest) = splitComparator(
        const SearchParameterDefinition('date', comparatorPrefixes),
        value,
      );
      final condition = _lastUpdatedCondition(prefix, rest);
      if (condition == null) {
        continue;
      }
      final rows = await (selectOnly(resources)
            ..addColumns([resources.id])
            ..where(resources.resourceType.equals(resourceType) & condition))
          .get();
      for (final row in rows) {
        matchingIds.add(row.read(resources.id)!);
      }
    }
    return matchingIds;
  }

  /// The WHERE on `resources.last_updated` for one `_lastUpdated` value, or
  /// null when the value is not a search date.
  Expression<bool>? _lastUpdatedCondition(
    String? prefix,
    String value, {
    $ResourcesTable? on,
  }) {
    final r = on ?? resources;
    final range = searchDateRange(value);
    if (range == null) {
      return null;
    }
    // last_updated is integer milliseconds; the range comparison is written
    // over DateTime expressions, so the point is lifted to one. SQLite
    // stores a Drift DateTime as whole seconds, hence the division.
    final instant = r.lastUpdated.dartCast<double>() / const Constant(1000);
    final low = instant.dartCast<DateTime>();
    final high = (instant + const Constant(1)).dartCast<DateTime>();
    return _dateRangeCondition(
      low: low,
      high: high,
      prefix: prefix,
      search: range,
    );
  }

  Future<Set<String>> _searchMissingParameter(
    String resourceType,
    String paramName,
  ) async {
    final allResourceIds = (await (select(resources)
              ..where((tbl) => tbl.resourceType.equals(resourceType)))
            .get())
        .map((r) => r.id)
        .toSet();

    // Check across all search parameter tables
    final idsWithParam = <String>{};

    for (final table in <ResultSetImplementation<dynamic, dynamic>>[
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
      final rows = await customSelect(
        'SELECT DISTINCT id FROM ${table.entityName} '
        'WHERE resource_type = ? AND ( '
        'search_path LIKE ? OR search_path LIKE ?)',
        variables: [
          Variable.withString(resourceType),
          Variable.withString('$resourceType.$paramName'),
          Variable.withString('$resourceType.%.$paramName'),
        ],
        readsFrom: {table},
      ).get();
      for (final row in rows) {
        idsWithParam.add(row.data['id'] as String);
      }
    }

    return allResourceIds.difference(idsWithParam);
  }

  /// The comparison for one number or quantity value under its prefix,
  /// R4B 3.1.1.4.5 and 3.1.1.4.6.
  ///
  /// A search value has an implicit range, half a unit of its last
  /// significant digit either side: `100` is [99.5, 100.5), `100.00` is
  /// [99.995, 100.005), `5.4` is [5.35, 5.45), `5.40e-3` is
  /// [0.005395, 0.005405). 3.1.1.4.6: "the number of significant digits of
  /// the implicit range is the number of digits specified in the search
  /// parameter value, excluding leading zeros. So 100 and 1.00e2 both have
  /// the same number of significant digits - three". The stored value is a
  /// point, so:
  ///
  /// - `eq` — "the range of the search value fully contains the range of the
  ///   target value": `low <= v < high`. This used to be `v == value`, which
  ///   3.1.1.4.6 rules out ("The way search parameters operate in resources
  ///   is not the same as whether two numbers are equal to each other in a
  ///   mathematical sense"): `probability=0.3` did not find 0.31.
  /// - `ne` — "does not fully contain": the complement.
  /// - `gt`, `lt`, `ge`, `le` — "the implicit precision of the number is
  ///   ignored, and they are treated as if they have arbitrarily high
  ///   precision": exact against `value`.
  /// - `sa` — "the range above the search value contains the range of the
  ///   target value" and they do not overlap: `v >= high`. `eb`: `v < low`.
  ///   These two used to fall into `eq`, a wrong answer.
  /// - `ap` — "the range of the search value overlaps with the range of the
  ///   target value", with the recommended approximation of 10% of the
  ///   stated value: the implicit range widened by that on each side.
  ///
  /// ⚠️ One example in 3.1.1.4.6 does not follow its own rule: it gives
  /// `1e2` as "1 significant figures precision" with the range [95, 105),
  /// which is a two-figure range. By the rule as worded, one significant
  /// figure at the hundreds place is [50, 150), and that is what this does.
  /// HAPI uses exact matching for eq/ne ("per discussions with Grahame
  /// Grieve", NumberPredicateBuilder.java) and Microsoft's server widens by
  /// half a unit of the last DECIMAL place, so 1e2 is ±0.5 there. Neither
  /// follows the text, so the text is what is implemented here.
  Expression<bool> _numericPrefixCondition(
    GeneratedColumn<double> column,
    String? prefix,
    String written,
    double value,
  ) {
    // The caller has parsed [written], so the range is never null.
    final (:low, :high) = implicitRange(written)!;
    switch (prefix) {
      case 'gt':
        return column.isBiggerThanValue(value);
      case 'lt':
        return column.isSmallerThanValue(value);
      case 'ge':
        return column.isBiggerOrEqualValue(value);
      case 'le':
        return column.isSmallerOrEqualValue(value);
      case 'sa':
        return column.isBiggerOrEqualValue(high);
      case 'eb':
        return column.isSmallerThanValue(low);
      case 'ne':
        return column.isSmallerThanValue(low) |
            column.isBiggerOrEqualValue(high);
      case 'ap':
        final approximation = value.abs() * 0.1;
        return column.isBiggerOrEqualValue(low - approximation) &
            column.isSmallerThanValue(high + approximation);
      default:
        // eq, and no prefix at all: 3.1.1.4.5, "If no prefix is present,
        // the prefix eq is assumed."
        return column.isBiggerOrEqualValue(low) &
            column.isSmallerThanValue(high);
    }
  }

  /// The WHERE for one number value with its comparator prefix, or null
  /// when the value is not a number.
  Expression<bool>? _numberCondition(
    String resourceType,
    String searchPath,
    String? modifier,
    String searchValue, {
    $NumberSearchParametersTable? on,
  }) {
    final t = on ?? numberSearchParameters;
    final numValue = double.tryParse(searchValue);
    if (numValue == null) {
      return null;
    }

    final whereCondition = t.resourceType.equals(resourceType) &
        (t.searchName.equals(searchPath) |
            t.searchPath.like('$resourceType.$searchPath') |
            t.searchPath.like('$resourceType.%.$searchPath'));

    return whereCondition &
        _numericPrefixCondition(
          t.numberValue,
          modifier,
          searchValue,
          numValue,
        );
  }

  Future<Set<String>> _searchNumberParameter(
    String resourceType,
    String searchPath,
    List<String> values,
    SearchParameterDefinition? declared,
  ) async {
    final matchingIds = <String>{};
    for (final value in values) {
      String? modifier;
      var searchValue = value;
      final (prefix, rest) = splitComparator(
        declared ??
            const SearchParameterDefinition('quantity', comparatorPrefixes),
        value,
      );
      if (prefix != null) {
        modifier = prefix;
        searchValue = rest;
      }

      final whereCondition =
          _numberCondition(resourceType, searchPath, modifier, searchValue);
      if (whereCondition == null) {
        continue;
      }
      final idColumn = numberSearchParameters.id;
      final rows = await (selectOnly(numberSearchParameters, distinct: true)
            ..addColumns([idColumn])
            ..where(whereCondition))
          .get();
      for (final row in rows) {
        final id = row.read(idColumn);
        if (id != null) {
          matchingIds.add(id);
        }
      }
    }
    return matchingIds;
  }

  /// The WHERE for one quantity value — `[prefix]number|system|code` — or
  /// null when the number does not parse.
  Expression<bool>? _quantityCondition(
    String resourceType,
    String searchPath,
    String? modifier,
    String searchValue, {
    $QuantitySearchParametersTable? on,
  }) {
    final t = on ?? quantitySearchParameters;
    // R4B 3.1.1.4.11: `[prefix][number]|[system]|[code]`. The number comes
    // FIRST. This used to read a three-part value as `system|number|code`, so
    // the spec's own example `5.4|http://unitsofmeasure.org|mg` tried to parse
    // the URL as a number and matched nothing. The section defines three
    // shapes — `5.4`, `5.4||mg`, `5.4|system|mg` — and no two-part one.
    final parts = splitEscaped(searchValue, '|');
    if (parts.length != 1 && parts.length != 3) {
      return null;
    }
    final numValue = double.tryParse(parts[0]);
    if (numValue == null) {
      return null;
    }
    final system = parts.length == 3 && parts[1].isNotEmpty ? parts[1] : null;
    final code = parts.length == 3 && parts[2].isNotEmpty ? parts[2] : null;

    // searchName first, as every other matcher does. Without it a quantity
    // parameter could only be found when its name happened to be the last
    // segment of its path — which `value-quantity` never is, because its
    // path is `Observation.value.ofType(Quantity)`. That is why the row was
    // written correctly and the search still returned nothing.
    var whereCondition = t.resourceType.equals(resourceType) &
        (t.searchName.equals(searchPath) |
            t.searchPath.like('$resourceType.$searchPath') |
            t.searchPath.like('$resourceType.%.$searchPath'));

    if (system != null) {
      // System given: "a precise match is desired", on system and code.
      whereCondition = whereCondition & t.quantitySystem.equals(system);
      if (code != null) {
        whereCondition = whereCondition & t.quantityCode.equals(code);
      }
    } else if (code != null) {
      // `5.4||mg`: "either the code (code) or the stated human unit (unit)".
      whereCondition = whereCondition &
          (t.quantityCode.equals(code) | t.quantityUnit.equals(code));
    }

    return whereCondition &
        _numericPrefixCondition(
          t.quantityValue,
          modifier,
          parts[0],
          numValue,
        );
  }

  Future<Set<String>> _searchQuantityParameter(
    String resourceType,
    String searchPath,
    List<String> values,
    SearchParameterDefinition? declared,
  ) async {
    final matchingIds = <String>{};
    for (final value in values) {
      String? modifier;
      var searchValue = value;
      final (prefix, rest) = splitComparator(
        declared ??
            const SearchParameterDefinition('number', comparatorPrefixes),
        value,
      );
      if (prefix != null) {
        modifier = prefix;
        searchValue = rest;
      }

      final whereCondition =
          _quantityCondition(resourceType, searchPath, modifier, searchValue);
      if (whereCondition == null) {
        continue;
      }
      final idColumn = quantitySearchParameters.id;
      final rows = await (selectOnly(quantitySearchParameters, distinct: true)
            ..addColumns([idColumn])
            ..where(whereCondition))
          .get();
      for (final row in rows) {
        final id = row.read(idColumn);
        if (id != null) {
          matchingIds.add(id);
        }
      }
    }
    return matchingIds;
  }

  /// The WHERE for one plain uri value: exact match on the stored URI
  /// (R4B 3.1.1.4.13 — "the search is case sensitive and accent sensitive",
  /// with `:above` and `:below` as modifiers, which take the general path).
  Expression<bool> _uriCondition(
    String resourceType,
    String searchPath,
    String value, {
    $UriSearchParametersTable? on,
  }) {
    final t = on ?? uriSearchParameters;
    return t.resourceType.equals(resourceType) &
        (t.searchName.equals(searchPath) |
            t.searchPath.like('$resourceType.$searchPath') |
            t.searchPath.like('$resourceType.%.$searchPath')) &
        t.uriValue.equals(unescapeValue(value));
  }

  Future<Set<String>> _searchUriParameter(
    String resourceType,
    String searchPath,
    List<String> values, [
    String? modifier,
  ]) async {
    final matchingIds = <String>{};
    for (final value in values) {
      // :above and :below were already implemented here and already correct.
      // They were simply unreachable: the modifier was read off the END of the
      // value, so `url:below=http://x` never arrived and `url=http://x:below`
      // did. The modifier now comes from the parameter name.
      final searchValue = unescapeValue(value);

      final pathCondition = uriSearchParameters.searchName.equals(searchPath) |
          uriSearchParameters.searchPath.like('$resourceType.$searchPath') |
          uriSearchParameters.searchPath.like('$resourceType.%.$searchPath');

      if (modifier == 'above') {
        // :above means stored URI is a parent/prefix of the search value
        // i.e., searchValue.startsWith(storedUri)
        // Can't express this directly in Drift's query builder, so fetch and
        // filter in Dart.
        final query = select(uriSearchParameters)
          ..where(
            (tbl) => tbl.resourceType.equals(resourceType) & pathCondition,
          );
        final rows = await query.get();
        for (final row in rows) {
          if (searchValue.startsWith(row.uriValue)) {
            matchingIds.add(row.id);
          }
        }
      } else {
        Expression<bool> valueCondition;
        if (modifier == 'below') {
          // :below means stored URI starts with the search value (stored is more specific)
          valueCondition = uriSearchParameters.uriValue.like('$searchValue%');
        } else {
          valueCondition = uriSearchParameters.uriValue.equals(searchValue);
        }

        // Only the id column is read, not every column of every
        // matching row; see _executeTokenQuery for the measurement.
        final idColumn = uriSearchParameters.id;
        final rows = await (selectOnly(uriSearchParameters, distinct: true)
              ..addColumns([idColumn])
              ..where(
                uriSearchParameters.resourceType.equals(resourceType) &
                    pathCondition &
                    valueCondition,
              ))
            .get();
        for (final row in rows) {
          final id = row.read(idColumn);
          if (id != null) {
            matchingIds.add(id);
          }
        }
      }
    }
    return matchingIds;
  }

  /// The WHERE for one plain reference value, `Type/id` or a bare `id`, as a
  /// typed expression. R4 3.1.1.4.12: `subject=Patient/23` names the type
  /// and the id; a bare `23` matches any type with that id. `:identifier`
  /// and the type-as-modifier form are modifiers, which the SQL-paged path
  /// does not admit, so they take the general path.
  Expression<bool> _referenceCondition(
    String resourceType,
    String searchPath,
    String value, {
    $ReferenceSearchParametersTable? on,
  }) {
    final t = on ?? referenceSearchParameters;
    var where = t.resourceType.equals(resourceType) &
        (t.searchName.equals(searchPath) |
            t.searchPath.like('$resourceType.$searchPath') |
            t.searchPath.like('$resourceType.%.$searchPath'));
    final unescaped = unescapeValue(value);
    final parts = unescaped.split('/');
    if (unescaped.contains('://')) {
      // R4B 3.1.1.4.12, `[parameter]=[url]`: "a reference to a resource by
      // its absolute location, or by its canonical URL". The stored value
      // as written, with the `[url]|[version]` form matching that exact
      // string and the bare `[url]` also matching any version of it (R5
      // 3.2.1.6.1.5: servers SHOULD read a `|[version]` as the business
      // version, so a search without one is version-agnostic). This used
      // to compare the whole URL against the id part, which never matched.
      // A prefix test by substr rather than LIKE: LIKE has no escape
      // character unless one is declared, and `_` (a wildcard) is common
      // in URLs, so `us_core` would also match `us-core`.
      final versioned = '$unescaped|';
      where = where &
          (t.referenceValue.equals(unescaped) |
              (unescaped.contains('|')
                  ? const Constant(false)
                  : t.referenceValue
                      .substr(1, versioned.length)
                      .equals(versioned)));
    } else if (parts.length == 2) {
      where = where &
          t.referenceResourceType.equals(parts[0]) &
          t.referenceIdPart.equals(parts[1]);
    } else {
      where = where & t.referenceIdPart.equals(unescaped);
    }
    return where;
  }

  Future<Set<String>> _searchReferenceParameter(
    String resourceType,
    String searchPath,
    List<String> values,
    bool isChained, [
    String? modifier,
  ]) async {
    final matchingIds = <String>{};

    if (isChained) {
      // Reference chaining: paramName = "organization.name"
      // Also supports type-constrained chaining: "subject:Patient.name"
      final dotIndex = searchPath.indexOf('.');
      var refParam = searchPath.substring(0, dotIndex);
      final chainedParam = searchPath.substring(dotIndex + 1);

      // Parse type constraint from refParam (e.g., "subject:Patient")
      String? typeConstraint;
      if (refParam.contains(':')) {
        final colonIndex = refParam.indexOf(':');
        typeConstraint = refParam.substring(colonIndex + 1);
        refParam = refParam.substring(0, colonIndex);
      }

      // Get all reference entries for this param
      final refQuery = select(referenceSearchParameters)
        ..where(
          (tbl) =>
              tbl.resourceType.equals(resourceType) &
              (tbl.searchName.equals(refParam) |
                  tbl.searchPath.like('$resourceType.$refParam') |
                  tbl.searchPath.like('$resourceType.%.$refParam')),
        );
      final refRows = await refQuery.get();

      for (final refRow in refRows) {
        if (refRow.referenceResourceType != null &&
            refRow.referenceIdPart != null) {
          // If type constraint specified, skip references to other types
          if (typeConstraint != null &&
              refRow.referenceResourceType != typeConstraint) {
            continue;
          }
          final targetType =
              fhir.R4ResourceType.fromString(refRow.referenceResourceType!);
          if (targetType == null) continue;
          final targetResults = await search(
            resourceType: targetType,
            searchParameters: {chainedParam: values},
          );
          if (targetResults.isNotEmpty) {
            matchingIds.add(refRow.id);
          }
        }
      }
    } else {
      for (final value in values) {
        final query = select(referenceSearchParameters);
        var whereCondition =
            referenceSearchParameters.resourceType.equals(resourceType) &
                (referenceSearchParameters.searchName.equals(searchPath) |
                    referenceSearchParameters.searchPath
                        .like('$resourceType.$searchPath') |
                    referenceSearchParameters.searchPath
                        .like('$resourceType.%.$searchPath'));

        // R4 3.1.1.4.12: ":identifier allows for searching by the identifier
        // rather than the literal reference ... the search value works as a
        // token search". So it tests Reference.identifier, NOT the referenced
        // resource — an Observation whose subject carries the MRN matches,
        // while one that merely points at a Patient holding that MRN does not.
        if (modifier == 'identifier') {
          final parts = splitEscaped(value, '|');
          final identifierValue =
              parts.length > 1 ? parts[1] : unescapeValue(value);
          final identifierSystem = parts.length > 1 ? parts[0] : null;
          whereCondition = whereCondition &
              referenceSearchParameters.identifierValue.equals(identifierValue);
          if (identifierSystem != null && identifierSystem.isNotEmpty) {
            whereCondition = whereCondition &
                referenceSearchParameters.identifierSystem
                    .equals(identifierSystem);
          }
          query.where((tbl) => whereCondition);
          for (final row in await query.get()) {
            matchingIds.add(row.id);
          }
          continue;
        }

        // R4 3.1.1.4.12: a resource type as the modifier says which type the
        // reference must point at, and `subject:Patient=23` "has the same
        // effect as" `subject=Patient/23`.
        if (modifier != null && modifier != 'missing' && !value.contains('/')) {
          whereCondition = whereCondition &
              referenceSearchParameters.referenceResourceType.equals(modifier) &
              referenceSearchParameters.referenceIdPart
                  .equals(unescapeValue(value));
          query.where((tbl) => whereCondition);
          for (final row in await query.get()) {
            matchingIds.add(row.id);
          }
          continue;
        }

        // The same builder the SQL-paged path uses, so `Type/id`, a bare
        // id and an absolute or canonical URL mean the same thing on both.
        // Before this an absolute URL added NO condition at all, so
        // `subject=http://server/Patient/23` returned every resource that
        // had a subject.
        whereCondition = _referenceCondition(resourceType, searchPath, value);

        query.where((tbl) => whereCondition);
        // Only the id column is read; see _executeTokenQuery.
        //
        // This conversion regressed once — `subject=Patient/does-not-exist`
        // went from 0.01s to 10.35s — and the cause was measured with
        // EXPLAIN QUERY PLAN: with no sqlite_stat1, the planner chose the
        // primary key for the DISTINCT-id shape, whose leading column
        // resource_type matched 2.9 million rows. The database is ANALYZEd
        // on open now (fhir_db.dart, beforeOpen), and with statistics the
        // planner picks idx_ref_id for both shapes.
        final idColumn = referenceSearchParameters.id;
        final rows =
            await (selectOnly(referenceSearchParameters, distinct: true)
                  ..addColumns([idColumn])
                  ..where(whereCondition))
                .get();
        for (final row in rows) {
          final id = row.read(idColumn);
          if (id != null) {
            matchingIds.add(id);
          }
        }
      }
    }

    return matchingIds;
  }

  Future<Set<String>> _searchCompositeParameter(
    String resourceType,
    String compositeParamName,
    List<String> values,
  ) async {
    final matchingIds = <String>{};
    final paramParts = compositeParamName.split('-');
    if (paramParts.length < 2) return matchingIds;

    for (final value in values) {
      final valueParts = value.split(r'$');
      if (valueParts.length != paramParts.length) continue;

      final componentResults = <Set<String>>[];
      for (var i = 0; i < paramParts.length; i++) {
        final componentParam = paramParts[i];
        final componentValue = valueParts[i];
        final ids = await _resolveSearchParameter(
          resourceType,
          componentParam,
          [componentValue],
        );
        componentResults.add(ids);
      }

      if (componentResults.isNotEmpty) {
        var intersection = componentResults.first;
        for (var i = 1; i < componentResults.length; i++) {
          intersection = intersection.intersection(componentResults[i]);
        }
        matchingIds.addAll(intersection);
      }
    }

    return matchingIds;
  }

  /// The patient this resource is about, or null when it names none.
  ///
  /// Reads the reference search index rather than the resource itself: the
  /// extraction already ran at save time, so this is one indexed row read.
  ///
  /// Only subject-of-care parameters count — `patient` and `subject`. A
  /// resource can reference several patients: `Observation.performer` may be a
  /// patient who reported their own reading, and `AllergyIntolerance.recorder`
  /// may be one too. Naming any of those as the subject would answer "who
  /// accessed this person's record" with someone who was merely mentioned in
  /// it, which is worse than answering nothing.
  Future<String?> subjectOfCare(String resourceType, String id) async {
    if (resourceType == 'Patient') return id;

    final rows = await (select(referenceSearchParameters)
          ..where(
            (tbl) =>
                tbl.resourceType.equals(resourceType) &
                tbl.id.equals(id) &
                tbl.referenceResourceType.equals('Patient') &
                tbl.searchName.isIn(const ['patient', 'subject']),
          ))
        .get();

    for (final row in rows) {
      final part = row.referenceIdPart;
      if (part != null && part.isNotEmpty) return part;
    }
    return null;
  }

  Future<Set<String>> _resolveHasParameter(
    String sourceResourceType,
    HasParameter hasParam,
    int depth,
  ) async {
    if (depth > 3) return {};

    final targetType = hasParam.targetType;
    final targetResourceType = fhir.R4ResourceType.fromString(targetType);
    if (targetResourceType == null) return {};

    Set<String> targetIds;

    if (hasParam.nested != null) {
      targetIds =
          await _resolveHasParameter(targetType, hasParam.nested!, depth + 1);
    } else {
      final results = await search(
        resourceType: targetResourceType,
        searchParameters: {
          hasParam.searchParam: [hasParam.value],
        },
      );
      targetIds = results
          .map((r) => r.id?.valueString ?? '')
          .where((id) => id.isNotEmpty)
          .toSet();
    }

    if (targetIds.isEmpty) return {};

    final matchingSourceIds = <String>{};
    for (final targetId in targetIds) {
      final refs = await (select(referenceSearchParameters)
            ..where(
              (tbl) =>
                  tbl.resourceType.equals(targetType) &
                  tbl.id.equals(targetId) &
                  tbl.referenceResourceType.equals(sourceResourceType),
            ))
          .get();
      for (final ref in refs) {
        if (ref.referenceIdPart != null) {
          matchingSourceIds.add(ref.referenceIdPart!);
        }
      }
    }

    return matchingSourceIds;
  }

  // ──────────────────────────────────────────────────────────────────────────
  // Private: Sorting helper
  // ──────────────────────────────────────────────────────────────────────────

  /// Orders hydrated resources for the general path, R4B §3.1.1.5.1.
  ///
  /// The keys come from the resources themselves, through the same extractor
  /// that writes the index, so nothing is read back from the database (the
  /// previous version queried each index table with `id IN (<every id>)`,
  /// which SQLite caps at 32,766 variables, and compared numbers as
  /// strings). "There can be multiple values for a given search parameter
  /// for a single resource. In this case, the sort is based on the item in
  /// the set of multiple parameters that comes earliest in the specified
  /// sort order": the smallest value ascending, the largest descending. A
  /// resource with no value sorts last; ties break on id.
  Future<void> _sortResults(
    List<fhir.Resource> results,
    List<String> sort,
    String resourceType,
  ) async {
    final rules = <(String name, bool descending, SearchParameterDefinition?)>[
      for (final rule in sort)
        if (rule.startsWith('-'))
          (
            rule.substring(1),
            true,
            searchParameterFor(resourceType, rule.substring(1))
          )
        else
          (rule, false, searchParameterFor(resourceType, rule)),
    ];
    final keys = <String, List<Comparable<Object>?>>{
      for (final r in results)
        r.id?.valueString ?? '': [
          for (final (name, descending, declared) in rules)
            _sortKeyOf(r, name, descending, declared),
        ],
    };
    results.sort((a, b) {
      final ka = keys[a.id?.valueString ?? '']!;
      final kb = keys[b.id?.valueString ?? '']!;
      for (final (i, (_, descending, _)) in rules.indexed) {
        final va = ka[i];
        final vb = kb[i];
        if (va == null && vb == null) continue;
        if (va == null) return 1;
        if (vb == null) return -1;
        final c = va.compareTo(vb);
        if (c != 0) return descending ? -c : c;
      }
      return (a.id?.valueString ?? '').compareTo(b.id?.valueString ?? '');
    });
  }

  /// One resource's key for one sort rule: the earliest of its values in the
  /// rule's direction, typed so numbers and dates compare as themselves.
  Comparable<Object>? _sortKeyOf(
    fhir.Resource resource,
    String name,
    bool descending,
    SearchParameterDefinition? declared,
  ) {
    if (name == '_id') return resource.id?.valueString;
    if (name == '_lastUpdated') {
      return resource.meta?.lastUpdated?.valueDateTime;
    }
    if (declared == null) return null;
    final resourceType = resource.resourceTypeString;
    bool named(String searchName, String searchPath) =>
        searchName == name ||
        searchPath == '$resourceType.$name' ||
        (searchPath.startsWith('$resourceType.') &&
            searchPath.endsWith('.$name'));
    final lists = extractSearchParameters(resource);
    final values = <Comparable<Object>>[];
    switch (declared.type) {
      case 'string':
        for (final p in lists.stringParams) {
          if (named(p.searchName.value, p.searchPath.value)) {
            values.add(p.stringValue.value);
          }
        }
      case 'token':
        for (final p in lists.tokenParams) {
          if (named(p.searchName.value, p.searchPath.value)) {
            values.add(p.tokenValue.value);
          }
        }
      case 'date':
        for (final p in lists.dateParams) {
          if (named(p.searchName.value, p.searchPath.value)) {
            final low = p.dateValue.value;
            if (low != null) values.add(low);
          }
        }
      case 'number':
        for (final p in lists.numberParams) {
          if (named(p.searchName.value, p.searchPath.value)) {
            values.add(p.numberValue.value);
          }
        }
      case 'quantity':
        for (final p in lists.quantityParams) {
          if (named(p.searchName.value, p.searchPath.value)) {
            values.add(p.quantityValue.value);
          }
        }
      case 'reference':
        for (final p in lists.referenceParams) {
          if (named(p.searchName.value, p.searchPath.value)) {
            final v = p.referenceValue.value;
            if (v != null) values.add(v);
          }
        }
      case 'uri':
        for (final p in lists.uriParams) {
          if (named(p.searchName.value, p.searchPath.value)) {
            values.add(p.uriValue.value);
          }
        }
      default:
        return null;
    }
    if (values.isEmpty) return null;
    return values.reduce(
      (a, b) => descending
          ? (a.compareTo(b) >= 0 ? a : b)
          : (a.compareTo(b) <= 0 ? a : b),
    );
  }
}

/// One search parameter expressed as a WHERE on its own index table.
class _IndexCondition {
  const _IndexCondition(
    this.table,
    this.idColumn,
    this.condition, {
    this.negated = false,
  });

  final TableInfo<Table, dynamic> table;
  final GeneratedColumn<String> idColumn;
  final Expression<bool> condition;

  /// True when the resource must have NO row matching [condition]:
  /// `:missing=true`, `:not`, `:not-in`. Never the outer select; nested as
  /// `NOT EXISTS`.
  final bool negated;
}

/// One `_sort` rule: the (aliased) table holding the value, how it joins to
/// the outer select's id, the value column, and the direction.
class _SortKey {
  const _SortKey({
    required this.table,
    required this.on,
    required this.value,
    required this.descending,
  });

  final TableInfo<Table, dynamic> table;
  final Expression<bool> Function(GeneratedColumn<String> outerId) on;
  final Expression<Object> value;
  final bool descending;
}
