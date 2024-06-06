import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:floor/floor.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

import '../../fhir_r4.dart';

part 'floor.g.dart';

@Database(version: 1, entities: [ResourceEntity, FhirMetaEntity])
abstract class FhirDatabase extends FloorDatabase {
  FhirDao get fhirDao;
}

class FhirDb {
  factory FhirDb() => _fhirDb;

  FhirDb._internal(); // private constructor

  static final FhirDb _fhirDb = FhirDb._internal();

  bool _initialized = false;
  Completer<void>? _initCompleter;
  Set<R4ResourceType> _types = <R4ResourceType>{};
  late FhirDatabase _database;

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
      final dbPath = path ?? join(dir.path, 'fhir.db');
      _database = await $FloorFhirDatabase.databaseBuilder(dbPath).build();
      final types = await _database.fhirDao.getAllTypes();
      _types = types.map((e) => Resource.resourceTypeFromString(e)!).toSet();
      _initialized =
          true; // Set initialized to true only after all operations are successful.
    } catch (e) {
      log(e.toString());
      throw Exception('Failed to initialize FhirDb: $e');
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
    try {
      await _database.fhirDao.insertType(resourceType.toString());
      return true;
    } catch (e) {
      log('Error adding type: $e');
      return false;
    }
  }

  Future<Resource> save({
    required Resource resource,
  }) async {
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

  Future<Resource> _insert(Resource resource) async {
    final Resource newResource =
        resource.newIdIfNoId().updateVersion(oldMeta: resource.meta);
    await _database.fhirDao
        .insertResource(ResourceEntity.fromResource(newResource));
    await _addType(resourceType: newResource.resourceType!);
    return newResource;
  }

  Future<Resource> _update(Resource resource) async {
    if (resource.id != null) {
      final Resource? oldResource = await get(
        resourceType: resource.resourceType!,
        id: resource.id!,
      );
      if (oldResource != null) {
        await _saveHistory(resource: oldResource.toJson());
        final FhirMeta? oldMeta = oldResource.meta;
        final Resource newResource = resource.updateVersion(oldMeta: oldMeta);
        await _database.fhirDao
            .updateResource(ResourceEntity.fromResource(newResource));
        return newResource;
      } else {
        return _insert(resource);
      }
    } else {
      return _insert(resource);
    }
  }

  Future<void> _saveHistory({required Map<String, dynamic> resource}) async {
    resource['meta']['versionId'] = generateUniqueId();
    final Resource historyResource = Resource.fromJson(resource);
    await _database.fhirDao
        .insertResource(ResourceEntity.fromResource(historyResource));
  }

  Future<bool> exists({
    required R4ResourceType resourceType,
    required String id,
  }) async {
    await _ensureInit();
    final resource =
        await _database.fhirDao.findResourceById(resourceType.toString(), id);
    return resource != null;
  }

  Future<Resource?> get({
    required R4ResourceType resourceType,
    required String id,
  }) async {
    await _ensureInit();
    final resourceEntity =
        await _database.fhirDao.findResourceById(resourceType.toString(), id);
    return resourceEntity?.toResource();
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
    final resource = await get(resourceType: resourceType, id: id);
    if (resource != null) {
      await _database.fhirDao
          .deleteResource(ResourceEntity.fromResource(resource));
      return true;
    }
    return false;
  }

  Future<void> deleteDatabase({String? path}) async {
    await _ensureInit();
    final dir = await getApplicationDocumentsDirectory();
    final dbPath = path ?? join(dir.path, 'fhir.db');
    await sqflite.databaseFactory.deleteDatabase(dbPath);
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
      final resources =
          await _database.fhirDao.findResourcesByType(resourceType.toString());
      resourceList.addAll(resources.map((e) => e.toResource()).toList());
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
    final resources =
        await _database.fhirDao.findResourcesByType(resourceType.toString());
    return resources
        .where((element) => finder(element.toResource().toJson()))
        .map((e) => e.toResource())
        .toList();
  }

  Future<void> closeDatabase() async {
    await _database.close();
  }
}

@Entity(tableName: 'resources')
class ResourceEntity {
  @primaryKey
  final String id;

  final String resourceType;
  final String jsonData;

  ResourceEntity({
    required this.id,
    required this.resourceType,
    required this.jsonData,
  });

  Resource toResource() {
    final json = jsonDecode(jsonData) as Map<String, dynamic>;
    return Resource.fromJson(json);
  }

  static ResourceEntity fromResource(Resource resource) {
    final json = jsonEncode(resource.toJson());
    return ResourceEntity(
      id: resource.id!,
      resourceType: resource.resourceTypeString,
      jsonData: json,
    );
  }
}

@Entity(tableName: 'fhir_meta')
class FhirMetaEntity {
  @primaryKey
  final String id;
  final String versionId;

  FhirMetaEntity({
    required this.id,
    required this.versionId,
  });

  FhirMeta toFhirMeta() {
    return FhirMeta(versionId: FhirId(versionId));
  }

  static FhirMetaEntity fromFhirMeta(FhirMeta meta) {
    return FhirMetaEntity(
      id: generateUniqueId(),
      versionId: meta.versionId!.toString(),
    );
  }
}

@dao
abstract class FhirDao {
  @Query('SELECT * FROM resources WHERE resourceType = :resourceType')
  Future<List<ResourceEntity>> findResourcesByType(String resourceType);

  @Query(
      'SELECT * FROM resources WHERE id = :id AND resourceType = :resourceType')
  Future<ResourceEntity?> findResourceById(String resourceType, String id);

  @insert
  Future<void> insertResource(ResourceEntity resource);

  @update
  Future<void> updateResource(ResourceEntity resource);

  @delete
  Future<void> deleteResource(ResourceEntity resource);

  @Query('SELECT DISTINCT resourceType FROM resources')
  Future<List<String>> getAllTypes();

  @Insert(onConflict: OnConflictStrategy.ignore)
  Future<void> insertType(String resourceType);
}

String generateUniqueId() {
  // Implement a method to generate a unique ID for the resource
  return DateTime.now().millisecondsSinceEpoch.toString();
}
