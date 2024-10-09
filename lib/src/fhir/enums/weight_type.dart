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

  String toJson() => toString();
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

  static WeightType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
