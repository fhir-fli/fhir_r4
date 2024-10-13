/// Unified Code for Units of Measure (UCUM). This value set includes all UCUM codes
enum CommonUCUMCodesForAge {
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

  /// Returns a [String] from a [CommonUCUMCodesForAge] enum.
  String toJson() => toString();

  /// Returns a [CommonUCUMCodesForAge] from a [String] enum.
  static CommonUCUMCodesForAge fromString(String str) {
    switch (str) {
      case 'min':
        return CommonUCUMCodesForAge.min;
      case 'h':
        return CommonUCUMCodesForAge.h;
      case 'd':
        return CommonUCUMCodesForAge.d;
      case 'wk':
        return CommonUCUMCodesForAge.wk;
      case 'mo':
        return CommonUCUMCodesForAge.mo;
      case 'a':
        return CommonUCUMCodesForAge.a;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [CommonUCUMCodesForAge] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static CommonUCUMCodesForAge fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
