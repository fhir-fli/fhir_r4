/// Codes that reflect the current state of a goal and whether the goal is still being targeted.
enum GoalLifecycleStatus {
  /// Display: Proposed
  /// Definition: A goal is proposed for this patient.
  proposed,

  /// Display: Planned
  /// Definition: A goal is planned for this patient.
  planned,

  /// Display: Accepted
  /// Definition: A proposed goal was accepted or acknowledged.
  accepted,

  /// Display: Active
  /// Definition: The goal is being sought actively.
  active,

  /// Display: On Hold
  /// Definition: The goal remains a long term objective but is no longer being actively pursued for a temporary period of time.
  on_hold,

  /// Display: Completed
  /// Definition: The goal is no longer being sought.
  completed,

  /// Display: Cancelled
  /// Definition: The goal has been abandoned.
  cancelled,

  /// Display: Entered in Error
  /// Definition: The goal was entered in error and voided.
  entered_in_error,

  /// Display: Rejected
  /// Definition: A proposed goal was rejected.
  rejected,
  ;

  @override
  String toString() {
    switch (this) {
      case proposed:
        return 'proposed';
      case planned:
        return 'planned';
      case accepted:
        return 'accepted';
      case active:
        return 'active';
      case on_hold:
        return 'on-hold';
      case completed:
        return 'completed';
      case cancelled:
        return 'cancelled';
      case entered_in_error:
        return 'entered-in-error';
      case rejected:
        return 'rejected';
    }
  }

  /// Returns a [String] from a [GoalLifecycleStatus] enum.
  String toJson() => toString();

  /// Returns a [GoalLifecycleStatus] from a [String] enum.
  static GoalLifecycleStatus fromString(String str) {
    switch (str) {
      case 'proposed':
        return GoalLifecycleStatus.proposed;
      case 'planned':
        return GoalLifecycleStatus.planned;
      case 'accepted':
        return GoalLifecycleStatus.accepted;
      case 'active':
        return GoalLifecycleStatus.active;
      case 'on-hold':
        return GoalLifecycleStatus.on_hold;
      case 'completed':
        return GoalLifecycleStatus.completed;
      case 'cancelled':
        return GoalLifecycleStatus.cancelled;
      case 'entered-in-error':
        return GoalLifecycleStatus.entered_in_error;
      case 'rejected':
        return GoalLifecycleStatus.rejected;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [GoalLifecycleStatus] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static GoalLifecycleStatus fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
