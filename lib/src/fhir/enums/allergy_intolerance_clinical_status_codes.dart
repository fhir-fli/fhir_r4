/// Preferred value set for AllergyIntolerance Clinical Status.
enum AllergyIntoleranceClinicalStatusCodes {
  /// Display: Active
  /// Definition: The subject is currently experiencing, or is at risk of, a reaction to the identified substance.
  active,

  /// Display: Inactive
  /// Definition: The subject is no longer at risk of a reaction to the identified substance.
  inactive,

  /// Display: Resolved
  /// Definition: A reaction to the identified substance has been clinically reassessed by testing or re-exposure and is considered no longer to be present. Re-exposure could be accidental, unplanned, or outside of any clinical setting.
  resolved,
  ;

  @override
  String toString() {
    switch (this) {
      case active:
        return 'active';
      case inactive:
        return 'inactive';
      case resolved:
        return 'resolved';
    }
  }

  /// Returns a [String] from a [AllergyIntoleranceClinicalStatusCodes] enum.
  String toJson() => toString();

  /// Returns a [AllergyIntoleranceClinicalStatusCodes] from a [String] enum.
  static AllergyIntoleranceClinicalStatusCodes fromString(String str) {
    switch (str) {
      case 'active':
        return AllergyIntoleranceClinicalStatusCodes.active;
      case 'inactive':
        return AllergyIntoleranceClinicalStatusCodes.inactive;
      case 'resolved':
        return AllergyIntoleranceClinicalStatusCodes.resolved;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [AllergyIntoleranceClinicalStatusCodes] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static AllergyIntoleranceClinicalStatusCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
