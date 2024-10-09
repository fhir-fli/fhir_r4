import 'package:json_annotation/json_annotation.dart';

/// The kind of dose or rate specified.
enum DoseAndRateType {
  /// Display: Calculated
  /// Definition: The dose specified is calculated by the prescriber or the system.
  @JsonValue('calculated')
  calculated,

  /// Display: Ordered
  /// Definition: The dose specified is as ordered by the prescriber.
  @JsonValue('ordered')
  ordered,
  ;

  @override
  String toString() {
    switch (this) {
      case calculated:
        return 'calculated';
      case ordered:
        return 'ordered';
    }
  }

  String toJson() => toString();
  static DoseAndRateType fromString(String str) {
    switch (str) {
      case 'calculated':
        return DoseAndRateType.calculated;
      case 'ordered':
        return DoseAndRateType.ordered;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static DoseAndRateType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
