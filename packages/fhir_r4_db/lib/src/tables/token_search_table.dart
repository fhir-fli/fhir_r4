import 'package:drift/drift.dart';
import 'package:fhir_r4/fhir_r4.dart' as fhir;
import 'package:fhir_r4_db/fhir_r4_db.dart' show TokenSearchParametersCompanion;

/// Token Search Parameter Table
class TokenSearchParameters extends Table {
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

  /// The system part of the token; may be null if not provided
  TextColumn get tokenSystem => text().nullable()();

  /// The value (code or identifier)
  TextColumn get tokenValue => text()();

  /// Optional display value for human-readable searches
  TextColumn get tokenDisplay => text().nullable()();

  @override
  Set<Column> get primaryKey => {resourceType, id, searchPath, paramIndex};
}

/// Extension on [fhir.FhirBase] to extract token search parameters.
extension TokenSearchParametersExtension on fhir.FhirBase {
  List<TokenSearchParametersCompanion> toTokenSearchParameter(
    String resourceType,
    String id,
    int lastUpdated,
    String searchPath,
    int? paramIndex, {
    String searchName = '',
  }) {
    final results = <TokenSearchParametersCompanion>[];

    switch (this) {
      case final fhir.FhirCodeEnum enumCode:
        if (enumCode.valueString != null) {
          results.add(
            TokenSearchParametersCompanion(
              resourceType: Value(resourceType),
              id: Value(id),
              lastUpdated: Value(lastUpdated),
              searchPath: Value(searchPath),
              searchName: Value(searchName),
              paramIndex:
                  paramIndex == null ? const Value.absent() : Value(paramIndex),
              tokenSystem: enumCode.system?.toString() != null
                  ? Value(enumCode.system.toString())
                  : const Value.absent(),
              tokenValue: Value(enumCode.valueString!),
              tokenDisplay: enumCode.display?.valueString != null
                  ? Value(enumCode.display!.valueString!)
                  : const Value.absent(),
            ),
          );
        }
        return results;

      case final fhir.FhirCode code:
        if (code.valueString != null) {
          results.add(
            TokenSearchParametersCompanion(
              resourceType: Value(resourceType),
              id: Value(id),
              lastUpdated: Value(lastUpdated),
              searchPath: Value(searchPath),
              searchName: Value(searchName),
              paramIndex:
                  paramIndex == null ? const Value.absent() : Value(paramIndex),
              tokenSystem: const Value.absent(),
              tokenValue: Value(code.valueString!),
              tokenDisplay: const Value.absent(),
            ),
          );
        }
        return results;

      case final fhir.Coding coding:
        if (coding.code?.valueString != null) {
          results.add(
            TokenSearchParametersCompanion(
              resourceType: Value(resourceType),
              id: Value(id),
              lastUpdated: Value(lastUpdated),
              searchPath: Value(searchPath),
              searchName: Value(searchName),
              paramIndex:
                  paramIndex == null ? const Value.absent() : Value(paramIndex),
              tokenSystem: coding.system?.valueString == null
                  ? const Value.absent()
                  : Value(coding.system!.valueString!),
              tokenValue: Value(coding.code!.valueString!),
              tokenDisplay: coding.display?.valueString == null
                  ? const Value.absent()
                  : Value(coding.display!.valueString!),
            ),
          );
        }
        return results;

      case final fhir.CodeableConcept codeableConcept:
        final resultList = <TokenSearchParametersCompanion>[];

        if (codeableConcept.coding != null) {
          for (var i = 0; i < codeableConcept.coding!.length; i++) {
            final coding = codeableConcept.coding![i];
            if (coding.code?.valueString != null) {
              resultList.add(
                TokenSearchParametersCompanion(
                  resourceType: Value(resourceType),
                  id: Value(id),
                  lastUpdated: Value(lastUpdated),
                  searchPath: Value(searchPath),
              searchName: Value(searchName),
                  paramIndex:
                      Value(paramIndex == null ? i : paramIndex * 100 + i),
                  tokenSystem: coding.system?.valueString == null
                      ? const Value.absent()
                      : Value(coding.system!.valueString!),
                  tokenValue: Value(coding.code!.valueString!),
                  tokenDisplay: coding.display?.valueString == null
                      ? const Value.absent()
                      : Value(coding.display!.valueString!),
                ),
              );
            }
          }
        }

        if (codeableConcept.text?.valueString != null) {
          final textIndex = codeableConcept.coding?.length ?? 0;
          resultList.add(
            TokenSearchParametersCompanion(
              resourceType: Value(resourceType),
              id: Value(id),
              lastUpdated: Value(lastUpdated),
              searchPath: Value(searchPath),
              searchName: Value(searchName),
              paramIndex: Value(
                paramIndex == null ? textIndex : paramIndex * 100 + textIndex,
              ),
              tokenSystem: const Value.absent(),
              tokenValue: Value(codeableConcept.text!.valueString!),
              tokenDisplay: const Value.absent(),
            ),
          );
        }

        return resultList;

      case final fhir.Identifier identifier:
        if (identifier.value?.valueString != null) {
          results.add(
            TokenSearchParametersCompanion(
              resourceType: Value(resourceType),
              id: Value(id),
              lastUpdated: Value(lastUpdated),
              searchPath: Value(searchPath),
              searchName: Value(searchName),
              paramIndex:
                  paramIndex == null ? const Value.absent() : Value(paramIndex),
              tokenSystem: identifier.system?.valueString == null
                  ? const Value.absent()
                  : Value(identifier.system!.valueString!),
              tokenValue: Value(identifier.value!.valueString!),
              tokenDisplay: const Value.absent(),
            ),
          );
        }
        return results;

      case final fhir.FhirBoolean boolean:
        if (boolean.valueString != null) {
          results.add(
            TokenSearchParametersCompanion(
              resourceType: Value(resourceType),
              id: Value(id),
              lastUpdated: Value(lastUpdated),
              searchPath: Value(searchPath),
              searchName: Value(searchName),
              paramIndex:
                  paramIndex == null ? const Value.absent() : Value(paramIndex),
              tokenSystem: const Value.absent(),
              tokenValue: Value(boolean.valueString.toString()),
              tokenDisplay: const Value.absent(),
            ),
          );
        }
        return results;

      case final fhir.FhirString str:
        if (str.valueString != null) {
          results.add(
            TokenSearchParametersCompanion(
              resourceType: Value(resourceType),
              id: Value(id),
              lastUpdated: Value(lastUpdated),
              searchPath: Value(searchPath),
              searchName: Value(searchName),
              paramIndex:
                  paramIndex == null ? const Value.absent() : Value(paramIndex),
              tokenSystem: const Value.absent(),
              tokenValue: Value(str.valueString!),
              tokenDisplay: const Value.absent(),
            ),
          );
        }
        return results;

      default:
        return [];
    }
  }
}
