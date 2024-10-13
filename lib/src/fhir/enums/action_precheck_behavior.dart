/// Defines selection frequency behavior for an action or group.
enum ActionPrecheckBehavior {
  /// Display: Yes
  /// Definition: An action with this behavior is one of the most frequent action that is, or should be, included by an end user, for the particular context in which the action occurs. The system displaying the action to the end user should consider "pre-checking" such an action as a convenience for the user.
  yes,

  /// Display: No
  /// Definition: An action with this behavior is one of the less frequent actions included by the end user, for the particular context in which the action occurs. The system displaying the actions to the end user would typically not "pre-check" such an action.
  no,
  ;

  @override
  String toString() {
    switch (this) {
      case yes:
        return 'yes';
      case no:
        return 'no';
    }
  }

  /// Returns a [String] from a [ActionPrecheckBehavior] enum.
  String toJson() => toString();

  /// Returns a [ActionPrecheckBehavior] from a [String] enum.
  static ActionPrecheckBehavior fromString(String str) {
    switch (str) {
      case 'yes':
        return ActionPrecheckBehavior.yes;
      case 'no':
        return ActionPrecheckBehavior.no;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [ActionPrecheckBehavior] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static ActionPrecheckBehavior fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
