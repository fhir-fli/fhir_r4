/// A coded concept indicating the current status of the Device Usage.
enum DeviceUseStatementStatus {
  /// Display: Active
  /// Definition: The device is still being used.
  active,

  /// Display: Completed
  /// Definition: The device is no longer being used.
  completed,

  /// Display: Entered in Error
  /// Definition: The statement was recorded incorrectly.
  entered_in_error,

  /// Display: Intended
  /// Definition: The device may be used at some time in the future.
  intended,

  /// Display: Stopped
  /// Definition: Actions implied by the statement have been permanently halted, before all of them occurred.
  stopped,

  /// Display: On Hold
  /// Definition: Actions implied by the statement have been temporarily halted, but are expected to continue later. May also be called "suspended".
  on_hold,
  ;

  @override
  String toString() {
    switch (this) {
      case active:
        return 'active';
      case completed:
        return 'completed';
      case entered_in_error:
        return 'entered-in-error';
      case intended:
        return 'intended';
      case stopped:
        return 'stopped';
      case on_hold:
        return 'on-hold';
    }
  }

  String toJson() => toString();
  static DeviceUseStatementStatus fromString(String str) {
    switch (str) {
      case 'active':
        return DeviceUseStatementStatus.active;
      case 'completed':
        return DeviceUseStatementStatus.completed;
      case 'entered-in-error':
        return DeviceUseStatementStatus.entered_in_error;
      case 'intended':
        return DeviceUseStatementStatus.intended;
      case 'stopped':
        return DeviceUseStatementStatus.stopped;
      case 'on-hold':
        return DeviceUseStatementStatus.on_hold;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static DeviceUseStatementStatus fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
