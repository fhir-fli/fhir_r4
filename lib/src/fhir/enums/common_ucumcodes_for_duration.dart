/// Unified Code for Units of Measure (UCUM). This value set includes all UCUM codes
enum CommonUCUMCodesForDuration {
  /// Display: milliseconds
  ms,

  /// Display: seconds
  s,

  /// Display: minutes
  min,

  /// Display: hours
  h,

  /// Display: days
  d,

  /// Display: weeks
  wk,

  /// Display: months
  mo,

  /// Display: years
  a,
  ;

  @override
  String toString() {
    switch (this) {
      case ms:
        return 'ms';
      case s:
        return 's';
      case min:
        return 'min';
      case h:
        return 'h';
      case d:
        return 'd';
      case wk:
        return 'wk';
      case mo:
        return 'mo';
      case a:
        return 'a';
    }
  }

  /// Returns a [String] from a [CommonUCUMCodesForDuration] enum.
  String toJson() => toString();

  /// Returns a [CommonUCUMCodesForDuration] from a [String] enum.
  static CommonUCUMCodesForDuration fromString(String str) {
    switch (str) {
      case 'ms':
        return CommonUCUMCodesForDuration.ms;
      case 's':
        return CommonUCUMCodesForDuration.s;
      case 'min':
        return CommonUCUMCodesForDuration.min;
      case 'h':
        return CommonUCUMCodesForDuration.h;
      case 'd':
        return CommonUCUMCodesForDuration.d;
      case 'wk':
        return CommonUCUMCodesForDuration.wk;
      case 'mo':
        return CommonUCUMCodesForDuration.mo;
      case 'a':
        return CommonUCUMCodesForDuration.a;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [CommonUCUMCodesForDuration] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static CommonUCUMCodesForDuration fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
