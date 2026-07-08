// ignore_for_file: lines_longer_than_80_chars, avoid_print
import 'dart:convert';

import 'package:drift/drift.dart';
import 'package:fhir_r4/fhir_r4.dart' as fhir;
import 'package:fhir_r4_db/fhir_r4_db.dart';

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

    await into(resources).insertOnConflictUpdate(
      ResourcesCompanion(
        resourceType: Value(resource.resourceType.toString()),
        id: Value(newResource.id!.valueString!),
        resource: Value(newResource.toJsonString()),
        lastUpdated: Value(
          newResource.meta!.lastUpdated!.valueDateTime!.millisecondsSinceEpoch,
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
          newResource.meta!.lastUpdated!.valueDateTime!.millisecondsSinceEpoch,
        ),
      ),
    );

    await _updateSearchParameters(newResource);

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
          final ids = paramValues.expand((v) => v.split(',')).toSet();
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
        final paramIds = await _resolveSearchParameter(
          resourceTypeString,
          paramName,
          paramValues,
        );

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

    if (matchingIds.isEmpty) {
      return [];
    }

    // Retrieve matching resources
    final results = <fhir.Resource>[];
    for (final id in matchingIds) {
      final resource = await getResource(resourceType, id);
      if (resource != null) {
        results.add(resource);
      }
    }

    // Apply sorting
    if (sort != null && sort.isNotEmpty) {
      await _sortResults(results, sort, resourceTypeString);
    }

    // Apply pagination
    if (offset != null && offset > 0) {
      results.removeRange(0, offset > results.length ? results.length : offset);
    }
    if (count != null && count > 0 && results.length > count) {
      results.removeRange(count, results.length);
    }

    return results;
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

    final results = await search(
      resourceType: resourceType,
      searchParameters: searchParameters,
      hasParameters: hasParameters,
    );
    return results.length;
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

  Future<bool> _updateSearchParameters(fhir.Resource resource) async {
    try {
      final searchParams = updateSearchParameters(resource);
      await batch((batch) {
        final resourceType = resource.resourceType.toString();
        final id = resource.id!.valueString!;

        // Delete old search parameters
        _deleteSearchParams(batch, resourceType, id);

        // Insert new search parameters
        _insertSearchParams(batch, searchParams);
      });
      return true;
    } catch (e) {
      print('Error updating search parameters: $e');
      return false;
    }
  }

  Future<bool> _updateSearchParametersBulk(
    List<fhir.Resource> resourcesList,
  ) async {
    try {
      final searchParameterLists = SearchParameterLists();
      for (final resource in resourcesList) {
        final searchParams = updateSearchParameters(resource);
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
      return true;
    } catch (e) {
      print('Error updating search parameters in bulk: $e');
      return false;
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

  /// Determine the parameter type and dispatch to the appropriate search method.
  Future<Set<String>> _resolveSearchParameter(
    String resourceType,
    String paramName,
    List<String> paramValues,
  ) async {
    // searchPath is the original HTTP param name (e.g., "monitoring-program-name")
    // The search tables store this in the searchName column alongside the
    // FHIR expression path in searchPath. Queries match on either.
    final searchPath = paramName;

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

    for (final val in paramValues) {
      var valWithoutModifier = val;
      const knownSearchModifiers = [
        'gt',
        'lt',
        'ge',
        'le',
        'ap',
        'sa',
        'eb',
        'missing',
        'exact',
        'contains',
        'text',
        'above',
        'below',
        'not',
        'of-type',
        'in',
        'not-in',
      ];
      String? detectedModifier;
      for (final mod in knownSearchModifiers) {
        if (val.endsWith(':$mod')) {
          valWithoutModifier = val.substring(0, val.length - mod.length - 1);
          detectedModifier = mod;
          break;
        }
      }

      // Check for token or quantity (contains |)
      if (valWithoutModifier.contains('|')) {
        final parts = valWithoutModifier.split('|');
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

      if (detectedModifier != null &&
          const ['gt', 'lt', 'ge', 'le', 'ap', 'sa', 'eb']
              .contains(detectedModifier)) {
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
      return _searchDateParameter(resourceType, searchPath, paramValues);
    } else if (isQuantityParam) {
      return _searchQuantityParameter(resourceType, searchPath, paramValues);
    } else if (isNumberParam) {
      return _searchNumberParameter(resourceType, searchPath, paramValues);
    } else if (isUriParam) {
      return _searchUriParameter(resourceType, searchPath, paramValues);
    } else if (isTokenParam) {
      return _searchTokenParameter(resourceType, searchPath, paramValues);
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
      final stringIds =
          await _searchStringParameter(resourceType, searchPath, paramValues);
      final tokenIds =
          await _searchTokenParameter(resourceType, searchPath, paramValues);
      return stringIds.union(tokenIds);
    }
  }

  // ──────────────────────────────────────────────────────────────────────────
  // Private: Individual search parameter type handlers
  // ──────────────────────────────────────────────────────────────────────────

  Future<Set<String>> _searchStringParameter(
    String resourceType,
    String searchPath,
    List<String> values,
  ) async {
    final matchingIds = <String>{};

    for (final value in values) {
      String? modifier;
      var searchValue = value;

      if (value.contains(':')) {
        final parts = value.split(':');
        if (parts.length == 2) {
          searchValue = parts[0];
          modifier = parts[1];
        }
      }

      final normalizedValue = searchValue.toLowerCase().trim();

      final query = select(stringSearchParameters);
      var whereCondition =
          stringSearchParameters.resourceType.equals(resourceType) &
              (stringSearchParameters.searchName.equals(searchPath) |
                  stringSearchParameters.searchPath
                      .like('$resourceType.$searchPath') |
                  stringSearchParameters.searchPath
                      .like('$resourceType.%.$searchPath'));

      if (modifier == 'exact') {
        whereCondition = whereCondition &
            stringSearchParameters.stringValue.equals(normalizedValue);
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
      final rows = await query.get();
      for (final row in rows) {
        matchingIds.add(row.id);
      }
    }

    return matchingIds;
  }

  Future<Set<String>> _searchTokenParameter(
    String resourceType,
    String searchPath,
    List<String> values,
  ) async {
    final matchingIds = <String>{};

    for (final value in values) {
      String? modifier;
      var searchValue = value;
      const knownTokenModifiers = [
        'missing',
        'not',
        'text',
        'of-type',
        'in',
        'not-in',
      ];
      for (final mod in knownTokenModifiers) {
        if (value.endsWith(':$mod')) {
          modifier = mod;
          searchValue = value.substring(0, value.length - mod.length - 1);
          break;
        }
      }

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
        final pipeParts = searchValue.split('|');
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

  Future<Set<String>> _executeTokenQuery(
    String resourceType,
    String searchPath,
    String searchValue,
  ) async {
    final matchingIds = <String>{};

    String? system;
    var tokenValue = searchValue;

    if (searchValue.contains('|')) {
      final parts = searchValue.split('|');
      if (parts.length == 2) {
        system = parts[0].isEmpty ? null : parts[0];
        tokenValue = parts[1];
      }
    }

    final query = select(tokenSearchParameters);
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

    query.where((tbl) => whereCondition);
    final rows = await query.get();
    for (final row in rows) {
      matchingIds.add(row.id);
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

  Future<Set<String>> _searchDateParameter(
    String resourceType,
    String searchPath,
    List<String> values,
  ) async {
    final matchingIds = <String>{};

    for (final value in values) {
      String? modifier;
      var searchValue = value;

      const dateModifiers = [
        'gt',
        'lt',
        'ge',
        'le',
        'ap',
        'sa',
        'eb',
        'missing',
      ];
      for (final mod in dateModifiers) {
        if (value.startsWith(mod) && mod != 'missing') {
          modifier = mod;
          searchValue = value.substring(mod.length);
          break;
        }
        if (value.endsWith(':$mod')) {
          modifier = mod;
          searchValue = value.substring(0, value.length - mod.length - 1);
          break;
        }
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

      late DateTime searchDate;
      try {
        if (searchValue.contains('T')) {
          searchDate = DateTime.parse(searchValue);
        } else {
          final dateParts = searchValue.split('-');
          if (dateParts.length >= 3) {
            searchDate = DateTime(
              int.parse(dateParts[0]),
              int.parse(dateParts[1]),
              int.parse(dateParts[2]),
            );
          } else if (dateParts.length == 2) {
            searchDate =
                DateTime(int.parse(dateParts[0]), int.parse(dateParts[1]));
          } else if (dateParts.length == 1) {
            searchDate = DateTime(int.parse(dateParts[0]));
          } else {
            continue;
          }
        }
      } catch (_) {
        continue;
      }

      final query = select(dateSearchParameters);
      var whereCondition =
          dateSearchParameters.resourceType.equals(resourceType) &
              (dateSearchParameters.searchName.equals(searchPath) |
                  dateSearchParameters.searchPath
                      .like('$resourceType.$searchPath') |
                  dateSearchParameters.searchPath
                      .like('$resourceType.%.$searchPath'));

      switch (modifier) {
        case 'gt':
          whereCondition = whereCondition &
              dateSearchParameters.dateValue.isBiggerThanValue(searchDate);
        case 'lt':
          whereCondition = whereCondition &
              dateSearchParameters.dateValue.isSmallerThanValue(searchDate);
        case 'ge':
          whereCondition = whereCondition &
              dateSearchParameters.dateValue.isBiggerOrEqualValue(searchDate);
        case 'le':
          whereCondition = whereCondition &
              dateSearchParameters.dateValue.isSmallerOrEqualValue(searchDate);
        case 'sa':
          whereCondition = whereCondition &
              dateSearchParameters.dateValue.isBiggerThanValue(searchDate);
        case 'eb':
          whereCondition = whereCondition &
              dateSearchParameters.dateValue.isSmallerThanValue(searchDate);
        case 'ap':
          final dayBefore = searchDate.subtract(const Duration(days: 1));
          final dayAfter = searchDate.add(const Duration(days: 1));
          whereCondition = whereCondition &
              (dateSearchParameters.dateValue.isBiggerOrEqualValue(dayBefore) &
                  dateSearchParameters.dateValue
                      .isSmallerOrEqualValue(dayAfter));
        default:
          whereCondition = whereCondition &
              dateSearchParameters.dateValue.equals(searchDate);
      }

      query.where((tbl) => whereCondition);
      final rows = await query.get();
      for (final row in rows) {
        matchingIds.add(row.id);
      }
    }

    return matchingIds;
  }

  Future<Set<String>> _searchLastUpdatedParameter(
    String resourceType,
    List<String> values,
  ) async {
    final matchingIds = <String>{};

    for (final value in values) {
      String? modifier;
      var dateValue = value;

      const lastUpdatedModifiers = ['gt', 'lt', 'ge', 'le', 'ap', 'sa', 'eb'];
      for (final mod in lastUpdatedModifiers) {
        // Support both FHIR prefix format (gt2026-01-01) and legacy
        // suffix format (2026-01-01:gt)
        if (value.startsWith(mod)) {
          modifier = mod;
          dateValue = value.substring(mod.length);
          break;
        }
        if (value.endsWith(':$mod')) {
          modifier = mod;
          dateValue = value.substring(0, value.length - mod.length - 1);
          break;
        }
      }

      DateTime? searchDate;
      try {
        if (dateValue.length == 4) {
          searchDate = DateTime(int.parse(dateValue));
        } else if (dateValue.length == 7) {
          final parts = dateValue.split('-');
          searchDate = DateTime(int.parse(parts[0]), int.parse(parts[1]));
        } else if (dateValue.length == 10) {
          final parts = dateValue.split('-');
          searchDate = DateTime(
            int.parse(parts[0]),
            int.parse(parts[1]),
            int.parse(parts[2]),
          );
        } else if (dateValue.contains('T')) {
          searchDate = DateTime.parse(dateValue);
        } else {
          searchDate = DateTime.parse(dateValue);
        }
      } catch (_) {
        continue;
      }

      final searchMillis = searchDate.millisecondsSinceEpoch;

      final query = select(resources);
      var whereCondition = resources.resourceType.equals(resourceType);

      if (modifier == null || modifier.isEmpty) {
        if (dateValue.length <= 10) {
          final startOfDay =
              DateTime(searchDate.year, searchDate.month, searchDate.day);
          final endOfDay = startOfDay.add(const Duration(days: 1));
          whereCondition = whereCondition &
              (resources.lastUpdated.isBiggerOrEqualValue(
                    startOfDay.millisecondsSinceEpoch,
                  ) &
                  resources.lastUpdated.isSmallerThanValue(
                    endOfDay.millisecondsSinceEpoch,
                  ));
        } else {
          whereCondition =
              whereCondition & resources.lastUpdated.equals(searchMillis);
        }
      } else if (modifier == 'gt') {
        whereCondition = whereCondition &
            resources.lastUpdated.isBiggerThanValue(searchMillis);
      } else if (modifier == 'lt') {
        whereCondition = whereCondition &
            resources.lastUpdated.isSmallerThanValue(searchMillis);
      } else if (modifier == 'ge') {
        whereCondition = whereCondition &
            resources.lastUpdated.isBiggerOrEqualValue(searchMillis);
      } else if (modifier == 'le') {
        whereCondition = whereCondition &
            resources.lastUpdated.isSmallerOrEqualValue(searchMillis);
      } else if (modifier == 'ap') {
        final startMillis =
            searchDate.subtract(const Duration(days: 1)).millisecondsSinceEpoch;
        final endMillis =
            searchDate.add(const Duration(days: 1)).millisecondsSinceEpoch;
        whereCondition = whereCondition &
            (resources.lastUpdated.isBiggerOrEqualValue(startMillis) &
                resources.lastUpdated.isSmallerOrEqualValue(endMillis));
      } else if (modifier == 'sa') {
        whereCondition = whereCondition &
            resources.lastUpdated.isBiggerThanValue(searchMillis);
      } else if (modifier == 'eb') {
        whereCondition = whereCondition &
            resources.lastUpdated.isSmallerThanValue(searchMillis);
      } else {
        continue;
      }

      query.where((tbl) => whereCondition);
      final rows = await query.get();
      for (final row in rows) {
        matchingIds.add(row.id);
      }
    }

    return matchingIds;
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
          final parts = value.split('|');
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
          final parts = value.split('|');
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

  Future<Set<String>> _searchNumberParameter(
    String resourceType,
    String searchPath,
    List<String> values,
  ) async {
    final matchingIds = <String>{};
    for (final value in values) {
      String? modifier;
      var searchValue = value;
      const numberModifiers = ['gt', 'lt', 'ge', 'le', 'ap'];
      for (final mod in numberModifiers) {
        if (value.endsWith(':$mod')) {
          modifier = mod;
          searchValue = value.substring(0, value.length - mod.length - 1);
          break;
        }
      }

      double? numValue;
      try {
        numValue = double.parse(searchValue);
      } catch (_) {
        continue;
      }

      final query = select(numberSearchParameters);
      var whereCondition =
          numberSearchParameters.resourceType.equals(resourceType) &
              (numberSearchParameters.searchName.equals(searchPath) |
                  numberSearchParameters.searchPath
                      .like('$resourceType.$searchPath') |
                  numberSearchParameters.searchPath
                      .like('$resourceType.%.$searchPath'));

      switch (modifier) {
        case 'gt':
          whereCondition = whereCondition &
              numberSearchParameters.numberValue.isBiggerThanValue(numValue);
        case 'lt':
          whereCondition = whereCondition &
              numberSearchParameters.numberValue.isSmallerThanValue(numValue);
        case 'ge':
          whereCondition = whereCondition &
              numberSearchParameters.numberValue.isBiggerOrEqualValue(numValue);
        case 'le':
          whereCondition = whereCondition &
              numberSearchParameters.numberValue
                  .isSmallerOrEqualValue(numValue);
        case 'ap':
          final range = numValue.abs() * 0.1;
          whereCondition = whereCondition &
              numberSearchParameters.numberValue
                  .isBiggerOrEqualValue(numValue - range) &
              numberSearchParameters.numberValue
                  .isSmallerOrEqualValue(numValue + range);
        default:
          whereCondition = whereCondition &
              numberSearchParameters.numberValue.equals(numValue);
      }

      query.where((tbl) => whereCondition);
      final rows = await query.get();
      for (final row in rows) {
        matchingIds.add(row.id);
      }
    }
    return matchingIds;
  }

  Future<Set<String>> _searchQuantityParameter(
    String resourceType,
    String searchPath,
    List<String> values,
  ) async {
    final matchingIds = <String>{};
    for (final value in values) {
      String? modifier;
      var searchValue = value;
      const quantityModifiers = ['gt', 'lt', 'ge', 'le', 'ap'];
      for (final mod in quantityModifiers) {
        if (value.endsWith(':$mod')) {
          modifier = mod;
          searchValue = value.substring(0, value.length - mod.length - 1);
          break;
        }
      }

      final parts = searchValue.split('|');
      double? numValue;
      String? system;
      String? code;

      if (parts.length == 3) {
        system = parts[0].isEmpty ? null : parts[0];
        try {
          numValue = double.parse(parts[1]);
        } catch (_) {
          continue;
        }
        code = parts[2].isEmpty ? null : parts[2];
      } else if (parts.length == 2) {
        try {
          numValue = double.parse(parts[0]);
        } catch (_) {
          continue;
        }
        code = parts[1].isEmpty ? null : parts[1];
      } else {
        try {
          numValue = double.parse(parts[0]);
        } catch (_) {
          continue;
        }
      }

      final query = select(quantitySearchParameters);
      var whereCondition =
          quantitySearchParameters.resourceType.equals(resourceType) &
              (quantitySearchParameters.searchPath
                      .like('$resourceType.$searchPath') |
                  quantitySearchParameters.searchPath
                      .like('$resourceType.%.$searchPath'));

      if (system != null) {
        whereCondition = whereCondition &
            quantitySearchParameters.quantitySystem.equals(system);
      }
      if (code != null) {
        whereCondition =
            whereCondition & quantitySearchParameters.quantityCode.equals(code);
      }

      switch (modifier) {
        case 'gt':
          whereCondition = whereCondition &
              quantitySearchParameters.quantityValue
                  .isBiggerThanValue(numValue);
        case 'lt':
          whereCondition = whereCondition &
              quantitySearchParameters.quantityValue
                  .isSmallerThanValue(numValue);
        case 'ge':
          whereCondition = whereCondition &
              quantitySearchParameters.quantityValue
                  .isBiggerOrEqualValue(numValue);
        case 'le':
          whereCondition = whereCondition &
              quantitySearchParameters.quantityValue
                  .isSmallerOrEqualValue(numValue);
        default:
          whereCondition = whereCondition &
              quantitySearchParameters.quantityValue.equals(numValue);
      }

      query.where((tbl) => whereCondition);
      final rows = await query.get();
      for (final row in rows) {
        matchingIds.add(row.id);
      }
    }
    return matchingIds;
  }

  Future<Set<String>> _searchUriParameter(
    String resourceType,
    String searchPath,
    List<String> values,
  ) async {
    final matchingIds = <String>{};
    for (final value in values) {
      // Detect :above / :below modifiers (suffix-based)
      var searchValue = value;
      String? modifier;
      for (final mod in ['above', 'below']) {
        if (value.endsWith(':$mod')) {
          searchValue = value.substring(0, value.length - mod.length - 1);
          modifier = mod;
          break;
        }
      }

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

        final query = select(uriSearchParameters)
          ..where(
            (tbl) =>
                tbl.resourceType.equals(resourceType) &
                pathCondition &
                valueCondition,
          );
        final rows = await query.get();
        for (final row in rows) {
          matchingIds.add(row.id);
        }
      }
    }
    return matchingIds;
  }

  Future<Set<String>> _searchReferenceParameter(
    String resourceType,
    String searchPath,
    List<String> values,
    bool isChained,
  ) async {
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
        final rows = await query.get();
        for (final row in rows) {
          matchingIds.add(row.id);
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
      return {
        for (final r in dateRows)
          r.id: r.dateValue.millisecondsSinceEpoch.toString(),
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
