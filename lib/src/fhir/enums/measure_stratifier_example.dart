/// Identifier subgroups in a population for measuring purposes.
enum MeasureStratifierExample {
  /// Display: Age
  /// Definition: Age Stratification.
  age,

  /// Display: Gender
  /// Definition: Gender Stratification.
  gender,

  /// Display: Region
  /// Definition: Region Stratification.
  region,
  ;

  @override
  String toString() {
    switch (this) {
      case age:
        return 'age';
      case gender:
        return 'gender';
      case region:
        return 'region';
    }
  }

  /// Returns a [String] from a [MeasureStratifierExample] enum.
  String toJson() => toString();

  /// Returns a [MeasureStratifierExample] from a [String] enum.
  static MeasureStratifierExample fromString(String str) {
    switch (str) {
      case 'age':
        return MeasureStratifierExample.age;
      case 'gender':
        return MeasureStratifierExample.gender;
      case 'region':
        return MeasureStratifierExample.region;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [MeasureStratifierExample] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static MeasureStratifierExample fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
