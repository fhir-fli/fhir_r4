import 'package:json_annotation/json_annotation.dart';

/// Example codes for grouping goals to use for filtering or presentation.
enum GoalCategory {
  /// Display: Dietary
  /// Definition: Goals related to the consumption of food and/or beverages.
  @JsonValue('dietary')
  dietary,

  /// Display: Safety
  /// Definition: Goals related to the personal protection of the subject.
  @JsonValue('safety')
  safety,

  /// Display: Behavioral
  /// Definition: Goals related to the manner in which the subject acts.
  @JsonValue('behavioral')
  behavioral,

  /// Display: Nursing
  /// Definition: Goals related to the practice of nursing or established by nurses.
  @JsonValue('nursing')
  nursing,

  /// Display: Physiotherapy
  /// Definition: Goals related to the mobility and/or motor capability of the subject.
  @JsonValue('physiotherapy')
  physiotherapy,
  ;

  @override
  String toString() {
    switch (this) {
      case dietary:
        return 'dietary';
      case safety:
        return 'safety';
      case behavioral:
        return 'behavioral';
      case nursing:
        return 'nursing';
      case physiotherapy:
        return 'physiotherapy';
    }
  }

  String toJson() => toString();
  static GoalCategory fromString(String str) {
    switch (str) {
      case 'dietary':
        return GoalCategory.dietary;
      case 'safety':
        return GoalCategory.safety;
      case 'behavioral':
        return GoalCategory.behavioral;
      case 'nursing':
        return GoalCategory.nursing;
      case 'physiotherapy':
        return GoalCategory.physiotherapy;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static GoalCategory fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
