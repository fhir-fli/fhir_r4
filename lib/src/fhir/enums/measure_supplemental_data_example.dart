/// Supplemental data in a population for measuring purposes.
enum MeasureSupplementalDataExample {
  /// Display: Age
  /// Definition: Age Supplemental Data.
  age,

  /// Display: Gender
  /// Definition: Gender Supplemental Data .
  gender,

  /// Display: Ethnicity
  /// Definition: Ethnicity Supplemental Data .
  ethnicity,

  /// Display: Payer
  /// Definition: Payer Supplemental Data.
  payer,
  ;

  @override
  String toString() {
    switch (this) {
      case age:
        return 'age';
      case gender:
        return 'gender';
      case ethnicity:
        return 'ethnicity';
      case payer:
        return 'payer';
    }
  }

  /// Returns a [String] from a [MeasureSupplementalDataExample] enum.
  String toJson() => toString();

  /// Returns a [MeasureSupplementalDataExample] from a [String] enum.
  static MeasureSupplementalDataExample fromString(String str) {
    switch (str) {
      case 'age':
        return MeasureSupplementalDataExample.age;
      case 'gender':
        return MeasureSupplementalDataExample.gender;
      case 'ethnicity':
        return MeasureSupplementalDataExample.ethnicity;
      case 'payer':
        return MeasureSupplementalDataExample.payer;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [MeasureSupplementalDataExample] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static MeasureSupplementalDataExample fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
