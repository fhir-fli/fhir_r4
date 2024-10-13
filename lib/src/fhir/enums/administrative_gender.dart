/// The gender of a person used for administrative purposes.
enum AdministrativeGender {
  /// Display: Male
  /// Definition: Male.
  male,

  /// Display: Female
  /// Definition: Female.
  female,

  /// Display: Other
  /// Definition: Other.
  other,

  /// Display: Unknown
  /// Definition: Unknown.
  unknown,
  ;

  @override
  String toString() {
    switch (this) {
      case male:
        return 'male';
      case female:
        return 'female';
      case other:
        return 'other';
      case unknown:
        return 'unknown';
    }
  }

  /// Returns a [String] from a [AdministrativeGender] enum.
  String toJson() => toString();

  /// Returns a [AdministrativeGender] from a [String] enum.
  static AdministrativeGender fromString(String str) {
    switch (str) {
      case 'male':
        return AdministrativeGender.male;
      case 'female':
        return AdministrativeGender.female;
      case 'other':
        return AdministrativeGender.other;
      case 'unknown':
        return AdministrativeGender.unknown;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [AdministrativeGender] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static AdministrativeGender fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
