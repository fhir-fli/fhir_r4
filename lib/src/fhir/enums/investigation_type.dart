/// Example value set for investigation type.
enum InvestigationType {
  /// Display: Examination / signs
  value271336007,

  /// Display: History/symptoms
  value160237006,
  ;

  @override
  String toString() {
    switch (this) {
      case value271336007:
        return '271336007';
      case value160237006:
        return '160237006';
    }
  }

  /// Returns a [String] from a [InvestigationType] enum.
  String toJson() => toString();

  /// Returns a [InvestigationType] from a [String] enum.
  static InvestigationType fromString(String str) {
    switch (str) {
      case '271336007':
        return InvestigationType.value271336007;
      case '160237006':
        return InvestigationType.value160237006;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [InvestigationType] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static InvestigationType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
