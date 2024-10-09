import 'package:json_annotation/json_annotation.dart';

/// Indicates the level of importance associated with reaching or sustaining a goal.
enum GoalPriority {
  /// Display: High Priority
  /// Definition: Indicates that the goal is of considerable importance and should be a primary focus of care delivery.
  @JsonValue('high-priority')
  high_priority,

  /// Display: Medium Priority
  /// Definition: Indicates that the goal has a reasonable degree of importance and that concrete action should be taken towards the goal.  Attainment is not as critical as high-priority goals.
  @JsonValue('medium-priority')
  medium_priority,

  /// Display: Low Priority
  /// Definition: The goal is desirable but is not sufficiently important to devote significant resources to.  Achievement of the goal may be sought when incidental to achieving other goals.
  @JsonValue('low-priority')
  low_priority,
  ;

  @override
  String toString() {
    switch (this) {
      case high_priority:
        return 'high-priority';
      case medium_priority:
        return 'medium-priority';
      case low_priority:
        return 'low-priority';
    }
  }

  String toJson() => toString();
  static GoalPriority fromString(String str) {
    switch (str) {
      case 'high-priority':
        return GoalPriority.high_priority;
      case 'medium-priority':
        return GoalPriority.medium_priority;
      case 'low-priority':
        return GoalPriority.low_priority;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static GoalPriority fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
