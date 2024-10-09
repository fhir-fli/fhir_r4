import 'package:json_annotation/json_annotation.dart';

/// MedicationDispense Performer Function Codes
enum MedicationDispensePerformerFunctionCodes {
  /// Display: Data Enterer
  /// Definition: Recorded the details of the request
  @JsonValue('dataenterer')
  dataenterer,

  /// Display: Packager
  /// Definition: Prepared the medication.
  @JsonValue('packager')
  packager,

  /// Display: Checker
  /// Definition: Performed initial quality assurance on the prepared medication
  @JsonValue('checker')
  checker,

  /// Display: Final Checker
  /// Definition: Performed the final quality assurance on the prepared medication against the request. Typically, this is a pharmacist function.
  @JsonValue('finalchecker')
  finalchecker,
  ;

  @override
  String toString() {
    switch (this) {
      case dataenterer:
        return 'dataenterer';
      case packager:
        return 'packager';
      case checker:
        return 'checker';
      case finalchecker:
        return 'finalchecker';
    }
  }

  String toJson() => toString();
  static MedicationDispensePerformerFunctionCodes fromString(String str) {
    switch (str) {
      case 'dataenterer':
        return MedicationDispensePerformerFunctionCodes.dataenterer;
      case 'packager':
        return MedicationDispensePerformerFunctionCodes.packager;
      case 'checker':
        return MedicationDispensePerformerFunctionCodes.checker;
      case 'finalchecker':
        return MedicationDispensePerformerFunctionCodes.finalchecker;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static MedicationDispensePerformerFunctionCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
