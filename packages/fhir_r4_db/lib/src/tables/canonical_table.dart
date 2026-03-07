import 'package:drift/drift.dart';

/// Canonical resource cache table (URL-keyed).
/// Used by fhir_path and fhir_mapping engines.
class CanonicalResources extends Table {
  /// Canonical URL as key
  TextColumn get url => text()();

  /// FHIR resource type name (e.g. 'StructureDefinition')
  TextColumn get resourceType => text()();

  /// JSON blob of the resource
  TextColumn get resource => text()();

  @override
  Set<Column> get primaryKey => {url};
}
