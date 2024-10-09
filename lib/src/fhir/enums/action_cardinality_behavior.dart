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

  String toJson() => toString();
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

  static ActionCardinalityBehavior fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
