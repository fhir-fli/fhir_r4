/// MedicationKnowledge Status Codes
enum MedicationKnowledgeStatusCodes {
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

  /// Returns a [String] from a [MedicationKnowledgeStatusCodes] enum.
  String toJson() => toString();

  /// Returns a [MedicationKnowledgeStatusCodes] from a [String] enum.
  static MedicationKnowledgeStatusCodes fromString(String str) {
    switch (str) {
      case 'active':
        return MedicationKnowledgeStatusCodes.active;
      case 'inactive':
        return MedicationKnowledgeStatusCodes.inactive;
      case 'entered-in-error':
        return MedicationKnowledgeStatusCodes.entered_in_error;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [MedicationKnowledgeStatusCodes] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static MedicationKnowledgeStatusCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
