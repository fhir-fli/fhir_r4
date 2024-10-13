/// Extra measures defined for a Medicinal Product, such as a requirement to conduct post-authorisation studies.
enum SpecialMeasures {
  /// Display: Requirement to conduct post-authorisation studies
  /// Definition: Requirement to conduct post-authorisation studies
  Post_authorisationStudies,
  ;

  @override
  String toString() {
    switch (this) {
      case Post_authorisationStudies:
        return 'Post-authorisationStudies';
    }
  }

  /// Returns a [String] from a [SpecialMeasures] enum.
  String toJson() => toString();

  /// Returns a [SpecialMeasures] from a [String] enum.
  static SpecialMeasures fromString(String str) {
    switch (str) {
      case 'Post-authorisationStudies':
        return SpecialMeasures.Post_authorisationStudies;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [SpecialMeasures] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static SpecialMeasures fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
