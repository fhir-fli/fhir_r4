import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:collection/collection.dart';
import 'package:path/path.dart' as p;
import 'package:sqflite/sqflite.dart';

import '../../fhir_r4.dart';

class SqlfliteDb {
  factory SqlfliteDb() => _fhirDb;

  SqlfliteDb._internal(); // private constructor

  static final SqlfliteDb _fhirDb = SqlfliteDb._internal();

  bool _initialized = false;
  Completer<void>? _initCompleter;
  Set<R4ResourceType> _types = <R4ResourceType>{};
  Database? _db;

  /// Initializes the database, configures its path, and returns it.
  /// Throws an exception if initialization fails.
  Future<void> init({String? path, String? pw}) async {
    if (!_initialized) {
      await _initDb(path: path, pw: pw);
    }
  }

  /// To initialize the database: configures the path, sets initialized to true,
  /// registers all ResourceTypeAdapters, and assigns the set of all the types
  /// to the variable types.
  Future<void> _initDb({String? path, String? pw}) async {
    try {
      final databasesPath = await getDatabasesPath();
      final dbPath = p.join(path ?? databasesPath, 'fhir.db');
      _db = await openDatabase(dbPath, version: 1, onCreate: _onCreate);
      final List<Map<String, dynamic>> result =
          await _db!.query('types', columns: ['type']);
      _types = result
          .map((e) => Resource.resourceTypeFromString(e['type'] as String)!)
          .toSet();
      _initialized =
          true; // Set initialized to true only after all operations are successful.
    } catch (e) {
      log(e.toString());
      throw Exception('Failed to initialize SqlfliteDb: $e');
    }
  }

