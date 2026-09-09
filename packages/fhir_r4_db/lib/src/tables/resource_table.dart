import 'package:drift/drift.dart';

/// Table for current versions of FHIR resources.
class Resources extends Table {
  /// FHIR resource type name (e.g. 'Patient')
  TextColumn get resourceType => text()();

  /// Resource logical id
  TextColumn get id => text()();

  /// Full JSON-encoded FHIR resource
  TextColumn get resource => text()();

  /// When this version was last updated
  IntColumn get lastUpdated => integer()();

  @override
  Set<Column> get primaryKey => {resourceType, id};
}

/// Table for historical versions of FHIR resources.
class ResourcesHistory extends Table {
  /// FHIR resource type name (e.g. 'Patient')
  TextColumn get resourceType => text()();

  /// Resource logical id
  TextColumn get id => text()();

  /// Version identifier (e.g. '1', '2', or timestamp-based)
  TextColumn get versionId => text()();

  /// Full JSON-encoded FHIR resource
  TextColumn get resource => text()();

  /// When this version was last updated
  IntColumn get lastUpdated => integer()();

  /// True for the tombstone a delete writes; false for a version of the
  /// resource. Its own column (schema 13): a tombstone used to be told
  /// apart by a `meta.tag` in the JSON, which is a client-writable field, so
  /// a live resource stored carrying that tag read as deleted
  /// (fhirant REVIEW-2026-09-08 row 36).
  BoolColumn get deleted => boolean().withDefault(const Constant(false))();

  @override
  Set<Column> get primaryKey => {resourceType, id, versionId};
}
