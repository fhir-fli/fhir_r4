/// The current status of the task.
enum TaskStatus {
  /// Display: Draft
  /// Definition: The task is not yet ready to be acted upon.
  draft,

  /// Display: Requested
  /// Definition: The task is ready to be acted upon and action is sought.
  requested,

  /// Display: Received
  /// Definition: A potential performer has claimed ownership of the task and is evaluating whether to perform it.
  received,

  /// Display: Accepted
  /// Definition: The potential performer has agreed to execute the task but has not yet started work.
  accepted,

  /// Display: Rejected
  /// Definition: The potential performer who claimed ownership of the task has decided not to execute it prior to performing any action.
  rejected,

  /// Display: Ready
  /// Definition: The task is ready to be performed, but no action has yet been taken.  Used in place of requested/received/accepted/rejected when request assignment and acceptance is a given.
  ready,

  /// Display: Cancelled
  /// Definition: The task was not completed.
  cancelled,

  /// Display: In Progress
  /// Definition: The task has been started but is not yet complete.
  in_progress,

  /// Display: On Hold
  /// Definition: The task has been started but work has been paused.
  on_hold,

  /// Display: Failed
  /// Definition: The task was attempted but could not be completed due to some error.
  failed,

  /// Display: Completed
  /// Definition: The task has been completed.
  completed,

  /// Display: Entered in Error
  /// Definition: The task should never have existed and is retained only because of the possibility it may have used.
  entered_in_error,
  ;

  @override
  String toString() {
    switch (this) {
      case draft:
        return 'draft';
      case requested:
        return 'requested';
      case received:
        return 'received';
      case accepted:
        return 'accepted';
      case rejected:
        return 'rejected';
      case ready:
        return 'ready';
      case cancelled:
        return 'cancelled';
      case in_progress:
        return 'in-progress';
      case on_hold:
        return 'on-hold';
      case failed:
        return 'failed';
      case completed:
        return 'completed';
      case entered_in_error:
        return 'entered-in-error';
    }
  }

  /// Returns a [String] from a [TaskStatus] enum.
  String toJson() => toString();

  /// Returns a [TaskStatus] from a [String] enum.
  static TaskStatus fromString(String str) {
    switch (str) {
      case 'draft':
        return TaskStatus.draft;
      case 'requested':
        return TaskStatus.requested;
      case 'received':
        return TaskStatus.received;
      case 'accepted':
        return TaskStatus.accepted;
      case 'rejected':
        return TaskStatus.rejected;
      case 'ready':
        return TaskStatus.ready;
      case 'cancelled':
        return TaskStatus.cancelled;
      case 'in-progress':
        return TaskStatus.in_progress;
      case 'on-hold':
        return TaskStatus.on_hold;
      case 'failed':
        return TaskStatus.failed;
      case 'completed':
        return TaskStatus.completed;
      case 'entered-in-error':
        return TaskStatus.entered_in_error;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [TaskStatus] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static TaskStatus fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
