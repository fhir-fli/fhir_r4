// ignore_for_file: always_specify_types, avoid_dynamic_calls

import 'dart:async';
import 'dart:developer';
import 'package:path_provider/path_provider.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast/sembast_io.dart';
import '../../fhir_r4.dart';

class Sembast {
  factory Sembast() => _fhirDb;

  Sembast._internal(); // private constructor

  static final Sembast _fhirDb = Sembast._internal();

  bool _initialized = false;
  Completer<void>? _initCompleter;
  Set<R4ResourceType> _types = <R4ResourceType>{};
  late Database _db; // Ensuring _db is non-nullable

  /// Initializes the database, configures its path, and returns it.
  /// Throws an exception if initialization fails.
  Future<void> init({String? path}) async {
    if (!_initialized) {
      await _initDb(path: path);
    }
  }

  /// To initialize the database: configures the path, sets initialized to true,
  /// registers all ResourceTypeAdapters, and assigns the set of all the types
  /// to the variable types.
  Future<void> _initDb({String? path}) async {
    try {
      final dir = await getApplicationDocumentsDirectory();
      final dbPath = path ?? '${dir.path}/fhir.db';
      _db = await databaseFactoryIo.openDatabase(dbPath);
      final store = StoreRef.main();
      final typesRecord = await store.record('types').get(_db) as List<String>?;
      _types = typesRecord
              ?.map((e) => Resource.resourceTypeFromString(e)!)
              .toSet() ??
          <R4ResourceType>{};
      _initialized =
          true; // Set initialized to true only after all operations are successful.
    } catch (e) {
      log(e.toString());
      throw Exception('Failed to initialize Sembast: $e');
    }
  }

  Future<void> _ensureInit({String? path}) async {
    if (_initialized) {
      return;
    }
    if (_initCompleter == null) {
      _initCompleter = Completer<void>();
      try {
        await _initDb(path: path);
        _initialized = true;
        _initCompleter?.complete();
      } catch (e) {
        _initCompleter?.completeError(e);
        _initCompleter = null; // Allow retrying after a failure.
        rethrow;
      }
    }

    await _initCompleter
        ?.future; // Wait for completion if initialization is ongoing.
  }

  Future<bool> _addType({
    required R4ResourceType resourceType,
  }) async {
    if (!_types.add(resourceType)) {
      return true; // No need to update if already exists.
    }

    await _ensureInit();
    final store = StoreRef.main();

    try {
      final List<String> currentTypes =
          _types.map((e) => Resource.resourceTypeToString(e)).toList();
      await store.record('types').put(_db, currentTypes);
      return true;
    } catch (e) {
      log('Error adding type: $e');
      return false;
    }
  }

  Future<Resource> save({
    Resource? resource,
  }) async {
    if (resource == null) {
      throw const FormatException('Resource cannot be null');
    }
    if (resource.resourceType == null) {
      throw const FormatException('ResourceType cannot be null');
    }

    await _ensureInit();
    final bool exists = resource.id != null &&
        await this.exists(
          resourceType: resource.resourceType!,
          id: resource.id!,
        );

    return exists ? await _update(resource) : await _insert(resource);
  }

  Future<Resource> _insert(
    Resource resource,
  ) async {
    final Resource newResource =
        resource.newIdIfNoId().updateVersion(oldMeta: resource.meta);
    final store = stringMapStoreFactory
        .store(Resource.resourceTypeToString(newResource.resourceType!));
    await store.record(newResource.id!).put(_db, newResource.toJson());
    await _addType(resourceType: newResource.resourceType!);
    return newResource;
  }

  Future<Resource> _update(
    Resource resource,
  ) async {
    if (resource.id != null) {
      final Resource? oldResource = await get(
        resourceType: resource.resourceType!,
        id: resource.id!,
      );
      if (oldResource != null) {
        await _saveHistory(resource: oldResource.toJson());
        final FhirMeta? oldMeta = oldResource.meta;
        final Resource newResource = resource.updateVersion(oldMeta: oldMeta);
        final store = stringMapStoreFactory
            .store(Resource.resourceTypeToString(newResource.resourceType!));
        await store.record(newResource.id!).put(_db, newResource.toJson());
        return newResource;
      } else {
        return _insert(resource);
      }
    } else {
      return _insert(resource);
    }
  }

