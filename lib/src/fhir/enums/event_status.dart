/// Codes identifying the lifecycle stage of an event.
enum EventStatus {
  /// Display: Preparation
  /// Definition: The core event has not started yet, but some staging activities have begun (e.g. surgical suite preparation).  Preparation stages may be tracked for billing purposes.
  preparation,

  /// Display: In Progress
  /// Definition: The event is currently occurring.
  in_progress,

  /// Display: Not Done
  /// Definition: The event was terminated prior to any activity beyond preparation.  I.e. The 'main' activity has not yet begun.  The boundary between preparatory and the 'main' activity is context-specific.
  not_done,

  /// Display: On Hold
  /// Definition: The event has been temporarily stopped but is expected to resume in the future.
  on_hold,

  /// Display: Stopped
  /// Definition: The event was terminated prior to the full completion of the intended activity but after at least some of the 'main' activity (beyond preparation) has occurred.
  stopped,

  /// Display: Completed
  /// Definition: The event has now concluded.
  completed,

  /// Display: Entered in Error
  /// Definition: This electronic record should never have existed, though it is possible that real-world decisions were based on it.  (If real-world activity has occurred, the status should be "stopped" rather than "entered-in-error".).
  entered_in_error,

  /// Display: Unknown
  /// Definition: The authoring/source system does not know which of the status values currently applies for this event.  Note: This concept is not to be used for "other" - one of the listed statuses is presumed to apply,  but the authoring/source system does not know which.
  unknown,
  ;

  @override
  String toString() {
    switch (this) {
      case preparation:
        return 'preparation';
      case in_progress:
        return 'in-progress';
      case not_done:
        return 'not-done';
      case on_hold:
        return 'on-hold';
      case stopped:
        return 'stopped';
      case completed:
        return 'completed';
      case entered_in_error:
        return 'entered-in-error';
      case unknown:
        return 'unknown';
    }
  }

  String toJson() => toString();
  static EventStatus fromString(String str) {
    switch (str) {
      case 'preparation':
        return EventStatus.preparation;
      case 'in-progress':
        return EventStatus.in_progress;
      case 'not-done':
        return EventStatus.not_done;
      case 'on-hold':
        return EventStatus.on_hold;
      case 'stopped':
        return EventStatus.stopped;
      case 'completed':
        return EventStatus.completed;
      case 'entered-in-error':
        return EventStatus.entered_in_error;
      case 'unknown':
        return EventStatus.unknown;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static EventStatus fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
