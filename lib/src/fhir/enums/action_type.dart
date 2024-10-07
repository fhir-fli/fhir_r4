import 'package:json_annotation/json_annotation.dart';

/// The type of action to be performed.
enum ActionType {
  /// Display: Create
  /// Definition: The action is to create a new resource.
  @JsonValue('create')
  create,

  /// Display: Update
  /// Definition: The action is to update an existing resource.
  @JsonValue('update')
  update,

  /// Display: Remove
  /// Definition: The action is to remove an existing resource.
  @JsonValue('remove')
  remove,

  /// Display: Fire Event
  /// Definition: The action is to fire a specific event.
  @JsonValue('fire-event')
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

  String toJson() => toString();
  ActionType fromString(String str) {
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

  ActionType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
