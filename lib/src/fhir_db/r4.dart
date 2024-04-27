// ignore_for_file: always_specify_types, avoid_dynamic_calls

import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:collection/collection.dart';
import 'package:hive/hive.dart';

import '../../fhir_r4.dart';
import 'cipher_from_key.dart';

class FhirDb {
  factory FhirDb() => _fhirDb;

  FhirDb._internal(); // private constructor

  static final FhirDb _fhirDb = FhirDb._internal();

  bool initialized = false;
  Set<R4ResourceType> _types = <R4ResourceType>{};

  /// Initalizes the database, configure its path, and return it
  Future<void> init({String? path, String? pw}) async {
    await _initDb(path: path, pw: pw);
  }

  /// To initialize the database as a whole. Configure the path, set initialized
  /// to true, register all of the ResourceTypeAdapters, and then assign the
  /// set of all of the types to the variable types
  Future<void> _initDb({String? path, String? pw}) async {
    final HiveAesCipher? cipher = cipherFromKey(key: pw);
    try {
      if (!initialized) {
        Hive.init(path ?? '.');
        initialized = true;
        final Box<List<String>> typesBox =
            await Hive.openBox<List<String>>('types', encryptionCipher: cipher);
        _types = typesBox
                .get('types')
                ?.map((String e) => Resource.resourceTypeFromString(e)!)
                .toSet() ??
            <R4ResourceType>{};
      }
    } catch (e) {
      log(e.toString());
    }
  }

  /// Convenience getter to ensure initialized
  Future<void> _ensureInit({
    String? path,
    String? pw,
  }) async {
    if (!initialized) {
      await _initDb(path: path, pw: pw);
    }
  }

  Future<void> updateCipher({
    String? path,
    String? oldPw,
    String? newPw,
  }) async {
    try {
      final HiveCipher? oldCipher = cipherFromKey(key: oldPw);
      final HiveCipher? newCipher = cipherFromKey(key: newPw);

      /// only change the db if the new password is different from the old one
      if (oldCipher != newCipher) {
        await _ensureInit(pw: oldPw);

        /// The types box contains only a single entry, which is a list of all of the
        /// resource types that have been saved to the database
        final Box<List<String>> typesBox = await Hive.openBox<List<String>>(
            'types',
            encryptionCipher: oldCipher);

        /// get that list of types
        final List<String> types = typesBox.get('types') ?? <String>[];

        _types.map((R4ResourceType e) => e.toString()).toList();

        /// Create a new temporary box to store resources while we are updating the boxes
        /// with a new password
        final Box<Map<dynamic, dynamic>> tempBox =
            await Hive.openBox<Map<dynamic, dynamic>>('temp',
                encryptionCipher: newCipher);

        /// for each type in the list
        for (final String type in types) {
          /// Retrieve all resources currently in the box
          final Box<Map<dynamic, dynamic>> oldBox =
              await Hive.openBox<Map<dynamic, dynamic>>(type,
                  encryptionCipher: oldCipher);

          /// for each map in the box
          for (final Map<dynamic, dynamic> value in oldBox.values) {
            /// Cast map to correct type
            final Map<String, dynamic> newValue =
                jsonDecode(jsonEncode(value)) as Map<String, dynamic>;

            /// convert it to a resource
            final Resource resource = Resource.fromJson(newValue);

            /// Save it in the temporary box as we're changing over to the new password, so
            /// in case something goes wrong, we don't lose the data
            await tempBox.put(resource.id, newValue);
          }

          /// after we have saved all of the resources in the temporary box, we can
          /// delete the old box
          await oldBox.deleteFromDisk();

          /// Create the new box with the new password
          final Box<Map<dynamic, dynamic>> newBox =
              await Hive.openBox<Map<dynamic, dynamic>>(type,
                  encryptionCipher: newCipher);

          /// for each map in the temp box
          for (final Map<dynamic, dynamic> value in tempBox.values) {
            /// Cast map to correct type
            final Map<String, dynamic> newValue =
                Map<String, dynamic>.from(value);

            /// convert it to a resource
            final Resource resource = Resource.fromJson(newValue);

            /// Save it to the new box with the new password
            await newBox.put(resource.id, newValue);
          }

          /// clear everything from the tempBox so we can use it again
          await tempBox.clear();
        }

        /// After we've been through all of the types, delete the tempBox.
        await tempBox.deleteFromDisk();

        /// Delete the typesBox because we need to replace it too using the new password
        await typesBox.deleteFromDisk();

        /// Recreate the types box
        final Box<List<String>> newTypesBox = await Hive.openBox<List<String>>(
            'types',
            encryptionCipher: newCipher);
        await newTypesBox.put('types', types);
        await Hive.close();
      }
    } catch (e) {
      log(e.toString());
    }
  }

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
    final HiveAesCipher? cipher = cipherFromKey(key: pw);
    final String resourceTypeString =
        Resource.resourceTypeToString(resourceType);
    try {
      if (!Hive.isBoxOpen(resourceTypeString)) {
        return Hive.openBox(resourceTypeString, encryptionCipher: cipher);
      } else {
        return Hive.box(resourceTypeString);
      }
    } catch (e) {
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
    try {
      if (_types.contains(resourceType)) {
        return true;
      } else {
        _types.add(resourceType);
        await _ensureInit(pw: pw);
        final Box<List<String>> box = Hive.box<List<String>>('types');
        await box.put(
            'types',
            _types
                .map((R4ResourceType e) => Resource.resourceTypeToString(e))
                .toList());
        return true;
      }
    } catch (e) {
      return false;
    }
  }

