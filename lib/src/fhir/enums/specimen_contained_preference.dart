/// Degree of preference of a type of conditioned specimen.
enum SpecimenContainedPreference {
  /// Display: Preferred
  /// Definition: This type of contained specimen is preferred to collect this kind of specimen.
  preferred,

  /// Display: Alternate
  /// Definition: This type of conditioned specimen is an alternate.
  alternate,
  ;

  @override
  String toString() {
    switch (this) {
      case preferred:
        return 'preferred';
      case alternate:
        return 'alternate';
    }
  }

  /// Returns a [String] from a [SpecimenContainedPreference] enum.
  String toJson() => toString();

  /// Returns a [SpecimenContainedPreference] from a [String] enum.
  static SpecimenContainedPreference fromString(String str) {
    switch (str) {
      case 'preferred':
        return SpecimenContainedPreference.preferred;
      case 'alternate':
        return SpecimenContainedPreference.alternate;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [SpecimenContainedPreference] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static SpecimenContainedPreference fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
