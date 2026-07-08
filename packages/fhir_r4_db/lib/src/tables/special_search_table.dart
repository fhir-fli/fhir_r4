import 'package:drift/drift.dart';
import 'package:fhir_r4/fhir_r4.dart' as fhir;
import 'package:fhir_r4_db/fhir_r4_db.dart'
    show SpecialSearchParametersCompanion;

/// Special Search Parameter Table
class SpecialSearchParameters extends Table {
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

  /// A generic storage column for special search parameters
  TextColumn get specialValue => text()();

  @override
  Set<Column> get primaryKey => {resourceType, id, searchPath, paramIndex};
}

/// Extension on [fhir.FhirBase] to extract special search parameters.
extension SpecialSearchParametersExtension on fhir.FhirBase {
  /// Extracts the special search-parameter index rows for this resource,
  /// returning the [SpecialSearchParametersCompanion] entries to persist in the
  /// local Drift store so the resource can be matched by special FHIR search
  /// parameters that do not fit the other typed categories.
  List<SpecialSearchParametersCompanion> toSpecialSearchParameter(
    String resourceType,
    String id,
    int lastUpdated,
    String searchPath,
    int? paramIndex, {
    String searchName = '',
  }) {
    return <SpecialSearchParametersCompanion>[];
  }
}
