import 'package:json_annotation/json_annotation.dart';

/// A coded concept indicating the current status of the Device Usage.
enum DeviceUseStatementStatus {
  /// Display: Active
  /// Definition: The device is still being used.
  @JsonValue('active')
  active,
  /// Display: Completed
  /// Definition: The device is no longer being used.
  @JsonValue('completed')
  completed,
  /// Display: Entered in Error
  /// Definition: The statement was recorded incorrectly.
  @JsonValue('entered-in-error')
  entered_in_error,
  /// Display: Intended
  /// Definition: The device may be used at some time in the future.
  @JsonValue('intended')
  intended,
  /// Display: Stopped
  /// Definition: Actions implied by the statement have been permanently halted, before all of them occurred.
  @JsonValue('stopped')
  stopped,
  /// Display: On Hold
  /// Definition: Actions implied by the statement have been temporarily halted, but are expected to continue later. May also be called "suspended".
  @JsonValue('on-hold')
  on_hold,
;

@override
  String toString() {
      switch(this) {
        case active: return 'active';
        case completed: return 'completed';
        case entered_in_error: return 'entered-in-error';
        case intended: return 'intended';
        case stopped: return 'stopped';
        case on_hold: return 'on-hold';
      }
      }
String toJson() => toString();
  DeviceUseStatementStatus fromString(String str) {
    switch(str) {
      case 'active': return DeviceUseStatementStatus.active;
      case 'completed': return DeviceUseStatementStatus.completed;
      case 'entered-in-error': return DeviceUseStatementStatus.entered_in_error;
      case 'intended': return DeviceUseStatementStatus.intended;
      case 'stopped': return DeviceUseStatementStatus.stopped;
      case 'on-hold': return DeviceUseStatementStatus.on_hold;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 DeviceUseStatementStatus fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

