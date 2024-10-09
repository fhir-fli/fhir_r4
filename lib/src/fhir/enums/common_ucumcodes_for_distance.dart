/// Unified Code for Units of Measure (UCUM). This value set includes common UCUM codes for units of distance
enum CommonUCUMCodesForDistance {
  /// Display: nanometers
  nm,

  /// Display: micrometers
  um,

  /// Display: millimeters
  mm,

  /// Display: meters
  m,

  /// Display: kilometers
  km,
  ;

  @override
  String toString() {
    switch (this) {
      case nm:
        return 'nm';
      case um:
        return 'um';
      case mm:
        return 'mm';
      case m:
        return 'm';
      case km:
        return 'km';
    }
  }

  String toJson() => toString();
  static CommonUCUMCodesForDistance fromString(String str) {
    switch (str) {
      case 'nm':
        return CommonUCUMCodesForDistance.nm;
      case 'um':
        return CommonUCUMCodesForDistance.um;
      case 'mm':
        return CommonUCUMCodesForDistance.mm;
      case 'm':
        return CommonUCUMCodesForDistance.m;
      case 'km':
        return CommonUCUMCodesForDistance.km;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static CommonUCUMCodesForDistance fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
