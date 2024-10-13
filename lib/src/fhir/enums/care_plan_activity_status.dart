/// Codes that reflect the current state of a care plan activity within its overall life cycle.
enum CarePlanActivityStatus {
  /// Display: Not Started
  /// Definition: Care plan activity is planned but no action has yet been taken.
  not_started,

  /// Display: Scheduled
  /// Definition: Appointment or other booking has occurred but activity has not yet begun.
  scheduled,

  /// Display: In Progress
  /// Definition: Care plan activity has been started but is not yet complete.
  in_progress,

  /// Display: On Hold
  /// Definition: Care plan activity was started but has temporarily ceased with an expectation of resumption at a future time.
  on_hold,

  /// Display: Completed
  /// Definition: Care plan activity has been completed (more or less) as planned.
  completed,

  /// Display: Cancelled
  /// Definition: The planned care plan activity has been withdrawn.
  cancelled,

  /// Display: Stopped
  /// Definition: The planned care plan activity has been ended prior to completion after the activity was started.
  stopped,

  /// Display: Unknown
  /// Definition: The current state of the care plan activity is not known.  Note: This concept is not to be used for "other" - one of the listed statuses is presumed to apply, but the authoring/source system does not know which one.
  unknown,

  /// Display: Entered in Error
  /// Definition: Care plan activity was entered in error and voided.
  entered_in_error,
  ;

  @override
  String toString() {
    switch (this) {
      case not_started:
        return 'not-started';
      case scheduled:
        return 'scheduled';
      case in_progress:
        return 'in-progress';
      case on_hold:
        return 'on-hold';
      case completed:
        return 'completed';
      case cancelled:
        return 'cancelled';
      case stopped:
        return 'stopped';
      case unknown:
        return 'unknown';
      case entered_in_error:
        return 'entered-in-error';
    }
  }

  /// Returns a [String] from a [CarePlanActivityStatus] enum.
  String toJson() => toString();

  /// Returns a [CarePlanActivityStatus] from a [String] enum.
  static CarePlanActivityStatus fromString(String str) {
    switch (str) {
      case 'not-started':
        return CarePlanActivityStatus.not_started;
      case 'scheduled':
        return CarePlanActivityStatus.scheduled;
      case 'in-progress':
        return CarePlanActivityStatus.in_progress;
      case 'on-hold':
        return CarePlanActivityStatus.on_hold;
      case 'completed':
        return CarePlanActivityStatus.completed;
      case 'cancelled':
        return CarePlanActivityStatus.cancelled;
      case 'stopped':
        return CarePlanActivityStatus.stopped;
      case 'unknown':
        return CarePlanActivityStatus.unknown;
      case 'entered-in-error':
        return CarePlanActivityStatus.entered_in_error;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [CarePlanActivityStatus] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static CarePlanActivityStatus fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
