import 'package:json_annotation/json_annotation.dart';

/// Example Measure Groups for the Measure Resource.
enum MeasureGroupExample {
  /// Display: Primary Rate
  /// Definition: Primary Measure Group.
  @JsonValue('primary-rate')
  primary_rate,
  /// Display: Secondary Rate
  /// Definition: Secondary Measure Group
  @JsonValue('secondary-rate')
  secondary_rate,
;

@override
  String toString() {
      switch(this) {
        case primary_rate: return 'primary-rate';
        case secondary_rate: return 'secondary-rate';
      }
      }
String toJson() => toString();
  MeasureGroupExample fromString(String str) {
    switch(str) {
      case 'primary-rate': return MeasureGroupExample.primary_rate;
      case 'secondary-rate': return MeasureGroupExample.secondary_rate;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 MeasureGroupExample fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}
