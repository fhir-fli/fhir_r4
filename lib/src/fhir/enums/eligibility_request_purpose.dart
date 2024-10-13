/// A code specifying the types of information being requested.
enum EligibilityRequestPurpose {
  /// Display: Coverage auth-requirements
  /// Definition: The prior authorization requirements for the listed, or discovered if specified, converages for the categories of service and/or specifed biling codes are requested.
  auth_requirements,

  /// Display: Coverage benefits
  /// Definition: The plan benefits and optionally benefits consumed  for the listed, or discovered if specified, converages are requested.
  benefits,

  /// Display: Coverage Discovery
  /// Definition: The insurer is requested to report on any coverages which they are aware of in addition to any specifed.
  discovery,

  /// Display: Coverage Validation
  /// Definition: A check that the specified coverages are in-force is requested.
  validation,
  ;

  @override
  String toString() {
    switch (this) {
      case auth_requirements:
        return 'auth-requirements';
      case benefits:
        return 'benefits';
      case discovery:
        return 'discovery';
      case validation:
        return 'validation';
    }
  }

  /// Returns a [String] from a [EligibilityRequestPurpose] enum.
  String toJson() => toString();

  /// Returns a [EligibilityRequestPurpose] from a [String] enum.
  static EligibilityRequestPurpose fromString(String str) {
    switch (str) {
      case 'auth-requirements':
        return EligibilityRequestPurpose.auth_requirements;
      case 'benefits':
        return EligibilityRequestPurpose.benefits;
      case 'discovery':
        return EligibilityRequestPurpose.discovery;
      case 'validation':
        return EligibilityRequestPurpose.validation;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [EligibilityRequestPurpose] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static EligibilityRequestPurpose fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
