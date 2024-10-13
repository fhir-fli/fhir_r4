/// Whether a reference needs to be version specific or version independent, or whether either can be used.
enum ReferenceVersionRules {
  /// Display: Either Specific or independent
  /// Definition: The reference may be either version independent or version specific.
  either,

  /// Display: Version independent
  /// Definition: The reference must be version independent.
  independent,

  /// Display: Version Specific
  /// Definition: The reference must be version specific.
  specific,
  ;

  @override
  String toString() {
    switch (this) {
      case either:
        return 'either';
      case independent:
        return 'independent';
      case specific:
        return 'specific';
    }
  }

  /// Returns a [String] from a [ReferenceVersionRules] enum.
  String toJson() => toString();

  /// Returns a [ReferenceVersionRules] from a [String] enum.
  static ReferenceVersionRules fromString(String str) {
    switch (str) {
      case 'either':
        return ReferenceVersionRules.either;
      case 'independent':
        return ReferenceVersionRules.independent;
      case 'specific':
        return ReferenceVersionRules.specific;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [ReferenceVersionRules] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static ReferenceVersionRules fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
