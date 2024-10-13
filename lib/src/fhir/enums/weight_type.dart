/// The type of substance weight measurement.
enum WeightType {
  /// Display: exact
  Exact,

  /// Display: number average
  Average,

  /// Display: weight average
  WeightAverage,
  ;

  @override
  String toString() {
    switch (this) {
      case Exact:
        return 'Exact';
      case Average:
        return 'Average';
      case WeightAverage:
        return 'WeightAverage';
    }
  }

  /// Returns a [String] from a [WeightType] enum.
  String toJson() => toString();

  /// Returns a [WeightType] from a [String] enum.
  static WeightType fromString(String str) {
    switch (str) {
      case 'Exact':
        return WeightType.Exact;
      case 'Average':
        return WeightType.Average;
      case 'WeightAverage':
        return WeightType.WeightAverage;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [WeightType] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static WeightType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
