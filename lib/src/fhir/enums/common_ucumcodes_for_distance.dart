import 'package:json_annotation/json_annotation.dart';

/// Unified Code for Units of Measure (UCUM). This value set includes common UCUM codes for units of distance
enum CommonUCUMCodesForDistance {
  /// Display: nanometers
  @JsonValue('nm')
  nm,

  /// Display: micrometers
  @JsonValue('um')
  um,

  /// Display: millimeters
  @JsonValue('mm')
  mm,

  /// Display: meters
  @JsonValue('m')
  m,

  /// Display: kilometers
  @JsonValue('km')
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
