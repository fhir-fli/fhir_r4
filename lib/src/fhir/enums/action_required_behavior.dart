import 'package:json_annotation/json_annotation.dart';

/// Defines expectations around whether an action or action group is required.
enum ActionRequiredBehavior {
  /// Display: Must
  /// Definition: An action with this behavior must be included in the actions processed by the end user; the end user SHALL NOT choose not to include this action.
  @JsonValue('must')
  must,

  /// Display: Could
  /// Definition: An action with this behavior may be included in the set of actions processed by the end user.
  @JsonValue('could')
  could,

  /// Display: Must Unless Documented
  /// Definition: An action with this behavior must be included in the set of actions processed by the end user, unless the end user provides documentation as to why the action was not included.
  @JsonValue('must-unless-documented')
  must_unless_documented,
  ;

  @override
  String toString() {
    switch (this) {
      case must:
        return 'must';
      case could:
        return 'could';
      case must_unless_documented:
        return 'must-unless-documented';
    }
  }

  String toJson() => toString();
  ActionRequiredBehavior fromString(String str) {
    switch (str) {
      case 'must':
        return ActionRequiredBehavior.must;
      case 'could':
        return ActionRequiredBehavior.could;
      case 'must-unless-documented':
        return ActionRequiredBehavior.must_unless_documented;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  ActionRequiredBehavior fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
