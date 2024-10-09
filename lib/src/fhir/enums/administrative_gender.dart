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

  String toJson() => toString();
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

  static AdministrativeGender fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
