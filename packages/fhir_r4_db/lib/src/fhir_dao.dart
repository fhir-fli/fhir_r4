// ignore_for_file: lines_longer_than_80_chars, avoid_print
import 'dart:convert';

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
    // A sort is the exception: `_sortResults` orders resources, so the page
    // cannot be chosen until they are ordered. That path still reads all of
    // them, and is the next thing to fix.
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
  Future<List<String>?> _pagedIds(
    String resourceType,
    Map<String, List<String>>? searchParameters,
    List<HasParameter>? hasParameters,
    List<String>? sort,
    int? count,
    int? offset,
  ) async {
    if (count == null || count <= 0) return null;
    if (sort != null && sort.isNotEmpty) return null;
    if (hasParameters != null && hasParameters.isNotEmpty) return null;
    if (searchParameters == null || searchParameters.isEmpty) return null;

    final parts = <_IndexCondition>[];
    for (final entry in searchParameters.entries) {
      if (entry.value.length != 1) return null;
      final value = entry.value.single;
      if (value.contains(',') || value.isEmpty) return null;

      final key = SearchQueryKey.parse(entry.key);
      if (key.qualifier != null) return null;
      if (key.name.startsWith('_')) return null;

      final declared = searchParameterFor(resourceType, key.name);
      if (declared == null) return null;

      final part = _conditionFor(resourceType, key.name, value, declared);
      if (part == null) return null;
      parts.add(part);
    }

    final first = parts.first;
    var where = first.condition;
    for (final other in parts.skip(1)) {
      where = where &
          first.idColumn.isInQuery(
            selectOnly(other.table, distinct: true)
              ..addColumns([other.idColumn])
              ..where(other.condition),
          );
    }
    final rows = await (selectOnly(first.table, distinct: true)
          ..addColumns([first.idColumn])
          ..where(where)
          ..orderBy([OrderingTerm.asc(first.idColumn)])
          ..limit(count, offset: offset))
        .get();
    return rows.map((r) => r.read(first.idColumn)).whereType<String>().toList();
  }

  /// One parameter's typed WHERE on its own index table, or null when this
  /// path has no builder for the parameter's type or the value does not
  /// parse for it.
  _IndexCondition? _conditionFor(
    String resourceType,
    String name,
    String value,
    SearchParameterDefinition declared,
  ) {
    switch (declared.type) {
      case 'token':
        return _IndexCondition(
          tokenSearchParameters,
          tokenSearchParameters.id,
          _tokenCondition(resourceType, name, value),
        );
      case 'reference':
        // A chain (`subject.name`) never reaches here: the key's qualifier
        // is rejected above. Only `Type/id` and bare ids do.
        return _IndexCondition(
          referenceSearchParameters,
          referenceSearchParameters.id,
          _referenceCondition(resourceType, name, value),
        );
      case 'number':
        final (prefix, rest) = splitComparator(declared, value);
        final condition = _numberCondition(resourceType, name, prefix, rest);
        if (condition == null) return null;
        return _IndexCondition(
          numberSearchParameters,
          numberSearchParameters.id,
          condition,
        );
      case 'quantity':
        final (prefix, rest) = splitComparator(declared, value);
        final condition = _quantityCondition(resourceType, name, prefix, rest);
        if (condition == null) return null;
        return _IndexCondition(
          quantitySearchParameters,
          quantitySearchParameters.id,
          condition,
        );
      case 'uri':
        return _IndexCondition(
          uriSearchParameters,
          uriSearchParameters.id,
          _uriCondition(resourceType, name, value),
        );
      case 'string':
        return _IndexCondition(
          stringSearchParameters,
          stringSearchParameters.id,
          _stringCondition(resourceType, name, value),
        );
      case 'date':
        final (prefix, rest) = splitComparator(declared, value);
        final condition = _dateCondition(resourceType, name, prefix, rest);
        if (condition == null) return null;
        return _IndexCondition(
          dateSearchParameters,
          dateSearchParameters.id,
          condition,
        );
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

        if (paramName == '_tag') {
          final tagIds =
              await _searchTagParameter(resourceTypeString, paramValues);
          if (firstParam) {
            matchingIds = tagIds;
          } else {
            matchingIds = matchingIds.intersection(tagIds);
          }
          firstParam = false;
          continue;
        }

        if (paramName == '_profile') {
          final profileIds =
              await _searchProfileParameter(resourceTypeString, paramValues);
          if (firstParam) {
            matchingIds = profileIds;
          } else {
            matchingIds = matchingIds.intersection(profileIds);
          }
          firstParam = false;
          continue;
        }

        if (paramName == '_security') {
          final securityIds =
              await _searchSecurityParameter(resourceTypeString, paramValues);
          if (firstParam) {
            matchingIds = securityIds;
          } else {
            matchingIds = matchingIds.intersection(securityIds);
          }
          firstParam = false;
          continue;
        }

        if (paramName == '_source') {
          final sourceIds =
              await _searchSourceParameter(resourceTypeString, paramValues);
          if (firstParam) {
            matchingIds = sourceIds;
          } else {
            matchingIds = matchingIds.intersection(sourceIds);
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
    String value,
  ) {
    final normalized = normalizeSearchString(unescapeValue(value)).trim();
    return stringSearchParameters.resourceType.equals(resourceType) &
        (stringSearchParameters.searchName.equals(searchPath) |
            stringSearchParameters.searchPath
                .like('$resourceType.$searchPath') |
            stringSearchParameters.searchPath
                .like('$resourceType.%.$searchPath')) &
        stringSearchParameters.stringValue.like('$normalized%');
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
    String searchValue,
  ) {
    String? system;
    var tokenValue = searchValue;

    if (searchValue.contains('|')) {
      final parts = splitEscaped(searchValue, '|');
      if (parts.length == 2) {
        system = parts[0].isEmpty ? null : parts[0];
        tokenValue = parts[1];
      }
    }

    var whereCondition = tokenSearchParameters.resourceType
            .equals(resourceType) &
        (tokenSearchParameters.searchName.equals(searchPath) |
            tokenSearchParameters.searchPath.like('$resourceType.$searchPath') |
            tokenSearchParameters.searchPath
                .like('$resourceType.%.$searchPath'));

    if (system != null && system.isNotEmpty && tokenValue.isNotEmpty) {
      whereCondition = whereCondition &
          tokenSearchParameters.tokenSystem.equals(system) &
          tokenSearchParameters.tokenValue.equals(tokenValue);
    } else if (system != null && system.isNotEmpty) {
      whereCondition =
          whereCondition & tokenSearchParameters.tokenSystem.equals(system);
    } else if (tokenValue.isNotEmpty) {
      whereCondition =
          whereCondition & tokenSearchParameters.tokenValue.equals(tokenValue);
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
    String searchValue,
  ) {
    final range = searchDateRange(searchValue);
    if (range == null) {
      return null;
    }
    return dateSearchParameters.resourceType.equals(resourceType) &
        (dateSearchParameters.searchName.equals(searchPath) |
            dateSearchParameters.searchPath.like('$resourceType.$searchPath') |
            dateSearchParameters.searchPath
                .like('$resourceType.%.$searchPath')) &
        _dateRangeCondition(
          low: dateSearchParameters.dateValue,
          high: dateSearchParameters.dateValueEnd,
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
  Expression<bool>? _lastUpdatedCondition(String? prefix, String value) {
    final range = searchDateRange(value);
    if (range == null) {
      return null;
    }
    // last_updated is integer milliseconds; the range comparison is written
    // over DateTime expressions, so the point is lifted to one. SQLite
    // stores a Drift DateTime as whole seconds, hence the division.
    final instant =
        resources.lastUpdated.dartCast<double>() / const Constant(1000);
    final low = instant.dartCast<DateTime>();
    final high = (instant + const Constant(1)).dartCast<DateTime>();
    return _dateRangeCondition(
      low: low,
      high: high,
      prefix: prefix,
      search: range,
    );
  }

  Future<Set<String>> _searchTagParameter(
    String resourceType,
    List<String> values,
  ) async {
    final matchingIds = <String>{};
    final allResources = await (select(resources)
          ..where((tbl) => tbl.resourceType.equals(resourceType)))
        .get();

    for (final row in allResources) {
      try {
        final resourceJson = jsonDecode(row.resource) as Map<String, dynamic>;
        final meta = resourceJson['meta'] as Map<String, dynamic>?;
        if (meta == null) continue;
        final tags = meta['tag'] as List<dynamic>?;
        if (tags == null || tags.isEmpty) continue;

        var matches = false;
        for (final value in values) {
          final parts = splitEscaped(value, '|');
          final searchSystem = parts.length > 1 ? parts[0] : null;
          final searchCode = parts.length > 1 ? parts[1] : parts[0];
          for (final tag in tags) {
            final tagMap = tag as Map<String, dynamic>;
            final system = tagMap['system'] as String?;
            final code = tagMap['code'] as String?;
            if (searchSystem != null) {
              if (system == searchSystem && code == searchCode) {
                matches = true;
                break;
              }
            } else {
              if (code == searchCode) {
                matches = true;
                break;
              }
            }
          }
          if (matches) break;
        }
        if (matches) matchingIds.add(row.id);
      } catch (_) {
        continue;
      }
    }
    return matchingIds;
  }

  Future<Set<String>> _searchProfileParameter(
    String resourceType,
    List<String> values,
  ) async {
    final matchingIds = <String>{};
    final allResources = await (select(resources)
          ..where((tbl) => tbl.resourceType.equals(resourceType)))
        .get();

    for (final row in allResources) {
      try {
        final resourceJson = jsonDecode(row.resource) as Map<String, dynamic>;
        final meta = resourceJson['meta'] as Map<String, dynamic>?;
        if (meta == null) continue;
        final profiles = meta['profile'] as List<dynamic>?;
        if (profiles == null || profiles.isEmpty) continue;

        for (final value in values) {
          for (final profile in profiles) {
            final profileUri = profile is String ? profile : profile.toString();
            if (profileUri == value || profileUri.contains(value)) {
              matchingIds.add(row.id);
              break;
            }
          }
        }
      } catch (_) {
        continue;
      }
    }
    return matchingIds;
  }

  Future<Set<String>> _searchSecurityParameter(
    String resourceType,
    List<String> values,
  ) async {
    final matchingIds = <String>{};
    final allResources = await (select(resources)
          ..where((tbl) => tbl.resourceType.equals(resourceType)))
        .get();

    for (final row in allResources) {
      try {
        final resourceJson = jsonDecode(row.resource) as Map<String, dynamic>;
        final meta = resourceJson['meta'] as Map<String, dynamic>?;
        if (meta == null) continue;
        final securities = meta['security'] as List<dynamic>?;
        if (securities == null || securities.isEmpty) continue;

        var matches = false;
        for (final value in values) {
          final parts = splitEscaped(value, '|');
          final searchSystem = parts.length > 1 ? parts[0] : null;
          final searchCode = parts.length > 1 ? parts[1] : parts[0];
          for (final security in securities) {
            final securityMap = security as Map<String, dynamic>;
            final system = securityMap['system'] as String?;
            final code = securityMap['code'] as String?;
            if (searchSystem != null) {
              if (system == searchSystem && code == searchCode) {
                matches = true;
                break;
              }
            } else {
              if (code == searchCode) {
                matches = true;
                break;
              }
            }
          }
          if (matches) break;
        }
        if (matches) matchingIds.add(row.id);
      } catch (_) {
        continue;
      }
    }
    return matchingIds;
  }

  Future<Set<String>> _searchSourceParameter(
    String resourceType,
    List<String> values,
  ) async {
    final matchingIds = <String>{};
    final allResources = await (select(resources)
          ..where((tbl) => tbl.resourceType.equals(resourceType)))
        .get();

    for (final row in allResources) {
      try {
        final resourceJson = jsonDecode(row.resource) as Map<String, dynamic>;
        final meta = resourceJson['meta'] as Map<String, dynamic>?;
        if (meta == null) continue;
        final source = meta['source'] as String?;
        if (source == null) continue;
        for (final value in values) {
          if (source == value || source.contains(value)) {
            matchingIds.add(row.id);
            break;
          }
        }
      } catch (_) {
        continue;
      }
    }
    return matchingIds;
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
    String searchValue,
  ) {
    final numValue = double.tryParse(searchValue);
    if (numValue == null) {
      return null;
    }

    final whereCondition =
        numberSearchParameters.resourceType.equals(resourceType) &
            (numberSearchParameters.searchName.equals(searchPath) |
                numberSearchParameters.searchPath
                    .like('$resourceType.$searchPath') |
                numberSearchParameters.searchPath
                    .like('$resourceType.%.$searchPath'));

    return whereCondition &
        _numericPrefixCondition(
          numberSearchParameters.numberValue,
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
    String searchValue,
  ) {
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
    var whereCondition =
        quantitySearchParameters.resourceType.equals(resourceType) &
            (quantitySearchParameters.searchName.equals(searchPath) |
                quantitySearchParameters.searchPath
                    .like('$resourceType.$searchPath') |
                quantitySearchParameters.searchPath
                    .like('$resourceType.%.$searchPath'));

    if (system != null) {
      // System given: "a precise match is desired", on system and code.
      whereCondition = whereCondition &
          quantitySearchParameters.quantitySystem.equals(system);
      if (code != null) {
        whereCondition =
            whereCondition & quantitySearchParameters.quantityCode.equals(code);
      }
    } else if (code != null) {
      // `5.4||mg`: "either the code (code) or the stated human unit (unit)".
      whereCondition = whereCondition &
          (quantitySearchParameters.quantityCode.equals(code) |
              quantitySearchParameters.quantityUnit.equals(code));
    }

    return whereCondition &
        _numericPrefixCondition(
          quantitySearchParameters.quantityValue,
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
    String value,
  ) =>
      uriSearchParameters.resourceType.equals(resourceType) &
      (uriSearchParameters.searchName.equals(searchPath) |
          uriSearchParameters.searchPath.like('$resourceType.$searchPath') |
          uriSearchParameters.searchPath.like('$resourceType.%.$searchPath')) &
      uriSearchParameters.uriValue.equals(unescapeValue(value));

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
    String value,
  ) {
    var where = referenceSearchParameters.resourceType.equals(resourceType) &
        (referenceSearchParameters.searchName.equals(searchPath) |
            referenceSearchParameters.searchPath
                .like('$resourceType.$searchPath') |
            referenceSearchParameters.searchPath
                .like('$resourceType.%.$searchPath'));
    final parts = value.split('/');
    if (parts.length == 2) {
      where = where &
          referenceSearchParameters.referenceResourceType.equals(parts[0]) &
          referenceSearchParameters.referenceIdPart.equals(parts[1]);
    } else {
      where = where & referenceSearchParameters.referenceIdPart.equals(value);
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

        if (value.contains('/')) {
          final parts = value.split('/');
          if (parts.length == 2) {
            whereCondition = whereCondition &
                referenceSearchParameters.referenceResourceType
                    .equals(parts[0]) &
                referenceSearchParameters.referenceIdPart.equals(parts[1]);
          }
        } else {
          whereCondition = whereCondition &
              referenceSearchParameters.referenceIdPart.equals(value);
        }

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

  Future<void> _sortResults(
    List<fhir.Resource> results,
    List<String> sort,
    String resourceType,
  ) async {
    // Pre-fetch sort values from search parameter tables for each sort field.
    // Maps: sortField -> (resourceId -> sortValue)
    final sortMaps = <String, Map<String, String>>{};

    for (final sortParam in sort) {
      final field =
          sortParam.startsWith('-') ? sortParam.substring(1) : sortParam;
      if (field == '_id' || field == '_lastUpdated') continue;

      final ids = results.map((r) => r.id?.toString() ?? '').toSet();
      if (ids.isEmpty) continue;

      final valueMap = await _getSortValues(resourceType, field, ids);
      sortMaps[field] = valueMap;
    }

    results.sort((a, b) {
      for (final sortParam in sort) {
        final descending = sortParam.startsWith('-');
        final field = descending ? sortParam.substring(1) : sortParam;

        var comparison = 0;
        if (field == '_id') {
          comparison = (a.id?.toString() ?? '').compareTo(
            b.id?.toString() ?? '',
          );
        } else if (field == '_lastUpdated') {
          final aDate = a.meta?.lastUpdated?.valueDateTime ?? DateTime(1970);
          final bDate = b.meta?.lastUpdated?.valueDateTime ?? DateTime(1970);
          comparison = aDate.compareTo(bDate);
        } else {
          final valueMap = sortMaps[field];
          if (valueMap != null) {
            final aVal = valueMap[a.id?.toString() ?? ''];
            final bVal = valueMap[b.id?.toString() ?? ''];
            if (aVal == null && bVal == null) {
              comparison = 0;
            } else if (aVal == null) {
              comparison = 1; // nulls sort last
            } else if (bVal == null) {
              comparison = -1;
            } else {
              comparison = aVal.compareTo(bVal);
            }
          }
        }

        if (comparison != 0) {
          return descending ? -comparison : comparison;
        }
      }
      return 0;
    });
  }

  /// Look up sort values for a search parameter from the indexed tables.
  /// Returns a map of resourceId -> sortable string value.
  Future<Map<String, String>> _getSortValues(
    String resourceType,
    String paramName,
    Set<String> ids,
  ) async {
    final idList = ids.toList();

    // Try string search parameters (covers name, family, given, etc.)
    final stringRows = await (select(stringSearchParameters)
          ..where(
            (tbl) =>
                tbl.resourceType.equals(resourceType) &
                tbl.id.isIn(idList) &
                (tbl.searchName.equals(paramName) |
                    tbl.searchPath.equals(paramName)) &
                tbl.paramIndex.equals(0),
          ))
        .get();
    if (stringRows.isNotEmpty) {
      return {for (final r in stringRows) r.id: r.stringValue};
    }

    // Try date search parameters (covers birthdate, date, etc.)
    final dateRows = await (select(dateSearchParameters)
          ..where(
            (tbl) =>
                tbl.resourceType.equals(resourceType) &
                tbl.id.isIn(idList) &
                (tbl.searchName.equals(paramName) |
                    tbl.searchPath.equals(paramName)) &
                tbl.paramIndex.equals(0),
          ))
        .get();
    if (dateRows.isNotEmpty) {
      // Sorted as strings by the caller, so the number is zero-padded to a
      // fixed width (13 digits of milliseconds reach the year 2286). A row
      // with no lower bound is before any date and sorts first.
      return {
        for (final r in dateRows)
          r.id: r.dateValue == null
              ? ''
              : r.dateValue!.millisecondsSinceEpoch.toString().padLeft(15, '0'),
      };
    }

    // Try token search parameters (covers status, code, etc.)
    final tokenRows = await (select(tokenSearchParameters)
          ..where(
            (tbl) =>
                tbl.resourceType.equals(resourceType) &
                tbl.id.isIn(idList) &
                (tbl.searchName.equals(paramName) |
                    tbl.searchPath.equals(paramName)) &
                tbl.paramIndex.equals(0),
          ))
        .get();
    if (tokenRows.isNotEmpty) {
      return {for (final r in tokenRows) r.id: r.tokenValue};
    }

    // Try number search parameters
    final numberRows = await (select(numberSearchParameters)
          ..where(
            (tbl) =>
                tbl.resourceType.equals(resourceType) &
                tbl.id.isIn(idList) &
                (tbl.searchName.equals(paramName) |
                    tbl.searchPath.equals(paramName)) &
                tbl.paramIndex.equals(0),
          ))
        .get();
    if (numberRows.isNotEmpty) {
      return {for (final r in numberRows) r.id: r.numberValue.toString()};
    }

    // Try quantity search parameters
    final quantityRows = await (select(quantitySearchParameters)
          ..where(
            (tbl) =>
                tbl.resourceType.equals(resourceType) &
                tbl.id.isIn(idList) &
                (tbl.searchName.equals(paramName) |
                    tbl.searchPath.equals(paramName)) &
                tbl.paramIndex.equals(0),
          ))
        .get();
    if (quantityRows.isNotEmpty) {
      return {
        for (final r in quantityRows) r.id: r.quantityValue.toString(),
      };
    }

    return {};
  }
}

/// One search parameter expressed as a WHERE on its own index table.
class _IndexCondition {
  const _IndexCondition(this.table, this.idColumn, this.condition);

  final TableInfo<Table, dynamic> table;
  final GeneratedColumn<String> idColumn;
  final Expression<bool> condition;
}
