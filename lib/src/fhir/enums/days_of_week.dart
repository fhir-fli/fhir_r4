import 'package:json_annotation/json_annotation.dart';

/// The days of the week.
enum DaysOfWeek {
  /// Display: Monday
  /// Definition: Monday.
  @JsonValue('mon')
  mon,

  /// Display: Tuesday
  /// Definition: Tuesday.
  @JsonValue('tue')
  tue,

  /// Display: Wednesday
  /// Definition: Wednesday.
  @JsonValue('wed')
  wed,

  /// Display: Thursday
  /// Definition: Thursday.
  @JsonValue('thu')
  thu,

  /// Display: Friday
  /// Definition: Friday.
  @JsonValue('fri')
  fri,

  /// Display: Saturday
  /// Definition: Saturday.
  @JsonValue('sat')
  sat,

  /// Display: Sunday
  /// Definition: Sunday.
  @JsonValue('sun')
  sun,
  ;

  @override
  String toString() {
    switch (this) {
      case mon:
        return 'mon';
      case tue:
        return 'tue';
      case wed:
        return 'wed';
      case thu:
        return 'thu';
      case fri:
        return 'fri';
      case sat:
        return 'sat';
      case sun:
        return 'sun';
    }
  }

  String toJson() => toString();
  static DaysOfWeek fromString(String str) {
    switch (str) {
      case 'mon':
        return DaysOfWeek.mon;
      case 'tue':
        return DaysOfWeek.tue;
      case 'wed':
        return DaysOfWeek.wed;
      case 'thu':
        return DaysOfWeek.thu;
      case 'fri':
        return DaysOfWeek.fri;
      case 'sat':
        return DaysOfWeek.sat;
      case 'sun':
        return DaysOfWeek.sun;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static DaysOfWeek fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
