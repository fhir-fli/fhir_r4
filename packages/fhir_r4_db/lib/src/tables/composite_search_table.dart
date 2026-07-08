import 'package:drift/drift.dart';
import 'package:fhir_r4/fhir_r4.dart' as fhir;
import 'package:fhir_r4_db/fhir_r4_db.dart'
    show CompositeSearchParametersCompanion;

/// Composite Search Parameter Table
class CompositeSearchParameters extends Table {
  /// FHIR resource type name
  TextColumn get resourceType => text()();

  /// Resource logical id
  TextColumn get id => text()();

  /// When the resource was last updated
  IntColumn get lastUpdated => integer()();

  /// FHIRPath expression identifying the source field
  TextColumn get searchPath => text()();

  /// HTTP search parameter name (e.g., 'monitoring-program-name')
  TextColumn get searchName => text().withDefault(const Constant(''))();

  /// Index for multiple values from the same path
  IntColumn get paramIndex => integer()();

  /// First component of the composite value
  TextColumn get component1 => text()();

  /// Second component of the composite value
  TextColumn get component2 => text()();

  @override
  Set<Column> get primaryKey => {resourceType, id, searchPath, paramIndex};
}

/// Extension on [fhir.FhirBase] to extract composite search parameters.
extension CompositeSearchParametersExtension on fhir.FhirBase {
  /// Extracts the composite search-parameter index rows for this resource,
  /// returning the [CompositeSearchParametersCompanion] entries to persist in
  /// the local Drift store so the resource can be matched by composite
  /// (multi-component) FHIR searches.
  List<CompositeSearchParametersCompanion> toCompositeSearchParameter(
    String resourceType,
    String id,
    int lastUpdated,
    String searchPath,
    int? paramIndex, {
    String searchName = '',
  }) {
    return <CompositeSearchParametersCompanion>[];
  }
}
