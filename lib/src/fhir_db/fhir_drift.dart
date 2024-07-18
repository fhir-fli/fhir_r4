// ignore_for_file: avoid_print

import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:rxdart/rxdart.dart';
import 'package:sqlite3/sqlite3.dart';
import '../../fhir_r4.dart';

part 'fhir_drift.g.dart';

@DataClassName('ResourceEntity')
class Resources extends Table {
  TextColumn get id => text().customConstraint('UNIQUE NOT NULL')();
  TextColumn get resourceType => text()();
  TextColumn get json => text()();

  @override
  Set<Column<Object>> get primaryKey => <Column<Object>>{id};
}

@DataClassName('ResourceHistoryEntity')
class ResourceHistory extends Table {
  TextColumn get id => text().customConstraint('NOT NULL')();
  TextColumn get resourceType => text()();
  TextColumn get versionId => text()();
  TextColumn get json => text()();

  @override
  Set<Column<Object>> get primaryKey => <Column<Object>>{id, versionId};
}

@DriftDatabase(tables: <Type>[Resources, ResourceHistory])
class FhirDriftDb extends _$FhirDriftDb {
  FhirDriftDb._() : super(_openConnection());
  FhirDriftDb._withExecutor(super.e);

  static final FhirDriftDb _instance = FhirDriftDb._();

  factory FhirDriftDb() => _instance;

  static const String _path = 'drift/file.sqlite';

  @override
  int get schemaVersion => 1;

  static LazyDatabase _openConnection() {
    return LazyDatabase(() async {
      final File dbFile = File(_path);
      print('Opening database connection...'); // Debug print
      final QueryExecutor database = NativeDatabase.createInBackground(
        dbFile,
        setup: (Database db) {
          db.execute("PRAGMA key = 'your-password';");
          assert(_debugCheckHasCipher(db));
          print('Database opened with encryption'); // Debug print
        },
      );
      print('Database connection established.'); // Debug print
      return database;
    });
  }

  static bool _debugCheckHasCipher(Database database) {
    final ResultSet result = database.select('PRAGMA cipher_version;');
    print('Cipher version: $result'); // Debug print
    return result.isNotEmpty;
  }

  Future<void> init({String? path, String? pw}) async {
    // Set the encryption key for the database
    print('Initializing database with password...'); // Debug print
    await customStatement('PRAGMA key = "$pw"');
    print('Database initialized with password.'); // Debug print
  }

  @override
  MigrationStrategy get migration => MigrationStrategy(
        onCreate: (Migrator m) async {
          print('Creating tables...'); // Debug print
          await m.createAll();
          print('Tables created.'); // Debug print
        },
      );

  Future<Resource?> findResource({
    required R4ResourceType resourceType,
    required String id,
  }) async {
    final SimpleSelectStatement<$ResourcesTable, ResourceEntity> query =
        select(resources)
          ..where(($ResourcesTable tbl) =>
              tbl.resourceType.equals(resourceType.toString()))
          ..where(($ResourcesTable tbl) => tbl.id.equals(id));
    final ResourceEntity? result = await query.getSingleOrNull();
    print(
        'findResource query result for id $id and resourceType $resourceType: $result'); // Debug print
    return result != null
        ? Resource.fromJson(jsonDecode(result.json) as Map<String, dynamic>)
        : null;
  }

  Future<List<Resource>> getActiveResourcesOfType({
    required R4ResourceType resourceType,
    int numberPerPage = 50,
    int pageNo = 0,
  }) async {
    final SimpleSelectStatement<$ResourcesTable, ResourceEntity> query =
        select(resources)
          ..where(($ResourcesTable tbl) =>
              tbl.resourceType.equals(resourceType.toString()))
          ..limit(numberPerPage, offset: pageNo * numberPerPage);
    final List<ResourceEntity> result = await query.get();
    return result
        .map((ResourceEntity row) =>
            Resource.fromJson(jsonDecode(row.json) as Map<String, dynamic>))
        .toList();
  }