  Future<void> _ensureInit({String? path, String? pw}) async {
    if (_initialized) {
      return;
    }
    if (_initCompleter == null) {
      _initCompleter = Completer<void>();
      try {
        await _initDb(path: path, pw: pw);
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

  Future<void> _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE types (
        id INTEGER PRIMARY KEY,
        type TEXT
      )
    ''');
    await db.execute('''
      CREATE TABLE resources (
        id TEXT PRIMARY KEY,
        resourceType TEXT,
        resource TEXT
      )
    ''');
    await db.execute('''
      CREATE TABLE history (
        id TEXT PRIMARY KEY,
        resourceType TEXT,
        resource TEXT,
        versionId TEXT
      )
    ''');
  }

  Future<bool> _addType({
    required R4ResourceType resourceType,
    String? pw,
  }) async {
    if (!_types.add(resourceType)) {
      return true; // No need to update if already exists.
    }

    await _ensureInit(pw: pw);
    try {
      await _db!.insert(
          'types', {'type': Resource.resourceTypeToString(resourceType)});
      return true;
    } catch (e) {
      log('Error adding type: $e');
      return false;
    }
  }

  Future<Resource> save({
    Resource? resource,
    String? pw,
  }) async {
    if (resource == null) {
      throw const FormatException('Resource cannot be null');
    }
    if (resource.resourceType == null) {
      throw const FormatException('ResourceType cannot be null');
    }

    await _ensureInit(pw: pw);
    final bool exists = resource.id != null &&
        await this.exists(
          resourceType: resource.resourceType!,
          id: resource.id!,
          pw: pw,
        );

    return exists ? await _update(resource, pw) : await _insert(resource, pw);
  }

  Future<Resource> _insert(
    Resource resource,
    String? pw,
  ) async {
    final Resource newResource =
        resource.newIdIfNoId().updateVersion(oldMeta: resource.meta);
    await _db!.insert('resources', {
      'id': newResource.id,
      'resourceType': Resource.resourceTypeToString(newResource.resourceType!),
      'resource': jsonEncode(newResource.toJson())
    });
    await _addType(resourceType: newResource.resourceType!, pw: pw);
    return newResource;
  }

  Future<Resource> _update(
    Resource resource,
    String? pw,
  ) async {
    if (resource.id != null) {
      final Resource? oldResource = await get(
        resourceType: resource.resourceType!,
        id: resource.id!,
        pw: pw,
      );
      if (oldResource != null) {
        await _saveHistory(resource: oldResource.toJson(), pw: pw);
        final FhirMeta? oldMeta = oldResource.meta;
        final Resource newResource = resource.updateVersion(oldMeta: oldMeta);
        await _db!.update(
            'resources',
            {
              'id': newResource.id,
              'resourceType':
                  Resource.resourceTypeToString(newResource.resourceType!),
              'resource': jsonEncode(newResource.toJson())
            },
            where: 'id = ?',
            whereArgs: [newResource.id]);
        return newResource;
      } else {
        return _insert(resource, pw);
      }
    } else {
      return _insert(resource, pw);
    }
  }

  Future<void> _saveHistory({
    required Map<String, dynamic> resource,
    String? pw,
  }) async {
    try {
      await _db!.insert('history', {
        'id': resource['id'],
        'resourceType': resource['resourceType'],
        'resource': jsonEncode(resource),
        'versionId': resource['meta']['versionId']
      });
    } catch (e, s) {
      log('Error saving history: $e, Stack at time of Error: $s');
    }
  }

  Future<bool> exists({
    required R4ResourceType resourceType,
    required String id,
    String? pw,
  }) async {
    await _ensureInit(pw: pw);
    final List<Map<String, dynamic>> result = await _db!.query('resources',
        where: 'resourceType = ? AND id = ?',
        whereArgs: [Resource.resourceTypeToString(resourceType), id]);
    return result.isNotEmpty;
  }

  Future<Resource?> get({
    required R4ResourceType resourceType,
    required String id,
    String? pw,
  }) async {
    await _ensureInit(pw: pw);
    final List<Map<String, dynamic>> result = await _db!.query('resources',
        where: 'resourceType = ? AND id = ?',
        whereArgs: [Resource.resourceTypeToString(resourceType), id]);

    if (result.isEmpty) {
      return null;
    }

    return Resource.fromJson(
        jsonDecode(result.first['resource'] as String) as Map<String, dynamic>);
  }

  Future<bool> delete({
    Resource? resource,
    R4ResourceType? resourceType,
    String? id,
    bool Function(Map<String, dynamic>)? finder,
    String? pw,
  }) async {
    if (resource != null &&
        resource.resourceType != null &&
        resource.id != null) {
      return _deleteById(
          resourceType: resource.resourceType!, id: resource.id!, pw: pw);
    } else if (resourceType != null && id != null) {
      return _deleteById(resourceType: resourceType, id: id, pw: pw);
    } else if (resourceType != null && finder != null) {
      return _deleteFromDb(resourceType: resourceType, finder: finder, pw: pw);
    } else {
      throw const FormatException('Must have either: '
          '\n1) a resource with a resourceType'
          '\n2) a resourceType and an Id'
          '\n3) a resourceType, a specific field, and the value of interest');
    }
  }

  Future<bool> _deleteById({
    required R4ResourceType resourceType,
    required String id,
    String? pw,
  }) async {
    await _ensureInit(pw: pw);
    final int count = await _db!.delete('resources',
        where: 'resourceType = ? AND id = ?',
        whereArgs: [Resource.resourceTypeToString(resourceType), id]);
    return count > 0;
  }

  Future<bool> _deleteFromDb({
    required R4ResourceType resourceType,
    required bool Function(Map<String, dynamic>) finder,
    String? pw,
  }) async {
    await _ensureInit(pw: pw);
    final List<Map<String, dynamic>> result = await _db!.query('resources',
        where: 'resourceType = ?',
        whereArgs: [Resource.resourceTypeToString(resourceType)]);

    final String? resourceId = result.firstWhereOrNull((element) => finder(
        jsonDecode(element['resource'] as String)
            as Map<String, dynamic>))?['id'] as String?;

    if (resourceId != null) {
      await _deleteById(resourceType: resourceType, id: resourceId, pw: pw);
      return true;
    }

    return false;
  }

  Future<void> deleteDatabase({String? path, String? pw}) async {
    final databasesPath = await getDatabasesPath();
    final dbPath = p.join(path ?? databasesPath, 'fhir.db');
    await databaseFactory.deleteDatabase(dbPath);
    _initialized = false;
    _initCompleter = null;
  }

  Future<List<Resource>> getActiveResourcesOfType({
    List<R4ResourceType>? resourceTypes,
    List<String>? resourceTypeStrings,
    Resource? resource,
    String? pw,
  }) async {
    await _ensureInit(pw: pw);
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
      final List<Map<String, dynamic>> result = await _db!.query('resources',
          where: 'resourceType = ?',
          whereArgs: [Resource.resourceTypeToString(resourceType)]);

      resourceList.addAll(result
          .map((e) => Resource.fromJson(
              jsonDecode(e['resource'] as String) as Map<String, dynamic>))
          .toList());
    }
    return resourceList;
  }

  Future<List<Resource>> getAllActiveResources({
    String? pw,
  }) async =>
      getActiveResourcesOfType(resourceTypes: _types.toList(), pw: pw);

  Future<List<Resource>> search({
    required R4ResourceType resourceType,
    required bool Function(Map<String, dynamic>) finder,
    String? pw,
  }) async {
    await _ensureInit(pw: pw);
    final List<Map<String, dynamic>> result = await _db!.query('resources',
        where: 'resourceType = ?',
        whereArgs: [Resource.resourceTypeToString(resourceType)]);

    return result
        .where((element) => finder(
            jsonDecode(element['resource'] as String) as Map<String, dynamic>))
        .map((e) => Resource.fromJson(
            jsonDecode(e['resource'] as String) as Map<String, dynamic>))
        .toList();
  }

  /// ************************************************************************
  /// These methods are for closing the database, usually not needed and mostly for
  /// debugging purposes
  /// ************************************************************************
  Future<void> closeDatabase() async {
    await _db?.close();
  }
}
