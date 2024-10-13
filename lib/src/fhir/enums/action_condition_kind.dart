/// Defines the kinds of conditions that can appear on actions.
enum ActionConditionKind {
  /// Display: Applicability
  /// Definition: The condition describes whether or not a given action is applicable.
  applicability,

  /// Display: Start
  /// Definition: The condition is a starting condition for the action.
  start,

  /// Display: Stop
  /// Definition: The condition is a stop, or exit condition for the action.
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

  /// Returns a [String] from a [ActionConditionKind] enum.
  String toJson() => toString();

  /// Returns a [ActionConditionKind] from a [String] enum.
  static ActionConditionKind fromString(String str) {
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

  /// Returns a [ActionConditionKind] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static ActionConditionKind fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