  Future<List<Resource>> getAllActiveResources() async {
    final List<ResourceEntity> result = await select(resources).get();
    return result
        .map((ResourceEntity row) =>
            Resource.fromJson(jsonDecode(row.json) as Map<String, dynamic>))
        .toList();
  }

  Future<bool> deleteResource({
    Resource? resource,
    R4ResourceType? resourceType,
    String? id,
    bool Function(Map<String, dynamic>)? finder,
  }) async {
    if (resource != null &&
        resource.resourceType != null &&
        resource.id != null) {
      return _deleteById(
        resourceType: resource.resourceType!,
        id: resource.id!,
      );
    } else if (resourceType != null && id != null) {
      return _deleteById(
        resourceType: resourceType,
        id: id,
      );
    } else if (resourceType != null && finder != null) {
      return _deleteFromDb(
        resourceType: resourceType,
        finder: finder,
      );
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
  }) async {
    final int deletedCount = await (delete(resources)
          ..where(($ResourcesTable tbl) =>
              tbl.resourceType.equals(resourceType.toString()))
          ..where(($ResourcesTable tbl) => tbl.id.equals(id)))
        .go();
    return deletedCount > 0;
  }

  Future<bool> _deleteFromDb({
    required R4ResourceType resourceType,
    required bool Function(Map<String, dynamic>) finder,
  }) async {
    final List<ResourceEntity> entities = await (select(resources)
          ..where(($ResourcesTable tbl) =>
              tbl.resourceType.equals(resourceType.toString())))
        .get();

    final List<String> idsToDelete = entities
        .map((ResourceEntity entity) =>
            jsonDecode(entity.json) as Map<String, dynamic>)
        .where(finder)
        .map((Map<String, dynamic> json) => json['id'] as String)
        .toList();

    int deletedCount = 0;
    for (final String id in idsToDelete) {
      deletedCount += await (delete(resources)
            ..where(($ResourcesTable tbl) => tbl.id.equals(id)))
          .go();
    }

    return deletedCount > 0;
  }

  Future<bool> deleteSingleType(R4ResourceType resourceType) async {
    final int deletedCount = await (delete(resources)
          ..where(($ResourcesTable tbl) =>
              tbl.resourceType.equals(resourceType.toString())))
        .go();
    return deletedCount > 0;
  }

  Future<bool> deleteAllResources() async {
    final int deletedCount = await delete(resources).go();
    return deletedCount > 0;
  }

  Future<bool> deleteAllHistory() async {
    final int deletedCount = await delete(resourceHistory).go();
    return deletedCount > 0;
  }

  BehaviorSubject<Resource?> resourceSubject({
    required R4ResourceType resourceType,
    String? id,
  }) {
    final BehaviorSubject<Resource?> subject = BehaviorSubject<Resource?>();
    final Stream<List<ResourceEntity>> stream = (select(resources)
          ..where(($ResourcesTable tbl) =>
              tbl.resourceType.equals(resourceType.toString()))
          ..where(($ResourcesTable tbl) => tbl.id.equals(id!)))
        .watch();

    stream.listen(
      (List<ResourceEntity> event) {
        if (event.isEmpty) {
          subject.add(null);
        } else {
          subject.add(Resource.fromJson(
              jsonDecode(event.first.json) as Map<String, dynamic>));
        }
      },
      onError: (Object error) => subject.addError(error.toString()),
      onDone: () => subject.close(),
    );

    return subject;
  }

  Future<List<Resource>> find({
    Resource? resource,
    R4ResourceType? resourceType,
    String? id,
    List<Object>? field,
    String? value,
  }) async {
    if (resource != null) {
      return _searchByResource(resource: resource);
    } else if (resourceType != null && id != null) {
      return _searchById(resourceType: resourceType, id: id);
    } else if (resourceType != null && field != null && value != null) {
      return _searchByField(
          resourceType: resourceType, field: field, value: value);
    } else {
      throw const FormatException(
          'Insufficient parameters provided for search.');
    }
  }

