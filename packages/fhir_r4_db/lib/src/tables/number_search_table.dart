import 'package:drift/drift.dart';
import 'package:fhir_r4/fhir_r4.dart' as fhir;
import 'package:fhir_r4_db/fhir_r4_db.dart'
    show NumberSearchParametersCompanion;

/// Number Search Parameter Table
class NumberSearchParameters extends Table {
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

  /// The numeric value extracted from the resource
  RealColumn get numberValue => real()();

  @override
  Set<Column> get primaryKey => {resourceType, id, searchPath, paramIndex};
}

/// Extension on [fhir.FhirBase] to extract number search parameters.
extension NumberSearchParametersExtension on fhir.FhirBase {
  /// Extracts the number search-parameter index rows for this resource,
  /// returning the [NumberSearchParametersCompanion] entries to persist in the
  /// local Drift store so the resource can be matched by numeric FHIR searches.
  List<NumberSearchParametersCompanion> toNumberSearchParameter(
    String resourceType,
    String id,
    int lastUpdated,
    String searchPath,
    int? paramIndex, {
    String searchName = '',
  }) {
    final fhirObject = this;
    final searchParameters = <NumberSearchParametersCompanion>[];
    if (fhirObject is fhir.FhirNumber && fhirObject.valueNum != null) {
      searchParameters.add(
        NumberSearchParametersCompanion(
          resourceType: Value(resourceType),
          id: Value(id),
          lastUpdated: Value(lastUpdated),
          searchPath: Value(searchPath),
          searchName: Value(searchName),
          paramIndex:
              paramIndex == null ? const Value.absent() : Value(paramIndex),
          numberValue: Value(fhirObject.valueNum!.toDouble()),
        ),
      );
    }
    return searchParameters;
  }
}
