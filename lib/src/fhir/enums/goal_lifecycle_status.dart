import 'package:json_annotation/json_annotation.dart';

/// Codes that reflect the current state of a goal and whether the goal is still being targeted.
enum GoalLifecycleStatus {
  /// Display: Proposed
  /// Definition: A goal is proposed for this patient.
  @JsonValue('proposed')
  proposed,

  /// Display: Planned
  /// Definition: A goal is planned for this patient.
  @JsonValue('planned')
  planned,

  /// Display: Accepted
  /// Definition: A proposed goal was accepted or acknowledged.
  @JsonValue('accepted')
  accepted,

  /// Display: Active
  /// Definition: The goal is being sought actively.
  @JsonValue('active')
  active,

  /// Display: On Hold
  /// Definition: The goal remains a long term objective but is no longer being actively pursued for a temporary period of time.
  @JsonValue('on-hold')
  on_hold,

  /// Display: Completed
  /// Definition: The goal is no longer being sought.
  @JsonValue('completed')
  completed,

  /// Display: Cancelled
  /// Definition: The goal has been abandoned.
  @JsonValue('cancelled')
  cancelled,

  /// Display: Entered in Error
  /// Definition: The goal was entered in error and voided.
  @JsonValue('entered-in-error')
  entered_in_error,

  /// Display: Rejected
  /// Definition: A proposed goal was rejected.
  @JsonValue('rejected')
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

  String toJson() => toString();
  GoalLifecycleStatus fromString(String str) {
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

  GoalLifecycleStatus fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
