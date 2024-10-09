import 'package:json_annotation/json_annotation.dart';

/// Observation values that indicate what change in a measurement value or score is indicative of an improvement in the measured item or scored issue.
enum MeasureImprovementNotation {
  /// Display: Increased score indicates improvement
  /// Definition: Improvement is indicated as an increase in the score or measurement (e.g. Higher score indicates better quality).
  @JsonValue('increase')
  increase,

  /// Display: Decreased score indicates improvement
  /// Definition: Improvement is indicated as a decrease in the score or measurement (e.g. Lower score indicates better quality).
  @JsonValue('decrease')
  decrease,
  ;

  @override
  String toString() {
    switch (this) {
      case increase:
        return 'increase';
      case decrease:
        return 'decrease';
    }
  }

  String toJson() => toString();
  static MeasureImprovementNotation fromString(String str) {
    switch (str) {
      case 'increase':
        return MeasureImprovementNotation.increase;
      case 'decrease':
        return MeasureImprovementNotation.decrease;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static MeasureImprovementNotation fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
