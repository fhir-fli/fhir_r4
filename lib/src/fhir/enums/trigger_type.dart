import 'package:json_annotation/json_annotation.dart';

/// The type of trigger.
enum TriggerType {
  /// Display: Named Event
  /// Definition: The trigger occurs in response to a specific named event, and no other information about the trigger is specified. Named events are completely pre-coordinated, and the formal semantics of the trigger are not provided.
  @JsonValue('named-event')
  named_event,

  /// Display: Periodic
  /// Definition: The trigger occurs at a specific time or periodically as described by a timing or schedule. A periodic event cannot have any data elements, but may have a name assigned as a shorthand for the event.
  @JsonValue('periodic')
  periodic,

  /// Display: Data Changed
  /// Definition: The trigger occurs whenever data of a particular type is changed in any way, either added, modified, or removed.
  @JsonValue('data-changed')
  data_changed,

  /// Display: Data Added
  /// Definition: The trigger occurs whenever data of a particular type is added.
  @JsonValue('data-added')
  data_added,

  /// Display: Data Updated
  /// Definition: The trigger occurs whenever data of a particular type is modified.
  @JsonValue('data-modified')
  data_modified,

  /// Display: Data Removed
  /// Definition: The trigger occurs whenever data of a particular type is removed.
  @JsonValue('data-removed')
  data_removed,

  /// Display: Data Accessed
  /// Definition: The trigger occurs whenever data of a particular type is accessed.
  @JsonValue('data-accessed')
  data_accessed,

  /// Display: Data Access Ended
  /// Definition: The trigger occurs whenever access to data of a particular type is completed.
  @JsonValue('data-access-ended')
  data_access_ended,
  ;

  @override
  String toString() {
    switch (this) {
      case named_event:
        return 'named-event';
      case periodic:
        return 'periodic';
      case data_changed:
        return 'data-changed';
      case data_added:
        return 'data-added';
      case data_modified:
        return 'data-modified';
      case data_removed:
        return 'data-removed';
      case data_accessed:
        return 'data-accessed';
      case data_access_ended:
        return 'data-access-ended';
    }
  }

  String toJson() => toString();
  TriggerType fromString(String str) {
    switch (str) {
      case 'named-event':
        return TriggerType.named_event;
      case 'periodic':
        return TriggerType.periodic;
      case 'data-changed':
        return TriggerType.data_changed;
      case 'data-added':
        return TriggerType.data_added;
      case 'data-modified':
        return TriggerType.data_modified;
      case 'data-removed':
        return TriggerType.data_removed;
      case 'data-accessed':
        return TriggerType.data_accessed;
      case 'data-access-ended':
        return TriggerType.data_access_ended;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  TriggerType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
