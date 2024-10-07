import 'package:json_annotation/json_annotation.dart';

/// The free/busy status of the slot.
enum SlotStatus {
  /// Display: Busy
  /// Definition: Indicates that the time interval is busy because one  or more events have been scheduled for that interval.
  @JsonValue('busy')
  busy,

  /// Display: Free
  /// Definition: Indicates that the time interval is free for scheduling.
  @JsonValue('free')
  free,

  /// Display: Busy (Unavailable)
  /// Definition: Indicates that the time interval is busy and that the interval cannot be scheduled.
  @JsonValue('busy-unavailable')
  busy_unavailable,

  /// Display: Busy (Tentative)
  /// Definition: Indicates that the time interval is busy because one or more events have been tentatively scheduled for that interval.
  @JsonValue('busy-tentative')
  busy_tentative,

  /// Display: Entered in error
  /// Definition: This instance should not have been part of this patient's medical record.
  @JsonValue('entered-in-error')
  entered_in_error,
  ;

  @override
  String toString() {
    switch (this) {
      case busy:
        return 'busy';
      case free:
        return 'free';
      case busy_unavailable:
        return 'busy-unavailable';
      case busy_tentative:
        return 'busy-tentative';
      case entered_in_error:
        return 'entered-in-error';
    }
  }

  String toJson() => toString();
  SlotStatus fromString(String str) {
    switch (str) {
      case 'busy':
        return SlotStatus.busy;
      case 'free':
        return SlotStatus.free;
      case 'busy-unavailable':
        return SlotStatus.busy_unavailable;
      case 'busy-tentative':
        return SlotStatus.busy_tentative;
      case 'entered-in-error':
        return SlotStatus.entered_in_error;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  SlotStatus fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
