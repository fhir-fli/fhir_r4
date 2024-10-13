/// Example Measure Groups for the Measure Resource.
enum MeasureGroupExample {
  /// Display: Primary Rate
  /// Definition: Primary Measure Group.
  primary_rate,

  /// Display: Secondary Rate
  /// Definition: Secondary Measure Group
  secondary_rate,
  ;

  @override
  String toString() {
    switch (this) {
      case primary_rate:
        return 'primary-rate';
      case secondary_rate:
        return 'secondary-rate';
    }
  }

  /// Returns a [String] from a [MeasureGroupExample] enum.
  String toJson() => toString();

  /// Returns a [MeasureGroupExample] from a [String] enum.
  static MeasureGroupExample fromString(String str) {
    switch (str) {
      case 'primary-rate':
        return MeasureGroupExample.primary_rate;
      case 'secondary-rate':
        return MeasureGroupExample.secondary_rate;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [MeasureGroupExample] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static MeasureGroupExample fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
