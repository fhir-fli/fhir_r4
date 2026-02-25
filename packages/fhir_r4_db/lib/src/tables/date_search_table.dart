import 'package:drift/drift.dart';
import 'package:fhir_r4/fhir_r4.dart' as fhir;
import 'package:fhir_r4_db/fhir_r4_db.dart' show DateSearchParametersCompanion;

/// Date Search Parameter Table
class DateSearchParameters extends Table {
  /// FHIR resource type name
  TextColumn get resourceType => text()();

  /// Resource logical id
  TextColumn get id => text()();

  /// When the resource was last updated
  DateTimeColumn get lastUpdated => dateTime()();

  /// FHIRPath expression identifying the source field
  TextColumn get searchPath => text()();

  /// Index for multiple values from the same path
  IntColumn get paramIndex => integer()();

  /// Original date/dateTime/instant string from the resource
  TextColumn get dateString => text()();

  /// Parsed DateTime value for range comparisons
  DateTimeColumn get dateValue => dateTime()();

  @override
  Set<Column> get primaryKey => {resourceType, id, searchPath, paramIndex};
}

/// Extension on [fhir.FhirBase] to extract date search parameters.
extension DateSearchParametersExtension on fhir.FhirBase {
  List<DateSearchParametersCompanion> toDateSearchParameter(
    String resourceType,
    String id,
    DateTime lastUpdated,
    String searchPath,
    int? paramIndex,
  ) {
    final results = <DateSearchParametersCompanion>[];

    switch (this) {
      case final fhir.FhirDate date:
        if (date.valueString != null) {
          results.add(
            DateSearchParametersCompanion(
              resourceType: Value(resourceType),
              id: Value(id),
              lastUpdated: Value(lastUpdated),
              searchPath: Value(searchPath),
              paramIndex:
                  paramIndex == null ? const Value.absent() : Value(paramIndex),
              dateString: Value(date.valueString!),
              dateValue: date.valueDateTime != null
                  ? Value(date.valueDateTime!)
                  : const Value.absent(),
            ),
          );
        }
        return results;

      case final fhir.FhirDateTime dateTime:
        if (dateTime.valueString != null) {
          results.add(
            DateSearchParametersCompanion(
              resourceType: Value(resourceType),
              id: Value(id),
              lastUpdated: Value(lastUpdated),
              searchPath: Value(searchPath),
              paramIndex:
                  paramIndex == null ? const Value.absent() : Value(paramIndex),
              dateString: Value(dateTime.valueString!),
              dateValue: dateTime.valueDateTime != null
                  ? Value(dateTime.valueDateTime!)
                  : const Value.absent(),
            ),
          );
        }
        return results;

      case final fhir.FhirInstant instant:
        if (instant.valueString != null) {
          results.add(
            DateSearchParametersCompanion(
              resourceType: Value(resourceType),
              id: Value(id),
              lastUpdated: Value(lastUpdated),
              searchPath: Value(searchPath),
              paramIndex:
                  paramIndex == null ? const Value.absent() : Value(paramIndex),
              dateString: Value(instant.valueString!),
              dateValue: instant.valueDateTime != null
                  ? Value(instant.valueDateTime!)
                  : const Value.absent(),
            ),
          );
        }
        return results;

      default:
        return [];
    }
  }
}
