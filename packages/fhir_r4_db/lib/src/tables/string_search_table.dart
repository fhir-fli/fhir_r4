import 'package:drift/drift.dart';
import 'package:fhir_r4/fhir_r4.dart' as fhir;
import 'package:fhir_r4_db/fhir_r4_db.dart'
    show StringSearchParametersCompanion;

/// String Search Parameter Table
class StringSearchParameters extends Table {
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

  /// Normalized string value for case- and accent-insensitive searches
  TextColumn get stringValue => text()();

  @override
  Set<Column> get primaryKey => {resourceType, id, searchPath, paramIndex};
}

/// Extension on [fhir.FhirBase] to extract string search parameters.
extension StringSearchParametersExtension on fhir.FhirBase {
  List<StringSearchParametersCompanion> toStringSearchParameter(
    String resourceType,
    String id,
    DateTime lastUpdated,
    String searchPath,
    int? paramIndex,
  ) {
    final results = <StringSearchParametersCompanion>[];

    switch (this) {
      case final fhir.FhirString stringValue:
        if (stringValue.valueString != null) {
          results.add(
            StringSearchParametersCompanion(
              resourceType: Value(resourceType),
              id: Value(id),
              lastUpdated: Value(lastUpdated),
              searchPath: Value(searchPath),
              paramIndex:
                  paramIndex == null ? const Value.absent() : Value(paramIndex),
              stringValue: Value(_normalizeString(stringValue.valueString!)),
            ),
          );
        }
        return results;

      case final fhir.HumanName humanName:
        final nameParts = <String>[];

        if (humanName.family?.valueString != null) {
          nameParts.add(humanName.family!.valueString!);
        }

        if (humanName.given != null) {
          for (final given in humanName.given!) {
            if (given.valueString != null) {
              nameParts.add(given.valueString!);
            }
          }
        }

        if (humanName.prefix != null) {
          for (final prefix in humanName.prefix!) {
            if (prefix.valueString != null) {
              nameParts.add(prefix.valueString!);
            }
          }
        }

        if (humanName.suffix != null) {
          for (final suffix in humanName.suffix!) {
            if (suffix.valueString != null) {
              nameParts.add(suffix.valueString!);
            }
          }
        }

        if (humanName.text?.valueString != null) {
          nameParts.add(humanName.text!.valueString!);
        }

        for (var i = 0; i < nameParts.length; i++) {
          results.add(
            StringSearchParametersCompanion(
              resourceType: Value(resourceType),
              id: Value(id),
              lastUpdated: Value(lastUpdated),
              searchPath: Value(searchPath),
              paramIndex: Value(paramIndex == null ? i : paramIndex * 100 + i),
              stringValue: Value(_normalizeString(nameParts[i])),
            ),
          );
        }
        return results;

      case final fhir.Address address:
        final addressParts = <String>[];

        if (address.line != null) {
          for (final line in address.line!) {
            if (line.valueString != null) {
              addressParts.add(line.valueString!);
            }
          }
        }

        if (address.city?.valueString != null) {
          addressParts.add(address.city!.valueString!);
        }

        if (address.district?.valueString != null) {
          addressParts.add(address.district!.valueString!);
        }

        if (address.state?.valueString != null) {
          addressParts.add(address.state!.valueString!);
        }

        if (address.postalCode?.valueString != null) {
          addressParts.add(address.postalCode!.valueString!);
        }

        if (address.country?.valueString != null) {
          addressParts.add(address.country!.valueString!);
        }

        if (address.text?.valueString != null) {
          addressParts.add(address.text!.valueString!);
        }

        for (var i = 0; i < addressParts.length; i++) {
          results.add(
            StringSearchParametersCompanion(
              resourceType: Value(resourceType),
              id: Value(id),
              lastUpdated: Value(lastUpdated),
              searchPath: Value(searchPath),
              paramIndex: Value(paramIndex == null ? i : paramIndex * 100 + i),
              stringValue: Value(_normalizeString(addressParts[i])),
            ),
          );
        }
        return results;

      case final fhir.ContactPoint contactPoint:
        if (contactPoint.value?.valueString != null) {
          results.add(
            StringSearchParametersCompanion(
              resourceType: Value(resourceType),
              id: Value(id),
              lastUpdated: Value(lastUpdated),
              searchPath: Value(searchPath),
              paramIndex:
                  paramIndex == null ? const Value.absent() : Value(paramIndex),
              stringValue:
                  Value(_normalizeString(contactPoint.value!.valueString!)),
            ),
          );
        }
        return results;

      default:
        return [];
    }
  }

  /// Normalize string for case-insensitive and accent-insensitive searching.
  String _normalizeString(String input) {
    return input.toLowerCase();
  }
}
