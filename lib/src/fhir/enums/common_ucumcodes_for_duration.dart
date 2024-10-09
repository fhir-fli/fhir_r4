import 'package:json_annotation/json_annotation.dart';

/// Unified Code for Units of Measure (UCUM). This value set includes all UCUM codes
enum CommonUCUMCodesForDuration {
  /// Display: milliseconds
  @JsonValue('ms')
  ms,

  /// Display: seconds
  @JsonValue('s')
  s,

  /// Display: minutes
  @JsonValue('min')
  min,

  /// Display: hours
  @JsonValue('h')
  h,

  /// Display: days
  @JsonValue('d')
  d,

  /// Display: weeks
  @JsonValue('wk')
  wk,

  /// Display: months
  @JsonValue('mo')
  mo,

  /// Display: years
  @JsonValue('a')
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

  String toJson() => toString();
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

  static CommonUCUMCodesForDuration fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
