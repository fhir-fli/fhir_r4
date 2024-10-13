/// Medication Status Codes
enum MedicationStatusCodes {
  /// Display: Active
  /// Definition: The medication is available for use.
  active,

  /// Display: Inactive
  /// Definition: The medication is not available for use.
  inactive,

  /// Display: Entered in Error
  /// Definition: The medication was entered in error.
  entered_in_error,
  ;

  @override
  String toString() {
    switch (this) {
      case active:
        return 'active';
      case inactive:
        return 'inactive';
      case entered_in_error:
        return 'entered-in-error';
    }
  }

  /// Returns a [String] from a [MedicationStatusCodes] enum.
  String toJson() => toString();

  /// Returns a [MedicationStatusCodes] from a [String] enum.
  static MedicationStatusCodes fromString(String str) {
    switch (str) {
      case 'active':
        return MedicationStatusCodes.active;
      case 'inactive':
        return MedicationStatusCodes.inactive;
      case 'entered-in-error':
        return MedicationStatusCodes.entered_in_error;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [MedicationStatusCodes] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static MedicationStatusCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
