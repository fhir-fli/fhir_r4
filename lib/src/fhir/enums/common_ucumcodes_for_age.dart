import 'package:json_annotation/json_annotation.dart';

/// Unified Code for Units of Measure (UCUM). This value set includes all UCUM codes
enum CommonUCUMCodesForAge {
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

  static CommonUCUMCodesForAge fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
