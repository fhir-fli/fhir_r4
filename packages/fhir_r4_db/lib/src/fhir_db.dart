import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:collection/collection.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_db/fhir_r4_db.dart';
import 'package:hive_ce/hive.dart';
import 'package:rxdart/rxdart.dart';

/// This class is a singleton that manages the local database for FHIR
/// resources.
class FhirDb {
  /// The singleton instance of the FhirDb.
  factory FhirDb() => _fhirDb;

  FhirDb._internal(); // private constructor

  static final FhirDb _fhirDb = FhirDb._internal();

  bool _initialized = false;
  Completer<void>? _initCompleter;
  Set<R4ResourceType> _types = <R4ResourceType>{};

  /// Set to true if you want to store resources for sync
  bool storeForSync = false;

  /// Set to true if you want to store versionId as time
  bool versionIdAsTime = false;

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
    final cipher = cipherFromKey(key: pw);
    try {
      Hive.init(path ?? '.');
      final typesBox =
          await Hive.openBox<List<String>>('types', encryptionCipher: cipher);
      _types = typesBox
              .get('types')
              ?.map((String e) => Resource.resourceTypeFromString(e)!)
              .toSet() ??
          <R4ResourceType>{};
      await Hive.openBox<Map<dynamic, dynamic>>(
        'sync',
        encryptionCipher: cipher,
      );
      // Set initialized to true only after all operations are successful.
      _initialized = true;
    } catch (e) {
      log(e.toString());
      throw Exception('Failed to initialize FhirDb: $e');
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

  /// This function is used to update the cipher of the database. It will
  Future<void> updateCipher({
    String? path,
    String? oldPw,
    String? newPw,
  }) async {
    if (cipherFromKey(key: oldPw) == cipherFromKey(key: newPw)) {
      return;
    }
    try {
      await _ensureInit(pw: oldPw);
      final typesBox = await Hive.openBox<List<String>>(
        'types',
        encryptionCipher: cipherFromKey(key: oldPw),
      );

      final types = typesBox.get('types') ?? <String>[];
      try {
        for (final type in [...types, 'sync', 'history']) {
          final oldBox = type == 'history'
              ? await Hive.openBox<Map<String, dynamic>>(
                  type,
                  encryptionCipher: cipherFromKey(key: oldPw),
                )
              : await Hive.openBox<Map<dynamic, dynamic>>(
                  type,
                  encryptionCipher: cipherFromKey(key: oldPw),
                );
          final tempBox = await Hive.openBox<Map<dynamic, dynamic>>(
            'temp',
            encryptionCipher: cipherFromKey(key: newPw),
          );

          try {
            for (final dynamic key in oldBox.keys.toList()) {
              await tempBox.put(key, oldBox.get(key)!);
            }
          } finally {
            await oldBox.deleteFromDisk();
            final newBox = await Hive.openBox<Map<dynamic, dynamic>>(
              type,
              encryptionCipher: cipherFromKey(key: newPw),
            );
            for (final value in tempBox.values) {
              await newBox.put(value['id'], value);
            }
            await tempBox.deleteFromDisk();
            await newBox.close();
          }
        }
      } finally {
        await typesBox.deleteFromDisk();
        await Hive.openBox<List<String>>(
          'types',
          encryptionCipher: cipherFromKey(key: newPw),
        ).then((box) async {
          await box.put('types', types);
          await box.close();
        });
        await Hive.close();
      }
    } catch (e) {
      log(e.toString());
      throw Exception('Failed to update cipher: $e');
    }
  }

  /// This function is used to update the password of the database. It will
  /// update the cipher of the database and then update the password.
  Future<void> updatePw({String? oldPw, String? newPw}) async {
    if (oldPw != newPw) {
      await updateCipher(oldPw: oldPw, newPw: newPw);
    }
  }

  /// This is to get a specific Box
  Future<Box<Map<dynamic, dynamic>>> _getBox({
    required R4ResourceType resourceType,
    String? pw,
  }) async {
    await _ensureInit(pw: pw);
    final HiveCipher? cipher = pw != null ? cipherFromKey(key: pw) : null;
    final resourceTypeString = Resource.resourceTypeToString(resourceType);

    try {
      return Hive.isBoxOpen(resourceTypeString)
          ? Hive.box(resourceTypeString)
          : await Hive.openBox(resourceTypeString, encryptionCipher: cipher);
    } catch (e) {
      log('Error opening box: $e');
      rethrow;
    }
  }

  /// In this case we're adding a type. If it's already included, we just
  /// return true and don't re-add it. Otherwise we enseure db is initialized,
  /// and after we can assume the 'types' box is open, get the Set, update
  /// it, write it back, and return true.
  Future<bool> _addType({
    required R4ResourceType resourceType,
    String? pw,
  }) async {
    if (!_types.add(resourceType)) {
      return true; // No need to update if already exists.
    }

    await _ensureInit(pw: pw);
    final box = await Hive.openBox<List<String>>('types');

    try {
      final currentTypes = box.get('types', defaultValue: <String>[])!
        ..add(Resource.resourceTypeToString(resourceType));
      await box.put('types', currentTypes);
      return true;
    } catch (e) {
      log('Error adding type: $e');
      return false;
    } finally {
      await box.close(); // Ensure the box is always closed.
    }
  }

  /// Saves a [Resource] to the local Db, [cipher] is optional (but after set,
  /// it must always be used everytime), will update the FhirFhirFhirMeta fields
  /// of the [Resource] and adds an id if none is already given.
  Future<Resource> save({
    Resource? resource,
    String? pw,
  }) async {
    if (resource == null) {
      throw const FormatException('Resource cannot be null');
    }

    await _ensureInit(pw: pw);
    final exists = resource.id?.value != null &&
        await this.exists(
          resourceType: resource.resourceType,
          id: resource.id!.value!,
          pw: pw,
        );

    return exists ? await _update(resource, pw) : await _insert(resource, pw);
  }

  /// The built-in bulkSave (called addAll) for Hive only allows automatically
  /// generated, incremented (int) IDs, so this function really just calls the
  /// save function over and over
  Future<bool> saveAll({
    required List<Resource> resources,
    String? pw,
  }) async {
    var success = true;
    for (final resource in resources) {
      try {
        await save(resource: resource, pw: pw);
      } catch (e) {
        log('Error saving resource: $e');
        success =
            false; // Continue saving other resources, but record the failure.
      }
    }
    return success;
  }

  /// This function is used to add a resource to the db, it will check if the
  /// resource already exists and if it does, it will update it instead
  /// (this is the same as the save function, but with a different name)
  /// This function is used to add a resource to the db, it will check if the
  /// resource already exists and if it does, it will update it instead
  /// (this is the same as the save function, but with a different name)
  Future<bool> addAll(
    List<Resource> resources, {
    String? pw,
  }) async =>
      saveAll(resources: resources, pw: pw);

  /// function used to save a new resource in the db
  Future<Resource> _insert(
    Resource resource,
    String? pw,
  ) async {
    final newResource = resource.newIdIfNoId().updateVersion(
          oldMeta: resource.meta,
          versionIdAsTime: versionIdAsTime,
        );
    await _saveToDb(
      resourceType: newResource.resourceType,
      resource: newResource.toJson(),
      pw: pw,
    );
    if (storeForSync) {
      await _saveToSync(resource: newResource.toJson(), pw: pw);
    }
    return newResource;
  }

  /// functions used to update a resource which has already been saved into the
  /// db, will also save the old version
  Future<Resource> _update(
    Resource resource,
    String? pw,
  ) async {
    if (resource.id?.value != null) {
      final oldResource = await get(
        resourceType: resource.resourceType,
        id: resource.id!.value!,
        pw: pw,
      );
      if (oldResource != null) {
        await _saveHistory(
          resource: oldResource.toJson(),
          pw: pw,
        );
        final oldMeta = oldResource.meta;
        final newResource = resource.updateVersion(
          oldMeta: oldMeta,
          versionIdAsTime: versionIdAsTime,
        );
        await _saveToDb(
          resourceType: newResource.resourceType,
          resource: newResource.toJson(),
          pw: pw,
        );
        if (storeForSync) {
          await _saveToSync(resource: newResource.toJson(), pw: pw);
        }
        return newResource;
      } else {
        return _insert(resource, pw);
      }
    } else {
      return _insert(resource, pw);
    }
  }

  Future<bool> _saveToDb({
    required R4ResourceType resourceType,
    required Map<String, dynamic> resource,
    String? pw,
  }) async {
    try {
      final box = await _getBox(resourceType: resourceType, pw: pw);
      await box.put(resource['id'], resource);
      return await _addType(
        resourceType: resourceType,
        pw: pw,
      );
    } catch (e, s) {
      log('Error saving to DB: $e, Stack at time of Error: $s');
      return false;
    }
  }

  Future<bool> _saveHistory({
    required Map<String, dynamic> resource,
    String? pw,
  }) async {
    try {
      final box = Hive.isBoxOpen('history')
          ? Hive.box<Map<String, dynamic>>('history')
          : await Hive.openBox<Map<String, dynamic>>(
              'history',
              encryptionCipher: cipherFromKey(key: pw),
            );

      final historyKey =
          // ignore: avoid_dynamic_calls
          '${resource["resourceType"]}/${resource["id"]}/${resource["meta"]["versionId"]}';
      await box.put(historyKey, resource);
      return true;
    } catch (e, s) {
      log('Error saving history: $e, Stack at time of Error: $s');
      return false;
    }
  }

  /// function used to check if a resource exists in the db
  Future<bool> exists({
    required R4ResourceType resourceType,
    required String id,
    String? pw,
  }) async {
    if (!_types.contains(resourceType)) {
      return false;
    }

    final box = await _getBox(resourceType: resourceType, pw: pw);
    return box.containsKey(id);
  }

  /// function used to get a specific resource from the db
  BehaviorSubject<Resource?> subject({
    required R4ResourceType resourceType,
    String? id,
    String? pw,
  }) {
    final subject = BehaviorSubject<Resource?>();

    _getBox(resourceType: resourceType, pw: pw).then((box) {
      final stream = (id == null) ? box.watch() : box.watch(key: id);
      final subscription = stream.listen(
        (event) {
          if (!event.deleted) {
            subject.add(Resource.fromJson(event.value as Map<String, dynamic>));
          } else {
            subject.add(null); // Emit null to indicate deletion.
          }
        },
        onError: (Object e) {
          subject.addError(e); // Propagate errors.
        },
        onDone:
            subject.close, // Close the BehaviorSubject on stream completion.
      );

      // Ensure the subscription is cancelled when the BehaviorSubject is closed
      subject.onCancel = subscription.cancel;
    }).catchError((Object e) {
      subject
        ..addError(e) // Handle errors from _getBox.
        ..close();
    });

    return subject;
  }

  /// function used to save a new resource in the db
  /// Retrieves a resource from the db based on its type and id.
  Future<Resource?> get({
    required R4ResourceType resourceType,
    required String id,
    String? pw,
  }) async {
    try {
      await _ensureInit(pw: pw);
      final box = await _getBox(resourceType: resourceType, pw: pw);
      final resourceMap = box.get(id);

      if (resourceMap == null) {
        return null;
      }

      return Resource.fromJson(
        jsonDecode(jsonEncode(resourceMap)) as Map<String, dynamic>,
      );
    } catch (e, s) {
      log('Failed to retrieve resource from box. Error: $e, StackTrace: $s');
      return null;
    }
  }

  /// searches for a specific [Resource]. That resource can be defined by
  /// passing a full [Resource] object, you may pass a [resourceType] and [id]
  /// or you can pass a search [field] - since we are dealing with maps, this
  /// should be a list of strings or integers, and this function will walk
  /// through them:
  ///
  /// field = ['name', 'given', 2]
  /// newValue = resource['name'];
  /// newValue = newValue['given'];
  /// newValue = newValue[2];
  /// Refactored for clarity and reduced redundancy
  Future<List<Resource>> find({
    Resource? resource,
    R4ResourceType? resourceType,
    String? id,
    List<Object>? field,
    String? value,
    String? pw,
  }) async {
    if (resource != null) {
      return _searchByResource(resource, pw);
    } else if (resourceType != null && id != null) {
      return _searchById(resourceType, id, pw);
    } else if (resourceType != null && field != null && value != null) {
      return _searchByField(resourceType, field, value, pw);
    } else {
      throw const FormatException(
        'Insufficient parameters provided for search.',
      );
    }
  }

  Future<List<Resource>> _searchByResource(
    Resource resource,
    String? pw,
  ) async {
    final result = await get(
      resourceType: resource.resourceType,
      id: resource.id!.value!,
      pw: pw,
    );
    return result == null ? <Resource>[] : <Resource>[result];
  }

  Future<List<Resource>> _searchById(
    R4ResourceType resourceType,
    String id,
    String? pw,
  ) async {
    final result = await get(
      resourceType: resourceType,
      id: id,
      pw: pw,
    );
    return result == null ? <Resource>[] : <Resource>[result];
  }

  Future<List<Resource>> _searchByField(
    R4ResourceType resourceType,
    List<Object> field,
    String value,
    String? pw,
  ) async {
    bool finder(Map<String, dynamic> finderResource) {
      dynamic result = finderResource;
      for (final key in field) {
        // ignore: avoid_dynamic_calls
        result = result[key];
        if (result == null) {
          return false;
        }
      }
      return result.toString() == value;
    }

    return (await search(resourceType: resourceType, finder: finder, pw: pw))
        .toList();
  }

  /// returns all resources of a specific type
  Future<List<Resource>> getActiveResourcesOfType({
    List<R4ResourceType>? resourceTypes,
    List<String>? resourceTypeStrings,
    Resource? resource,
    String? pw,
  }) async {
    final typeList = <R4ResourceType>{};
    if (resource?.resourceType != null) {
      typeList.add(resource!.resourceType);
    }
    if (resourceTypes != null && resourceTypes.isNotEmpty) {
      typeList.addAll(resourceTypes);
    }
    if (resourceTypeStrings != null) {
      for (final type in resourceTypeStrings) {
        final resourceType = R4ResourceType.fromString(type);
        if (resourceType != null) {
          typeList.add(resourceType);
        }
      }
    }
    final resourceList = <Resource>[];
    await _ensureInit(pw: pw);
    for (final resourceType in typeList) {
      final box = await _getBox(resourceType: resourceType, pw: pw);
      final newResources = box.values
          .map(
            (Map<dynamic, dynamic> e) =>
                jsonDecode(jsonEncode(e)) as Map<String, dynamic>,
          )
          .toList();

      resourceList.addAll(
        newResources.map(Resource.fromJson),
      );
    }
    return resourceList;
  }

  /// returns all resources in the [db], including historical versions
  Future<List<Resource>> getAllActiveResources({
    String? pw,
  }) async =>
      getActiveResourcesOfType(resourceTypes: _types.toList(), pw: pw);

  /// Delete specific resource
  Future<bool> delete({
    Resource? resource,
    R4ResourceType? resourceType,
    String? id,
    bool Function(Map<String, dynamic>)? finder,
    String? pw,
  }) async {
    if (resource != null && resource.id != null) {
      return _deleteById(
        resourceType: resource.resourceType,
        id: resource.id!.value!,
        pw: pw,
      );
    } else if (resourceType != null && id != null) {
      return _deleteById(
        resourceType: resourceType,
        id: id,
        pw: pw,
      );
    } else if (resourceType != null && finder != null) {
      return _deleteFromDb(
        resourceType: resourceType,
        finder: finder,
        pw: pw,
      );
    } else {
      throw const FormatException('Must have either: '
          '\n1) a resource with a resourceType'
          '\n2) a resourceType and an Id'
          '\n3) a resourceType, a specific field, and the value of interest');
    }
  }

  /// pass in a resourceType or a resource, and db will delete all resources of
  /// that type - Note: will NOT delete any _historical stores (must pass in
  /// _history as the type for this to happen)
  Future<bool> deleteSingleType({
    R4ResourceType? resourceType,
    Resource? resource,
    String? pw,
  }) async {
    if (resourceType != null || resource?.resourceType != null) {
      resourceType ??= resource?.resourceType;
      return _deleteSingleType(
        resourceType: resourceType!,
      );
    }
    return false;
  }

  Future<bool> _deleteById({
    required R4ResourceType resourceType,
    required String id,
    String? pw,
  }) async {
    try {
      await _ensureInit(pw: pw);
      final box = await _getBox(
        resourceType: resourceType,
      );
      await box.delete(id);
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<bool> _deleteFromDb({
    required R4ResourceType resourceType,
    required bool Function(Map<String, dynamic>) finder,
    String? pw,
  }) async {
    try {
      await _ensureInit(pw: pw);
      final box = await _getBox(resourceType: resourceType, pw: pw);
      final resourceId = box.values
          .firstWhereOrNull(
            (Map<dynamic, dynamic> element) =>
                finder(Map<String, dynamic>.from(element)),
          )?['id']
          ?.toString();
      if (resourceId != null) {
        await box.delete(resourceId);
      }
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<bool> _deleteSingleType({
    required R4ResourceType resourceType,
    String? pw,
  }) async {
    try {
      await _ensureInit(pw: pw);
      final box = await _getBox(
        resourceType: resourceType,
      );
      await box.clear();
      return true;
    } catch (e) {
      return false;
    }
  }

  /// Deletes all resources, including historical versions
  Future<bool> clear({String? pw}) async => deleteAllResources(pw: pw);

  /// Deletes all resources, including historical versions
  Future<bool> deleteAllResources({String? pw}) async {
    try {
      await _ensureInit(pw: pw);
      for (final type in _types) {
        final box = await _getBox(resourceType: type, pw: pw);
        await box.deleteFromDisk();
      }
      return true;
    } catch (e) {
      return false;
    }
  }

  /// Deletes all resources, including historical versions
  Future<void> deleteDatabase({String? pw}) async {
    await _ensureInit(pw: pw);
    await Hive.deleteFromDisk();
  }

  /// ************************************************************************
  /// The following functions are for searching the database
  /// ************************************************************************
  ///
  /// search: searches for a specific resource in the db
  Future<Iterable<Resource>> search({
    required R4ResourceType resourceType,
    required bool Function(Map<String, dynamic>) finder,
    String? pw,
  }) async {
    await _ensureInit(pw: pw);
    final box = await _getBox(resourceType: resourceType, pw: pw);
    final boxData = box.toMap()
      ..removeWhere(
        (dynamic key, Map<dynamic, dynamic> value) =>
            !finder(Map<String, dynamic>.from(value)),
      );
    return boxData.values
        .map(
          (Map<dynamic, dynamic> e) =>
              jsonDecode(jsonEncode(e)) as Map<String, dynamic>,
        )
        .map(Resource.fromJson)
        .toList();
  }

  /// ************************************************************************
  /// Next section still deals with FHIR resources, but in this case its
  /// going to be used to make local first applications with sync
  /// ************************************************************************

  Future<void> _saveToSync({
    required Map<String, dynamic> resource,
    String? pw,
  }) async {
    await _ensureInit(pw: pw);
    final cipher = cipherFromKey(key: pw);
    try {
      final Box<Object> box;
      if (!Hive.isBoxOpen('sync')) {
        box = await Hive.openBox('sync', encryptionCipher: cipher);
      } else {
        box = Hive.box('sync');
      }
      final key =
          // ignore: avoid_dynamic_calls
          '${resource['resourceType']}/${resource['id']}/${resource['meta']['versionId']}';
      await box.put(key, resource);
    } catch (e) {
      log(e.toString());
    }
  }

  /// function used to get a specific resource from the db
  Future<List<Resource>?> getSync({
    String? pw,
  }) async {
    await _ensureInit(pw: pw);
    final cipher = cipherFromKey(key: pw);
    final Box<Map<dynamic, dynamic>> box;
    if (!Hive.isBoxOpen('sync')) {
      box = await Hive.openBox('sync', encryptionCipher: cipher);
    } else {
      box = Hive.box('sync');
    }
    return box.values
        .map(
          (Map<dynamic, dynamic> e) =>
              jsonDecode(jsonEncode(e)) as Map<String, dynamic>,
        )
        .map(Resource.fromJson)
        .toList();
  }

  /// function used to get a specific resource from the db
  Future<bool> clearSync({
    String? pw,
  }) async {
    await _ensureInit(pw: pw);
    final cipher = cipherFromKey(key: pw);
    try {
      final Box<Object> box;
      if (!Hive.isBoxOpen('sync')) {
        box = await Hive.openBox('sync', encryptionCipher: cipher);
      } else {
        box = Hive.box('sync');
      }
      await box.clear();
      return true;
    } catch (e) {
      return false;
    }
  }

  /// function used to get a specific resource from the db
  BehaviorSubject<Resource?> listenSync({
    String? pw,
  }) {
    final subject = BehaviorSubject<Resource?>();
    final box = Hive.box<Map<dynamic, dynamic>>('sync');

    final stream = box.watch();
    final subscription = stream.listen(
      (event) {
        if (!event.deleted) {
          subject.add(Resource.fromJson(event.value as Map<String, dynamic>));
        } else {
          subject.add(null); // Emit null to indicate deletion.
        }
      },
      onError: (Object e) {
        subject.addError(e); // Propagate errors.
      },
      onDone: subject.close, // Close the BehaviorSubject on stream completion.
    );

    // Ensure the subscription is cancelled when the BehaviorSubject is closed.
    subject.onCancel = subscription.cancel;

    return subject;
  }

  /// ************************************************************************
  /// Special Box for CanonicalResources functions as a simple Key:Value store
  /// ************************************************************************

  /// Checks if the key passed is stored in the cache
  Future<bool> containsCanonicalKey({required String key, String? pw}) async {
    await _ensureInit(pw: pw);
    final cipher = cipherFromKey(key: pw);
    try {
      final Box<Map<String, dynamic>> box;
      if (!Hive.isBoxOpen('canonical_resources')) {
        box = await Hive.openBox<Map<String, dynamic>>(
          'canonical_resources',
          encryptionCipher: cipher,
        );
      } else {
        box = Hive.box('canonical_resources');
      }
      return box.containsKey(key);
    } catch (e) {
      log('Failed to save canonical resource: $e');
      rethrow;
    }
  }

  /// Checks if the key passed is stored in the cache
  Future<List<String>> listCanonicalKeys({String? pw}) async {
    await _ensureInit(pw: pw);
    final cipher = cipherFromKey(key: pw);
    try {
      final Box<Map<String, dynamic>> box;
      if (!Hive.isBoxOpen('canonical_resources')) {
        box = await Hive.openBox<Map<String, dynamic>>(
          'canonical_resources',
          encryptionCipher: cipher,
        );
      } else {
        box = Hive.box('canonical_resources');
      }
      return box.keys.toList() as List<String>;
    } catch (e) {
      log('Failed to save canonical resource: $e');
      rethrow;
    }
  }

  /// Retrieves a all Canonical Resources of a type from the database
  Future<List<T>> getAllCanonicalByType<T extends CanonicalResource>({
    required R4ResourceType type,
    String? pw,
  }) async {
    await _ensureInit(pw: pw);
    final cipher = cipherFromKey(key: pw);
    try {
      final Box<Map<String, dynamic>> box;
      if (!Hive.isBoxOpen('canonical_resources')) {
        box = await Hive.openBox<Map<String, dynamic>>(
          'canonical_resources',
          encryptionCipher: cipher,
        );
      } else {
        box = Hive.box('canonical_resources');
      }
      final resourceList = <T>[];
      final newResources = box.values
          .where((value) => value['resourceType'] == type.toString())
          .toList();
      resourceList.addAll(
        newResources.map(CanonicalResource.fromJson) as Iterable<T>,
      );
      return resourceList;
    } catch (e) {
      log('Failed to get canonical resource: $e');
      return <T>[];
    }
  }

  /// Saves a Canonical Resource to the database
  Future<void> saveCanonicalResource({
    required CanonicalResource resource,
    String? pw,
  }) async {
    await _ensureInit(pw: pw);
    final cipher = cipherFromKey(key: pw);
    try {
      final Box<Map<String, dynamic>> box;
      if (!Hive.isBoxOpen('canonical_resources')) {
        box = await Hive.openBox<Map<String, dynamic>>(
          'canonical_resources',
          encryptionCipher: cipher,
        );
      } else {
        box = Hive.box('canonical_resources');
      }
      await box.put(
        resource.url.toString(),
        resource.toJson(),
      );
    } catch (e) {
      log('Failed to save canonical resource: $e');
      rethrow;
    }
  }

  /// Retrieves a Canonical Resource from the database
  Future<CanonicalResource?> getCanonicalResource({
    required String url,
    String? pw,
  }) async {
    await _ensureInit(pw: pw);
    final cipher = cipherFromKey(key: pw);
    try {
      final Box<Map<String, dynamic>> box;
      if (!Hive.isBoxOpen('canonical_resources')) {
        box = await Hive.openBox<Map<String, dynamic>>(
          'canonical_resources',
          encryptionCipher: cipher,
        );
      } else {
        box = Hive.box('canonical_resources');
      }
      final canonicalMap = box.get(url) ??
          (!url.contains('http')
              ? box.get('http://hl7.org/fhir/StructureDefinition/$url')
              : null);

      final resource =
          canonicalMap == null ? null : Resource.fromJson(canonicalMap);
      if (resource is CanonicalResource) {
        return resource;
      }
    } catch (e) {
      log('Failed to get canonical resource: $e');
      return null;
    }
    return null;
  }

  /// ************************************************************************
  /// All of the above has been for FHIR resources and data, below is if you
  /// need to store whatever else as well
  /// ************************************************************************

  Future<int> saveGeneral({
    required Object object,
    int? key,
    String? pw,
  }) async {
    await _ensureInit(pw: pw);
    final cipher = cipherFromKey(key: pw);
    try {
      final Box<Object> box;
      if (!Hive.isBoxOpen('general')) {
        box = await Hive.openBox('general', encryptionCipher: cipher);
      } else {
        box = Hive.box('general');
      }
      if (key == null) {
        return box.add(object);
      } else {
        await box.put(key, object);
        return key;
      }
    } catch (e) {
      return -1;
    }
  }

  /// This function is used to read a specific object from the general store
  Future<Object?> readGeneral({
    required int key,
    String? pw,
  }) async {
    await _ensureInit(pw: pw);
    final cipher = cipherFromKey(key: pw);
    final Box<Object> box;
    if (!Hive.isBoxOpen('general')) {
      box = await Hive.openBox('general', encryptionCipher: cipher);
    } else {
      box = Hive.box('general');
    }
    return box.get(key);
  }

  /// This function is used to read all objects from the general store
  Future<Iterable<Object>> getAllGeneral({
    String? pw,
  }) async {
    await _ensureInit(pw: pw);
    final cipher = cipherFromKey(key: pw);
    final Box<Object> box;
    if (!Hive.isBoxOpen('general')) {
      box = await Hive.openBox('general', encryptionCipher: cipher);
    } else {
      box = Hive.box('general');
    }
    final boxData = box.toMap();
    return boxData.values;
  }

  /// This function is used to search for a specific object in the general store
  Future<Iterable<Object>> searchGeneral({
    required bool Function(Object) finder,
    String? pw,
  }) async {
    await _ensureInit(pw: pw);
    final cipher = cipherFromKey(key: pw);
    final Box<Object> box;
    if (!Hive.isBoxOpen('general')) {
      box = await Hive.openBox('general', encryptionCipher: cipher);
    } else {
      box = Hive.box('general');
    }
    final boxData = box.toMap()
      ..removeWhere((dynamic key, Object value) => !finder(value));
    return boxData.values;
  }

  /// This function is used to update a specific object in the general store
  Future<bool> deletefromGeneral({
    required int key,
    String? pw,
  }) async {
    await _ensureInit(pw: pw);
    final cipher = cipherFromKey(key: pw);
    try {
      final Box<Object> box;
      if (!Hive.isBoxOpen('general')) {
        box = await Hive.openBox('general', encryptionCipher: cipher);
      } else {
        box = Hive.box('general');
      }
      await box.delete(key);
      return true;
    } catch (e) {
      return false;
    }
  }

  /// Deletes everything stored in the general store
  Future<bool> deleteAllGeneral({
    String? pw,
  }) async =>
      clearGeneral(pw: pw);

  /// Deletes everything stored in the general store
  Future<bool> clearGeneral({
    String? pw,
  }) async {
    await _ensureInit(pw: pw);
    final cipher = cipherFromKey(key: pw);
    try {
      final Box<Object> box;
      if (!Hive.isBoxOpen('general')) {
        box = await Hive.openBox('general', encryptionCipher: cipher);
      } else {
        box = Hive.box('general');
      }
      await box.clear();
      return true;
    } catch (e) {
      return false;
    }
  }

  /// ************************************************************************
  /// The following functions are for listening to the database
  BehaviorSubject<dynamic> generalSubject({
    String? pw,
  }) {
    final subject = BehaviorSubject<dynamic>();
    final cipher = cipherFromKey(key: pw);
    _ensureInit(pw: pw).then((_) {
      Hive.openBox<dynamic>('general', encryptionCipher: cipher).then((box) {
        final stream = box.watch();
        final subscription = stream.listen(
          (event) {
            if (!event.deleted) {
              subject.add(event.value);
            } else {
              subject.add(null); // Emit null to indicate deletion.
            }
          },
          onError: (Object e) {
            subject.addError(e); // Propagate errors.
          },
          onDone:
              subject.close, // Close the BehaviorSubject on stream completion.
        );

        // Ensure the subscription is cancelled when the BehaviorSubject
        //is closed.
        subject.onCancel = subscription.cancel;
      }).catchError((Object e) {
        subject
          ..addError(e)
          ..close();
      });
    });
    return subject;
  }

  /// ************************************************************************
  /// These methods are for closing boxes, usually not needed and mostly for
  /// debugging purposes
  /// ************************************************************************
  Future<void> closeAllBoxes() async => Hive.close();

  /// Specify a list of which boxes you want to close
  Future<void> closeResourceBoxes({
    required List<R4ResourceType> types,
    String? pw,
  }) async {
    await _ensureInit(pw: pw);
    for (final resourceType in types) {
      final resourceTypeString = Resource.resourceTypeToString(resourceType);
      if (!Hive.isBoxOpen(resourceTypeString)) {
        await Hive.box<Map<dynamic, dynamic>>(resourceTypeString).close();
      }
    }
  }

  /// Close the history box
  Future<void> closeHistoryBox({
    String? pw,
  }) async {
    await _ensureInit(pw: pw);
    if (Hive.isBoxOpen('history')) {
      await Hive.box<Map<dynamic, dynamic>>('history').close();
    }
  }

  /// Close the general box
  Future<void> closeGeneralBox({
    String? pw,
  }) async {
    await _ensureInit(pw: pw);
    if (Hive.isBoxOpen('general')) {
      await Hive.box<Map<dynamic, dynamic>>('general').close();
    }
  }

  /// Close the types box
  Future<void> closeTypesBox({
    String? pw,
  }) async {
    await _ensureInit(pw: pw);
    if (Hive.isBoxOpen('types')) {
      await Hive.box<Map<dynamic, dynamic>>('types').close();
    }
  }
}