  Future<List<Resource>> _searchByResource({required Resource resource}) async {
    final Resource? result = await findResource(
      resourceType: resource.resourceType!,
      id: resource.id!,
    );
    return result == null ? <Resource>[] : <Resource>[result];
  }

  Future<List<Resource>> _searchById({
    required R4ResourceType resourceType,
    required String id,
  }) async {
    final Resource? result = await findResource(
      resourceType: resourceType,
      id: id,
    );
    return result == null ? <Resource>[] : <Resource>[result];
  }

  Future<List<Resource>> _searchByField({
    required R4ResourceType resourceType,
    required List<Object> field,
    required String value,
  }) async {
    bool finder(Map<String, dynamic> finderResource) {
      dynamic result = finderResource;

      for (final Object key in field) {
        if (result is Map<String, dynamic>) {
          result = result[key];
        } else if (result is List && key is int && key < result.length) {
          result = result[key];
        } else {
          return false;
        }

        if (result == null) {
          return false;
        }
      }

      return result.toString() == value;
    }

    return (await search(resourceType: resourceType, finder: finder)).toList();
  }

  Future<Iterable<Resource>> search({
    required R4ResourceType resourceType,
    required bool Function(Map<String, dynamic>) finder,
  }) async {
    final List<ResourceEntity> entities = await (select(resources)
          ..where(($ResourcesTable tbl) =>
              tbl.resourceType.equals(resourceType.toString())))
        .get();

    return entities
        .map((ResourceEntity entity) =>
            jsonDecode(entity.json) as Map<String, dynamic>)
        .where(finder)
        .map((Map<String, dynamic> json) => Resource.fromJson(json));
  }

