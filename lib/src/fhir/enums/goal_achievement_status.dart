import 'package:json_annotation/json_annotation.dart';

/// Describes the progression, or lack thereof, towards the goal against the target.
enum GoalAchievementStatus {
  /// Display: In Progress
  /// Definition: The goal is being sought but has not yet been reached. (Also applies if the goal was reached in the past but there has been regression and the goal is again being sought).
  @JsonValue('in-progress')
  in_progress,
  /// Display: Achieved
  /// Definition: The goal has been met.
  @JsonValue('achieved')
  achieved,
  /// Display: Not Achieved
  /// Definition: The goal has not been met and there might or might not have been progress towards target.
  @JsonValue('not-achieved')
  not_achieved,
;

@override
  String toString() {
      switch(this) {
        case in_progress: return 'in-progress';
        case achieved: return 'achieved';
        case not_achieved: return 'not-achieved';
      }
      }
String toJson() => toString();
  GoalAchievementStatus fromString(String str) {
    switch(str) {
      case 'in-progress': return GoalAchievementStatus.in_progress;
      case 'achieved': return GoalAchievementStatus.achieved;
      case 'not-achieved': return GoalAchievementStatus.not_achieved;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 GoalAchievementStatus fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

