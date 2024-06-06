// ignore_for_file: always_specify_types, avoid_dynamic_calls

import 'dart:async';
import 'dart:developer';

import 'package:path_provider/path_provider.dart';
import 'package:realm/realm.dart';

import '../../fhir_r4.dart';

class FhirDb {
  factory FhirDb() => _fhirDb;

  FhirDb._internal(); // private constructor

  static final FhirDb _fhirDb = FhirDb._internal();

  bool _initialized = false;
  Completer<void>? _initCompleter;
  Set<R4ResourceType> _types = <R4ResourceType>{};
  late Realm _realm;

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
      final dbPath = path ?? '${dir.path}/fhir.realm';
      final config =
          Configuration.local([Resource.schema, FhirMeta.schema], path: dbPath);
      _realm = Realm(config);
      final types =
          _realm.all<Resource>().map((r) => r.resourceTypeString).toSet();
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
      _realm.write(() {
        _realm.add(Resource(
            id: generateUniqueId(),
            resourceType: Resource.resourceTypeToString(resourceType)));
      });
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
    _realm.write(() {
      _realm.add(newResource);
    });
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
        _realm.write(() {
          _realm.add(newResource, update: true);
        });
        return newResource;
      } else {
        return _insert(resource);
      }
    } else {
      return _insert(resource);
    }
  }

  Future<void> _saveHistory({required Map<String, dynamic> resource}) async {
    final historyResource = Resource.fromJson(resource);
    historyResource.meta?.versionId = generateUniqueId();
    _realm.write(() {
      _realm.add(historyResource);
    });
  }

  Future<bool> exists({
    required R4ResourceType resourceType,
    required String id,
  }) async {
    await _ensureInit();
    return _realm.all<Resource>().any((r) =>
        r.id == id &&
        r.resourceType == Resource.resourceTypeToString(resourceType));
  }

  Future<Resource?> get({
    required R4ResourceType resourceType,
    required String id,
  }) async {
    await _ensureInit();
    return _realm.all<Resource>().firstWhereOrNull((r) =>
        r.id == id &&
        r.resourceType == Resource.resourceTypeToString(resourceType));
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
      _realm.write(() {
        _realm.delete(resource);
      });
      return true;
    }
    return false;
  }

  Future<void> deleteDatabase({String? path}) async {
    await _ensureInit();
    _realm.close();
    final dir = await getApplicationDocumentsDirectory();
    final dbPath = path ?? '${dir.path}/fhir.realm';
    await Realm.deleteRealm(
        Configuration.local([Resource.schema, FhirMeta.schema], path: dbPath));
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
      resourceList.addAll(_realm.all<Resource>().where((r) =>
          r.resourceType == Resource.resourceTypeToString(resourceType)));
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
    final results = _realm.all<Resource>().where((r) =>
        r.resourceType == Resource.resourceTypeToString(resourceType) &&
        finder(r.toJson()));
    return results.toList();
  }

  Future<void> closeDatabase() async {
    _realm.close();
  }
}

class Resource extends RealmObject {
  @PrimaryKey()
  late String id;

  late String resourceType;
  late bool history;

  FhirMeta? meta;

  Resource({
    required this.id,
    required this.resourceType,
    this.meta,
    this.history = false,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['resourceType'] = resourceType;
    if (meta != null) {
      data['meta'] = meta!.toJson();
    }
    data['history'] = history;
    return data;
  }

  static Resource fromJson(Map<String, dynamic> json) {
    final Resource resource = Resource(
      id: json['id'],
      resourceType: json['resourceType'],
    );
    if (json.containsKey('meta')) {
      resource.meta = FhirMeta.fromJson(json['meta']);
    }
    resource.history = json['history'] ?? false;
    return resource;
  }

  Resource newIdIfNoId() {
    if (id.isEmpty) {
      id = generateUniqueId();
    }
    return this;
  }

  Resource updateVersion({FhirMeta? oldMeta}) {
    meta ??= FhirMeta();
    meta!.versionId =
        (int.tryParse(oldMeta?.versionId ?? '0') ?? 0 + 1).toString();
    return this;
  }

  static R4ResourceType resourceTypeFromString(String resourceType) {
    return R4ResourceType.values
        .firstWhere((e) => e.toString() == resourceType);
  }

  static String resourceTypeToString(R4ResourceType resourceType) {
    return resourceType.toString();
  }

  static Schema get schema => RealmObject.getSchema();
}

class FhirMeta extends RealmObject {
  late String versionId;

  Map<String, dynamic> toJson() {
    return {
      'versionId': versionId,
    };
  }

  static FhirMeta fromJson(Map<String, dynamic> json) {
    final FhirMeta meta = FhirMeta();
    meta.versionId = json['versionId'];
    return meta;
  }

  static Schema get schema => RealmObject.getSchema();
}

String generateUniqueId() {
  return DateTime.now().millisecondsSinceEpoch.toString();
}
