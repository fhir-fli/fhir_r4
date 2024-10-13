/// This value set includes sample Provider Qualification codes.
enum ExampleProviderQualificationCodes {
  /// Display: Dentist
  /// Definition: Dentist General Practitioner (DDS, DDM).
  value311405,

  /// Display: Ophthalmologist
  /// Definition: Ophthalmologist.
  value604215,

  /// Display: Optometrist
  /// Definition: Optometrist.
  value604210,
  ;

  @override
  String toString() {
    switch (this) {
      case value311405:
        return '311405';
      case value604215:
        return '604215';
      case value604210:
        return '604210';
    }
  }

  /// Returns a [String] from a [ExampleProviderQualificationCodes] enum.
  String toJson() => toString();

  /// Returns a [ExampleProviderQualificationCodes] from a [String] enum.
  static ExampleProviderQualificationCodes fromString(String str) {
    switch (str) {
      case '311405':
        return ExampleProviderQualificationCodes.value311405;
      case '604215':
        return ExampleProviderQualificationCodes.value604215;
      case '604210':
        return ExampleProviderQualificationCodes.value604210;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [ExampleProviderQualificationCodes] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static ExampleProviderQualificationCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
