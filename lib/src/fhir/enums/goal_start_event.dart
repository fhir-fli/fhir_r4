import 'package:json_annotation/json_annotation.dart';

/// Identifies types of events that might trigger the start of a goal.
enum GoalStartEvent {
  /// Display: Admission to hospital
  @JsonValue('32485007')
  value32485007,
  /// Display: Discharge from hospital
  @JsonValue('308283009')
  value308283009,
  /// Display: Completion time of procedure
  @JsonValue('442137000')
  value442137000,
  /// Display: Childbirth
  @JsonValue('386216000')
  value386216000,
;

@override
  String toString() {
      switch(this) {
        case value32485007: return '32485007';
        case value308283009: return '308283009';
        case value442137000: return '442137000';
        case value386216000: return '386216000';
      }
      }
String toJson() => toString();
  GoalStartEvent fromString(String str) {
    switch(str) {
      case '32485007': return GoalStartEvent.value32485007;
      case '308283009': return GoalStartEvent.value308283009;
      case '442137000': return GoalStartEvent.value442137000;
      case '386216000': return GoalStartEvent.value386216000;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 GoalStartEvent fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

