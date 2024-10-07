import 'package:json_annotation/json_annotation.dart';

/// Defines the kinds of conditions that can appear on actions.
enum ActionConditionKind {
  /// Display: Applicability
  /// Definition: The condition describes whether or not a given action is applicable.
  @JsonValue('applicability')
  applicability,

  /// Display: Start
  /// Definition: The condition is a starting condition for the action.
  @JsonValue('start')
  start,

  /// Display: Stop
  /// Definition: The condition is a stop, or exit condition for the action.
  @JsonValue('stop')
  stop,
  ;

  @override
  String toString() {
    switch (this) {
      case applicability:
        return 'applicability';
      case start:
        return 'start';
      case stop:
        return 'stop';
    }
  }

  String toJson() => toString();
  ActionConditionKind fromString(String str) {
    switch (str) {
      case 'applicability':
        return ActionConditionKind.applicability;
      case 'start':
        return ActionConditionKind.start;
      case 'stop':
        return ActionConditionKind.stop;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  ActionConditionKind fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