  /// Saves a [Resource] to the local Db, [cipher] is optional (but after set,
  /// it must always be used everytime), will update the FhirFhirFhirMeta fields
  /// of the [Resource] and adds an id if none is already given.
  Future<Resource> save({
    Resource? resource,
    String? pw,
  }) async {
    if (resource != null) {
      if (resource.resourceType != null) {
        return resource.id == null
            ? await _insert(resource, pw)
            : await exists(
                resourceType: resource.resourceType!,
                id: resource.id!,
                pw: pw,
              )
                ? await _update(resource, pw)
                : await _insert(resource, pw);
      } else {
        throw const FormatException('ResourceType cannot be null');
      }
    } else {
      throw const FormatException('Resource cannot be null');
    }
  }

  /// The built-in bulkSave (called addAll) for Hive only allows automatically
  /// generated, incremented (int) IDs, so this function really just calls the
  /// save function over and over
  Future<bool> saveAll({
    required List<Resource> resources,
    String? pw,
  }) async {
    for (final Resource resource in resources) {
      try {
        await save(resource: resource, pw: pw);
      } catch (e) {
        return false;
      }
    }
    return true;
  }

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
    final Resource newResource =
        resource.newIdIfNoId().updateVersion(oldMeta: resource.meta);
    await _saveToDb(
      resourceType: newResource.resourceType!,
      resource: newResource.toJson(),
      pw: pw,
    );
    return newResource;
  }

  /// functions used to update a resource which has already been saved into the
  /// db, will also save the old version
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
        await _saveHistory(
          resource: oldResource.toJson(),
          pw: pw,
        );
        final FhirMeta? oldMeta = oldResource.meta;
        final Resource newResource = resource.updateVersion(oldMeta: oldMeta);
        await _saveToDb(
          resourceType: newResource.resourceType!,
          resource: newResource.toJson(),
          pw: pw,
        );
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
      await _ensureInit(pw: pw);
      final Box<Map<dynamic, dynamic>> box =
          await _getBox(resourceType: resourceType, pw: pw);
      await box.put(resource['id'], resource);
      return await _addType(resourceType: resourceType, pw: pw);
    } catch (e, s) {
      log('Error: $e, Stack at time of Error: $s');
      return false;
    }
  }

  Future<bool> _saveHistory({
    required Map<String, dynamic> resource,
    String? pw,
  }) async {
    try {
      await _ensureInit(pw: pw);
      final HiveAesCipher? cipher = cipherFromKey(key: pw);
      Box<Map<dynamic, dynamic>> box;
      if (!Hive.isBoxOpen('history')) {
        box = await Hive.openBox('history', encryptionCipher: cipher);
      } else {
        box = Hive.box('history');
      }
      if (resource['meta'] != null && resource['meta'] is Map) {
        await box.put(
            '${resource["resourceType"]}/${resource["id"]}/${(resource["meta"] as Map)["versionId"]}',
            resource);
        return true;
      } else {
        return false;
      }
    } catch (e, s) {
      log('Error: $e, Stack at time of Error: $s');
      return false;
    }
  }

  Future<bool> exists({
    required R4ResourceType resourceType,
    required String id,
    String? pw,
  }) async {
    if (!_types.contains(resourceType)) {
      return false;
    } else {
      await _ensureInit(pw: pw);
      final Box<Map<dynamic, dynamic>> box =
          await _getBox(resourceType: resourceType, pw: pw);
      return box.containsKey(id);
    }
  }

  Stream<Resource?> listen({
    required R4ResourceType resourceType,
    String? id,
    String? pw,
  }) async* {
    await _ensureInit(pw: pw);
    final Box<Map<dynamic, dynamic>> box =
        await _getBox(resourceType: resourceType, pw: pw);

    if (id == null) {
      yield* box.watch().map((BoxEvent event) {
        if (!event.deleted) {
          return Resource.fromJson(
              jsonDecode(jsonEncode(event.value)) as Map<String, dynamic>);
        } else {
          return null;
        }
      });
    } else {
      yield* box.watch(key: id).map((BoxEvent event) {
        if (!event.deleted) {
          return Resource.fromJson(
              jsonDecode(jsonEncode(event.value)) as Map<String, dynamic>);
        } else {
          return null;
        }
      });
    }
  }

  /// function used to save a new resource in the db
  Future<Resource?> get({
    required R4ResourceType resourceType,
    required String id,
    String? pw,
  }) async {
    await _ensureInit(pw: pw);
    final Box<Map<dynamic, dynamic>> box =
        await _getBox(resourceType: resourceType, pw: pw);
    final Map<dynamic, dynamic>? resourceMap = box.get(id);

    try {
      return resourceMap == null
          ? null
          : Resource.fromJson(
              jsonDecode(jsonEncode(resourceMap)) as Map<String, dynamic>);
    } catch (e, s) {
      log(e.toString());
      log(s.toString());
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
  Future<List<Resource>> find({
    Resource? resource,
    R4ResourceType? resourceType,
    String? id,
    List<Object>? field,
    String? value,
    String? pw,
  }) async {
    /// if we're just trying to match a resource
    if (resource != null &&
        resource.resourceType != null &&
        (resource.id != null || id != null)) {
      final Resource? result = await get(
        resourceType: resource.resourceType!,
        id: resource.id!,
        pw: pw,
      );
      return result == null ? <Resource>[] : <Resource>[result];
    } else if (resourceType != null && id != null) {
      final Resource? result = await get(
        resourceType: resourceType,
        id: id,
        pw: pw,
      );
      return result == null ? <Resource>[] : <Resource>[result];
    } else if (resourceType != null && field != null && value != null) {
      bool finder(Map<String, dynamic> finderResource) {
        dynamic result = finderResource;
        for (final Object key in field) {
          result = result[key];
          if (result == null) {
            return false;
          }
        }
        return result.toString() == value;
      }

      return (await search(resourceType: resourceType, finder: finder, pw: pw))
          .toList();
    } else {
      throw const FormatException('Must have either: '
          '\n1) a resource with a resourceType'
          '\n2) a resourceType and an Id'
          '\n3) a resourceType, a specific field, and the value of interest');
    }
  }

  /// returns all resources of a specific type
  Future<List<Resource>> getActiveResourcesOfType({
    List<R4ResourceType>? resourceTypes,
    List<String>? resourceTypeStrings,
    Resource? resource,
    String? pw,
  }) async {
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
    await _ensureInit(pw: pw);
    for (final R4ResourceType resourceType in typeList) {
      final Box<Map<dynamic, dynamic>> box =
          await _getBox(resourceType: resourceType, pw: pw);
      final List<Map<String, dynamic>> newResources = box.values
          .map((Map<dynamic, dynamic> e) =>
              jsonDecode(jsonEncode(e)) as Map<String, dynamic>)
          .toList();

      resourceList.addAll(
          newResources.map((Map<String, dynamic> e) => Resource.fromJson(e)));
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
    if (resource != null &&
        resource.resourceType != null &&
        resource.id != null) {
      return _deleteById(
        resourceType: resource.resourceType!,
        id: resource.id!,
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
      final Box<Map<dynamic, dynamic>> box = await _getBox(
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
      final Box<Map<dynamic, dynamic>> box =
          await _getBox(resourceType: resourceType, pw: pw);
      final String? resourceId = box.values
          .firstWhereOrNull((Map<dynamic, dynamic> element) =>
              finder(Map<String, dynamic>.from(element)))?['id']
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
      final Box<Map<dynamic, dynamic>> box = await _getBox(
        resourceType: resourceType,
      );
      await box.clear();
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<bool> clear({String? pw}) async => deleteAllResources(pw: pw);

  /// Deletes all resources, including historical versions
  Future<bool> deleteAllResources({String? pw}) async {
    try {
      await _ensureInit(pw: pw);
      for (final R4ResourceType type in _types) {
        final Box<Map<dynamic, dynamic>> box =
            await _getBox(resourceType: type, pw: pw);
        await box.deleteFromDisk();
      }
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<void> deleteDatabase({String? pw}) async {
    await _ensureInit(pw: pw);
    await Hive.deleteFromDisk();
  }

  Future<Iterable<Resource>> search({
    required R4ResourceType resourceType,
    required bool Function(Map<String, dynamic>) finder,
    String? pw,
  }) async {
    await _ensureInit(pw: pw);
    final Box<Map<dynamic, dynamic>> box =
        await _getBox(resourceType: resourceType, pw: pw);
    final Map<dynamic, Map<dynamic, dynamic>> boxData = box.toMap();
    boxData.removeWhere((dynamic key, Map<dynamic, dynamic> value) =>
        !finder(Map<String, dynamic>.from(value)));
    return boxData.values
        .map((Map<dynamic, dynamic> e) =>
            jsonDecode(jsonEncode(e)) as Map<String, dynamic>)
        .map((Map<String, dynamic> e) => Resource.fromJson(e))
        .toList();
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
    final HiveAesCipher? cipher = cipherFromKey(key: pw);
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

  Future<Object?> readGeneral({
    required int key,
    String? pw,
  }) async {
    await _ensureInit(pw: pw);
    final HiveAesCipher? cipher = cipherFromKey(key: pw);
    final Box<Object> box;
    if (!Hive.isBoxOpen('general')) {
      box = await Hive.openBox('general', encryptionCipher: cipher);
    } else {
      box = Hive.box('general');
    }
    return box.get(key);
  }

  Future<Iterable<Object>> getAllGeneral({
    String? pw,
  }) async {
    await _ensureInit(pw: pw);
    final HiveAesCipher? cipher = cipherFromKey(key: pw);
    final Box<Object> box;
    if (!Hive.isBoxOpen('general')) {
      box = await Hive.openBox('general', encryptionCipher: cipher);
    } else {
      box = Hive.box('general');
    }
    final Map<dynamic, Object> boxData = box.toMap();
    return boxData.values;
  }

  Future<Iterable<Object>> searchGeneral({
    required bool Function(Object) finder,
    String? pw,
  }) async {
    await _ensureInit(pw: pw);
    final HiveAesCipher? cipher = cipherFromKey(key: pw);
    final Box<Object> box;
    if (!Hive.isBoxOpen('general')) {
      box = await Hive.openBox('general', encryptionCipher: cipher);
    } else {
      box = Hive.box('general');
    }
    final Map<dynamic, Object> boxData = box.toMap();
    boxData.removeWhere((dynamic key, Object value) => !finder(value));
    return boxData.values;
  }

  Future<bool> deletefromGeneral({
    required int key,
    String? pw,
  }) async {
    await _ensureInit(pw: pw);
    final HiveAesCipher? cipher = cipherFromKey(key: pw);
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

  Future<bool> clearGeneral({
    String? pw,
  }) async {
    await _ensureInit(pw: pw);
    final HiveAesCipher? cipher = cipherFromKey(key: pw);
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
    for (final R4ResourceType resourceType in types) {
      final String resourceTypeString =
          Resource.resourceTypeToString(resourceType);
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
