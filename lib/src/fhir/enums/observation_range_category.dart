/// Codes identifying the category of observation range.
enum ObservationRangeCategory {
  /// Display: reference range
  /// Definition: Reference (Normal) Range for Ordinal and Continuous Observations.
  reference,

  /// Display: critical range
  /// Definition: Critical Range for Ordinal and Continuous Observations.
  critical,

  /// Display: absolute range
  /// Definition: Absolute Range for Ordinal and Continuous Observations. Results outside this range are not possible.
  absolute,
  ;

  @override
  String toString() {
    switch (this) {
      case reference:
        return 'reference';
      case critical:
        return 'critical';
      case absolute:
        return 'absolute';
    }
  }

  String toJson() => toString();
  static ObservationRangeCategory fromString(String str) {
    switch (str) {
      case 'reference':
        return ObservationRangeCategory.reference;
      case 'critical':
        return ObservationRangeCategory.critical;
      case 'absolute':
        return ObservationRangeCategory.absolute;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static ObservationRangeCategory fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
