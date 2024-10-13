/// MedicationDispense Performer Function Codes
enum MedicationDispensePerformerFunctionCodes {
  /// Display: Data Enterer
  /// Definition: Recorded the details of the request
  dataenterer,

  /// Display: Packager
  /// Definition: Prepared the medication.
  packager,

  /// Display: Checker
  /// Definition: Performed initial quality assurance on the prepared medication
  checker,

  /// Display: Final Checker
  /// Definition: Performed the final quality assurance on the prepared medication against the request. Typically, this is a pharmacist function.
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

  /// Returns a [String] from a [MedicationDispensePerformerFunctionCodes] enum.
  String toJson() => toString();

  /// Returns a [MedicationDispensePerformerFunctionCodes] from a [String] enum.
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

  /// Returns a [MedicationDispensePerformerFunctionCodes] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static MedicationDispensePerformerFunctionCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
