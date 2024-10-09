import 'package:json_annotation/json_annotation.dart';

/// Defines the types of relationships between actions.
enum ActionRelationshipType {
  /// Display: Before Start
  /// Definition: The action must be performed before the start of the related action.
  @JsonValue('before-start')
  before_start,

  /// Display: Before
  /// Definition: The action must be performed before the related action.
  @JsonValue('before')
  before,

  /// Display: Before End
  /// Definition: The action must be performed before the end of the related action.
  @JsonValue('before-end')
  before_end,

  /// Display: Concurrent With Start
  /// Definition: The action must be performed concurrent with the start of the related action.
  @JsonValue('concurrent-with-start')
  concurrent_with_start,

  /// Display: Concurrent
  /// Definition: The action must be performed concurrent with the related action.
  @JsonValue('concurrent')
  concurrent,

  /// Display: Concurrent With End
  /// Definition: The action must be performed concurrent with the end of the related action.
  @JsonValue('concurrent-with-end')
  concurrent_with_end,

  /// Display: After Start
  /// Definition: The action must be performed after the start of the related action.
  @JsonValue('after-start')
  after_start,

  /// Display: After
  /// Definition: The action must be performed after the related action.
  @JsonValue('after')
  after,

  /// Display: After End
  /// Definition: The action must be performed after the end of the related action.
  @JsonValue('after-end')
  after_end,
  ;

  @override
  String toString() {
    switch (this) {
      case before_start:
        return 'before-start';
      case before:
        return 'before';
      case before_end:
        return 'before-end';
      case concurrent_with_start:
        return 'concurrent-with-start';
      case concurrent:
        return 'concurrent';
      case concurrent_with_end:
        return 'concurrent-with-end';
      case after_start:
        return 'after-start';
      case after:
        return 'after';
      case after_end:
        return 'after-end';
    }
  }

  String toJson() => toString();
  static ActionRelationshipType fromString(String str) {
    switch (str) {
      case 'before-start':
        return ActionRelationshipType.before_start;
      case 'before':
        return ActionRelationshipType.before;
      case 'before-end':
        return ActionRelationshipType.before_end;
      case 'concurrent-with-start':
        return ActionRelationshipType.concurrent_with_start;
      case 'concurrent':
        return ActionRelationshipType.concurrent;
      case 'concurrent-with-end':
        return ActionRelationshipType.concurrent_with_end;
      case 'after-start':
        return ActionRelationshipType.after_start;
      case 'after':
        return ActionRelationshipType.after;
      case 'after-end':
        return ActionRelationshipType.after_end;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static ActionRelationshipType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
