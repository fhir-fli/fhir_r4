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
  DateTimeColumn get lastUpdated => dateTime()();

  @override
  Set<Column> get primaryKey => {resourceType, id};
}

/// Table for historical versions of FHIR resources.
class ResourcesHistory extends Table {
  /// FHIR resource type name (e.g. 'Patient')
  TextColumn get resourceType => text()();

  /// Resource logical id
  TextColumn get id => text()();

  /// Full JSON-encoded FHIR resource
  TextColumn get resource => text()();

  /// When this version was last updated
  DateTimeColumn get lastUpdated => dateTime()();

  @override
  Set<Column> get primaryKey => {resourceType, id, lastUpdated};
}