  Future<void> changePassword({
    required String oldPassword,
    required String newPassword,
  }) async {
    const String tempFilePath = 'drift/temp.sqlite';

    print('Exporting data from temporary database...');

    // Ensure previous temporary file is deleted if it exists
    final File tempFile = File(tempFilePath);
    if (await tempFile.exists()) {
      await tempFile.delete();
      print('Previous temporary file deleted.');
    }

    // Copy current database to a temporary file
    final File dbFile = File(_path);
    print('Current DB path: ${dbFile.path}');
    print('Temp DB path: ${tempFile.path}');

    // Debug: Check the state before copying
    final NativeDatabase beforeCopyDb = NativeDatabase(dbFile);
    final FhirDriftDb beforeCopyFhirDb =
        FhirDriftDb._withExecutor(beforeCopyDb);
    final List<ResourceEntity> resourcesBeforeCopy =
        await beforeCopyFhirDb.select(beforeCopyFhirDb.resources).get();
    print(
        'Resources before copy: ${resourcesBeforeCopy.map((r) => r.json).toList()}');

    await dbFile.copy(tempFilePath);

    // Debug: Check the state after copying
    final NativeDatabase afterCopyDb = NativeDatabase(tempFile);
    final FhirDriftDb afterCopyFhirDb = FhirDriftDb._withExecutor(afterCopyDb);
    final List<ResourceEntity> resourcesAfterCopy =
        await afterCopyFhirDb.select(afterCopyFhirDb.resources).get();
    print(
        'Resources after immediate copy check: ${resourcesAfterCopy.map((r) => r.json).toList()}');

    // Close the databases
    await beforeCopyDb.close();
    await afterCopyDb.close();

    try {
      // Open the temporary database with write permissions
      final NativeDatabase tempDb =
          NativeDatabase(tempFile, setup: (Database db) {
        db.execute("PRAGMA key = '$oldPassword';");
        db.execute('PRAGMA journal_mode=WAL;');
      });
      final FhirDriftDb tempFhirDb = FhirDriftDb._withExecutor(tempDb);

      // Export existing data from the temporary database
      final List<ResourceEntity> allResources =
          await tempFhirDb.select(tempFhirDb.resources).get();
      final List<ResourceHistoryEntity> allHistory =
          await tempFhirDb.select(tempFhirDb.resourceHistory).get();
      print(
          'Exported all resources: ${allResources.map((r) => r.json).toList()}');
      print('Exported all history: ${allHistory.map((h) => h.json).toList()}');

      // Debugging: Check if the versionId is being modified here
      for (final resource in allResources) {
        final resourceJson = jsonDecode(resource.json) as Map<String, dynamic>;
        print(
            'Exported resource with id: ${resource.id}, versionId: ${resourceJson['meta']['versionId']}');
      }

      // Close the temporary database
      await tempDb.close();

      print('Creating new database with new password...');

      // Delete the original database file
      await dbFile.delete();
      print('Original database file deleted.');

      // Create a new database connection with the new password
      final NativeDatabase newDb =
          NativeDatabase(File(_path), setup: (Database db) {
        db.execute("PRAGMA key = '$newPassword';");
        db.execute('PRAGMA journal_mode=WAL;');
      });
      final FhirDriftDb newFhirDb = FhirDriftDb._withExecutor(newDb);

      print('Inserting data into new database...');

      // Insert existing data into the new database
      for (final ResourceEntity resource in allResources) {
        await newFhirDb.into(newFhirDb.resources).insert(
              ResourcesCompanion(
                id: Value<String>(resource.id),
                resourceType: Value<String>(resource.resourceType),
                json: Value<String>(resource.json),
              ),
            );
      }

      for (final ResourceHistoryEntity history in allHistory) {
        await newFhirDb.into(newFhirDb.resourceHistory).insert(
              ResourceHistoryCompanion(
                id: Value<String>(history.id),
                resourceType: Value<String>(history.resourceType),
                versionId: Value<String>(history.versionId),
                json: Value<String>(history.json),
              ),
            );
      }

      // Close the new database
      await newDb.close();

      // Reopen the database with the new password
      await init(pw: newPassword);
      await tempFile.delete();
    } catch (e) {
      print('Error during password change process: $e');

      // If there is an error, delete the new database file
      final File newDbFile = File(_path);
      await newDbFile.delete();

      // Restore the original database file from the temporary file
      await tempFile.copy(_path);

      // Reopen the database with the old password
      await init(pw: oldPassword);

      // Rethrow the error
      rethrow;
    }
  }

  Future<Resource> save(Resource resource) async {
    print('Saving resource: ${resource.toJsonString()} - Save function called');
    final Resource? existingResource = await findResource(
      resourceType: resource.resourceType!,
      id: resource.id!,
    );

    if (existingResource != null) {
      print('Existing resource found: ${existingResource.toJsonString()}');
      await _saveHistory(existingResource);
      resource = resource.updateVersion(oldMeta: existingResource.meta);
      print('Resource after version update: ${resource.toJsonString()}');
    } else {
      resource = resource.newIdIfNoId().updateVersion();
      print('New resource with updated version: ${resource.toJsonString()}');
    }

    final String json = resource.toJsonString();
    print('Saving resource after version update: ${resource.toJsonString()}');

    await into(resources).insert(
      ResourcesCompanion(
        id: Value<String>(resource.id ?? ''),
        resourceType: Value<String>(resource.resourceType!.toString()),
        json: Value<String>(json),
      ),
      mode: InsertMode.insertOrReplace,
    );

    print(
        'Returning resource after version update: ${resource.toJsonString()}');
    return resource;
  }

  Future<Resource> _saveHistory(Resource resource) async {
    final String json = resource.toJsonString();
    print('Saving history for resource: ${resource.toJsonString()}');
    await into(resourceHistory).insert(
      ResourceHistoryCompanion(
        id: Value<String>(resource.id ?? ''),
        resourceType: Value<String>(resource.resourceType!.toString()),
        versionId: Value<String>(resource.meta?.versionId?.toString() ?? ''),
        json: Value<String>(json),
      ),
    );

    print('Returning history for resource: ${resource.toJsonString()}');
    return resource;
  }
}