  Future<void> _saveHistory({
    required Map<String, dynamic> resource,
  }) async {
    // Save history to a separate store or log as needed
  }

  Future<bool> exists({
    required R4ResourceType resourceType,
    required String id,
  }) async {
    await _ensureInit();
    final store = stringMapStoreFactory
        .store(Resource.resourceTypeToString(resourceType));
    final record = await store.record(id).get(_db);
    return record != null;
  }

  Future<Resource?> get({
    required R4ResourceType resourceType,
    required String id,
  }) async {
    await _ensureInit();
    final store = stringMapStoreFactory
        .store(Resource.resourceTypeToString(resourceType));
    final record = await store.record(id).get(_db);
    if (record == null) {
      return null;
    }
    return Resource.fromJson(record);
  }

  Future<bool> delete({
    Resource? resource,
    R4ResourceType? resourceType,
    String? id,
  }) async {
    if (resource != null &&
        resource.resourceType != null &&
        resource.id != null) {
      return _deleteById(
          resourceType: resource.resourceType!, id: resource.id!);
    } else if (resourceType != null && id != null) {
      return _deleteById(resourceType: resourceType, id: id);
    } else {
      throw const FormatException('Must have either: '
          '\n1) a resource with a resourceType'
          '\n2) a resourceType and an Id');
    }
  }

  Future<bool> _deleteById({
    required R4ResourceType resourceType,
    required String id,
  }) async {
    await _ensureInit();
    final store = stringMapStoreFactory
        .store(Resource.resourceTypeToString(resourceType));
    await store.record(id).delete(_db);
    return true;
  }

  Future<void> deleteDatabase({String? path}) async {
    await _ensureInit();
    await _db.close();
    final dir = await getApplicationDocumentsDirectory();
    final dbPath = path ?? '${dir.path}/fhir.db';
    await databaseFactoryIo.deleteDatabase(dbPath);
    _initialized = false;
    _initCompleter = null;
  }

  Future<List<Resource>> getActiveResourcesOfType({
    List<R4ResourceType>? resourceTypes,
    List<String>? resourceTypeStrings,
    Resource? resource,
  }) async {
    await _ensureInit();
    final Set<R4ResourceType> typeList = <R4ResourceType>{};
    if (resource?.resourceType != null) {
      typeList.add(resource!.resourceType!);
    }
    if (resourceTypes != null && resourceTypes.isNotEmpty) {
      typeList.addAll(resourceTypes);
    }
    if (resourceTypeStrings != null) {
      for (final String type in resourceTypeStrings) {
        final R4ResourceType? resourceType = R4ResourceType.fromString(type);
        if (resourceType != null) {
          typeList.add(resourceType);
        }
      }
    }
    final List<Resource> resourceList = <Resource>[];
    for (final R4ResourceType resourceType in typeList) {
      final store = stringMapStoreFactory
          .store(Resource.resourceTypeToString(resourceType));
      final records = await store.find(_db);
      resourceList
          .addAll(records.map((e) => Resource.fromJson(e.value)).toList());
    }
    return resourceList;
  }

  Future<List<Resource>> getAllActiveResources() async =>
      getActiveResourcesOfType(resourceTypes: _types.toList());

  Future<List<Resource>> search({
    required R4ResourceType resourceType,
    required bool Function(Map<String, dynamic>) finder,
  }) async {
    await _ensureInit();
    final store = stringMapStoreFactory
        .store(Resource.resourceTypeToString(resourceType));
    final records = await store.find(_db);
    return records
        .where((element) => finder(element.value))
        .map((e) => Resource.fromJson(e.value))
        .toList();
  }

  /// ************************************************************************
  /// These methods are for closing the database, usually not needed and mostly for
  /// debugging purposes
  /// ************************************************************************
  Future<void> closeDatabase() async {
    await _db.close();
  }
}
