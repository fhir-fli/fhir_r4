import 'package:drift/drift.dart';
import 'package:fhir_r4/fhir_r4.dart' as fhir;
import 'package:fhir_r4_db/fhir_r4_db.dart'
    show QuantitySearchParametersCompanion;

/// Quantity Search Parameter Table
class QuantitySearchParameters extends Table {
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

  /// The numeric value part of the quantity
  RealColumn get quantityValue => real()();

  /// Unit (optional)
  TextColumn get quantityUnit => text().nullable()();

  /// Unit system (optional)
  TextColumn get quantitySystem => text().nullable()();

  /// Coded representation of the unit (optional)
  TextColumn get quantityCode => text().nullable()();

  @override
  Set<Column> get primaryKey => {resourceType, id, searchPath, paramIndex};
}

/// Extension on [fhir.FhirBase] to extract quantity search parameters.
extension QuantitySearchParametersExtension on fhir.FhirBase {
  /// Extracts the quantity search-parameter index rows for this resource,
  /// returning the [QuantitySearchParametersCompanion] entries to persist in
  /// the local Drift store so the resource can be matched by quantity FHIR
  /// searches (value together with unit and system).
  List<QuantitySearchParametersCompanion> toQuantitySearchParameter(
    String resourceType,
    String id,
    int lastUpdated,
    String searchPath,
    int? paramIndex, {
    String searchName = '',
  }) {
    final fhirObject = this;
    final searchParameters = <QuantitySearchParametersCompanion>[];
    if (fhirObject is fhir.Quantity) {
      searchParameters.add(
        QuantitySearchParametersCompanion(
          resourceType: Value(resourceType),
          id: Value(id),
          lastUpdated: Value(lastUpdated),
          searchPath: Value(searchPath),
          searchName: Value(searchName),
          paramIndex:
              paramIndex == null ? const Value.absent() : Value(paramIndex),
          quantityValue: fhirObject.value?.valueNum != null
              ? Value(fhirObject.value!.valueNum!.toDouble())
              : const Value.absent(),
          quantityUnit: fhirObject.unit?.valueString == null
              ? const Value.absent()
              : Value(fhirObject.unit!.valueString),
          quantitySystem: fhirObject.system?.valueString == null
              ? const Value.absent()
              : Value(fhirObject.system.toString()),
          quantityCode: fhirObject.code?.valueString == null
              ? const Value.absent()
              : Value(fhirObject.code!.valueString),
        ),
      );
    }
    return searchParameters;
  }
}
