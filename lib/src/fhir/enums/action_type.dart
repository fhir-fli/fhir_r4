/// The type of action to be performed.
enum ActionType {
  /// Display: Create
  /// Definition: The action is to create a new resource.
  create,

  /// Display: Update
  /// Definition: The action is to update an existing resource.
  update,

  /// Display: Remove
  /// Definition: The action is to remove an existing resource.
  remove,

  /// Display: Fire Event
  /// Definition: The action is to fire a specific event.
  fire_event,
  ;

  @override
  String toString() {
    switch (this) {
      case create:
        return 'create';
      case update:
        return 'update';
      case remove:
        return 'remove';
      case fire_event:
        return 'fire-event';
    }
  }

  /// Returns a [String] from a [ActionType] enum.
  String toJson() => toString();

  /// Returns a [ActionType] from a [String] enum.
  static ActionType fromString(String str) {
    switch (str) {
      case 'create':
        return ActionType.create;
      case 'update':
        return ActionType.update;
      case 'remove':
        return ActionType.remove;
      case 'fire-event':
        return ActionType.fire_event;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [ActionType] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static ActionType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
