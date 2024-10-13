/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support describing the patient's eligibility for a vaccination program. This value set is provided as a suggestive example.
enum ImmunizationProgramEligibility {
  /// Display: Not Eligible
  /// Definition: The patient is not eligible for the funding program.
  ineligible,

  /// Display: Uninsured
  /// Definition: The patient is eligible for the funding program because they are uninsured.
  uninsured,
  ;

  @override
  String toString() {
    switch (this) {
      case ineligible:
        return 'ineligible';
      case uninsured:
        return 'uninsured';
    }
  }

  /// Returns a [String] from a [ImmunizationProgramEligibility] enum.
  String toJson() => toString();

  /// Returns a [ImmunizationProgramEligibility] from a [String] enum.
  static ImmunizationProgramEligibility fromString(String str) {
    switch (str) {
      case 'ineligible':
        return ImmunizationProgramEligibility.ineligible;
      case 'uninsured':
        return ImmunizationProgramEligibility.uninsured;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [ImmunizationProgramEligibility] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static ImmunizationProgramEligibility fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
