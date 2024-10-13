/// Defines behavior for an action or a group for how many times that item may be repeated.
enum ActionCardinalityBehavior {
  /// Display: Single
  /// Definition: The action may only be selected one time.
  single,

  /// Display: Multiple
  /// Definition: The action may be selected multiple times.
  multiple,
  ;

  @override
  String toString() {
    switch (this) {
      case single:
        return 'single';
      case multiple:
        return 'multiple';
    }
  }

  /// Returns a [String] from a [ActionCardinalityBehavior] enum.
  String toJson() => toString();

  /// Returns a [ActionCardinalityBehavior] from a [String] enum.
  static ActionCardinalityBehavior fromString(String str) {
    switch (str) {
      case 'single':
        return ActionCardinalityBehavior.single;
      case 'multiple':
        return ActionCardinalityBehavior.multiple;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [ActionCardinalityBehavior] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static ActionCardinalityBehavior fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
