import 'package:drift/drift.dart';

/// Sync tracking table for offline-first apps.
/// When storeForSync is true, copies go here for later server upload.
class SyncResources extends Table {
  /// FHIR resource type name (e.g. 'Patient')
  TextColumn get resourceType => text()();

  /// Resource logical id
  TextColumn get id => text()();

  /// Full JSON-encoded FHIR resource
  TextColumn get resource => text()();

  /// When this version was last updated
  DateTimeColumn get lastUpdated => dateTime()();

  /// Version identifier for this snapshot
  TextColumn get versionId => text()();

  @override
  Set<Column> get primaryKey => {resourceType, id, versionId};
}
