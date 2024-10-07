import 'package:json_annotation/json_annotation.dart';

/// A unit of time (units from UCUM).
enum UnitsOfTime {
  /// Display: second
  @JsonValue('s')
  s,

  /// Display: minute
  @JsonValue('min')
  min,

  /// Display: hour
  @JsonValue('h')
  h,

  /// Display: day
  @JsonValue('d')
  d,

  /// Display: week
  @JsonValue('wk')
  wk,

  /// Display: month
  @JsonValue('mo')
  mo,

  /// Display: year
  @JsonValue('a')
  a,
  ;

  @override
  String toString() {
    switch (this) {
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
  UnitsOfTime fromString(String str) {
    switch (str) {
      case 's':
        return UnitsOfTime.s;
      case 'min':
        return UnitsOfTime.min;
      case 'h':
        return UnitsOfTime.h;
      case 'd':
        return UnitsOfTime.d;
      case 'wk':
        return UnitsOfTime.wk;
      case 'mo':
        return UnitsOfTime.mo;
      case 'a':
        return UnitsOfTime.a;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  UnitsOfTime fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
