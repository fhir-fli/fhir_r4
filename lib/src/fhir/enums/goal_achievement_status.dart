/// Describes the progression, or lack thereof, towards the goal against the target.
enum GoalAchievementStatus {
  /// Display: In Progress
  /// Definition: The goal is being sought but has not yet been reached. (Also applies if the goal was reached in the past but there has been regression and the goal is again being sought).
  in_progress,

  /// Display: Improving
  /// Definition: The goal is being sought, and is progressing.
  improving,

  /// Display: Worsening
  /// Definition: The goal is being sought, but is regressing.
  worsening,

  /// Display: No Change
  /// Definition: The goal is being sought, but the trend is flat.
  no_change,

  /// Display: Achieved
  /// Definition: The goal has been met.
  achieved,

  /// Display: Sustaining
  /// Definition: The goal has been met, but ongoing activity is needed to sustain the goal objective.
  sustaining,

  /// Display: Not Achieved
  /// Definition: The goal has not been met and there might or might not have been progress towards target.
  not_achieved,

  /// Display: No Progress
  /// Definition: The goal has not been met and little to no progress towards target.
  no_progress,

  /// Display: Not Attainable
  /// Definition: The goal is not possible to be met.
  not_attainable,
  ;

  @override
  String toString() {
    switch (this) {
      case in_progress:
        return 'in-progress';
      case improving:
        return 'improving';
      case worsening:
        return 'worsening';
      case no_change:
        return 'no-change';
      case achieved:
        return 'achieved';
      case sustaining:
        return 'sustaining';
      case not_achieved:
        return 'not-achieved';
      case no_progress:
        return 'no-progress';
      case not_attainable:
        return 'not-attainable';
    }
  }

  /// Returns a [String] from a [GoalAchievementStatus] enum.
  String toJson() => toString();

  /// Returns a [GoalAchievementStatus] from a [String] enum.
  static GoalAchievementStatus fromString(String str) {
    switch (str) {
      case 'in-progress':
        return GoalAchievementStatus.in_progress;
      case 'improving':
        return GoalAchievementStatus.improving;
      case 'worsening':
        return GoalAchievementStatus.worsening;
      case 'no-change':
        return GoalAchievementStatus.no_change;
      case 'achieved':
        return GoalAchievementStatus.achieved;
      case 'sustaining':
        return GoalAchievementStatus.sustaining;
      case 'not-achieved':
        return GoalAchievementStatus.not_achieved;
      case 'no-progress':
        return GoalAchievementStatus.no_progress;
      case 'not-attainable':
        return GoalAchievementStatus.not_attainable;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [GoalAchievementStatus] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static GoalAchievementStatus fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
