import 'package:json_annotation/json_annotation.dart';

/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support describing the current status of the evaluation for vaccine administration event.
enum ImmunizationEvaluationStatusCodes {
  /// Display: In Progress
  /// Definition: The administration has started but has not yet completed.
  @JsonValue('in-progress')
  in_progress,

  /// Display: Not Done
  /// Definition: The administration was terminated prior to any impact on the subject (though preparatory actions may have been taken)
  @JsonValue('not-done')
  not_done,

  /// Display: On Hold
  /// Definition: Actions implied by the administration have been temporarily halted, but are expected to continue later. May also be called 'suspended'.
  @JsonValue('on-hold')
  on_hold,

  /// Display: Completed
  /// Definition: All actions that are implied by the administration have occurred.
  @JsonValue('completed')
  completed,

  /// Display: Entered in Error
  /// Definition: The administration was entered in error and therefore nullified.
  @JsonValue('entered-in-error')
  entered_in_error,

  /// Display: Stopped
  /// Definition: Actions implied by the administration have been permanently halted, before all of them occurred.
  @JsonValue('stopped')
  stopped,

  /// Display: Unknown
  /// Definition: The authoring system does not know which of the status values currently applies for this request. Note: This concept is not to be used for 'other' - one of the listed statuses is presumed to apply, it's just not known which one.
  @JsonValue('unknown')
  unknown,
  ;

  @override
  String toString() {
    switch (this) {
      case in_progress:
        return 'in-progress';
      case not_done:
        return 'not-done';
      case on_hold:
        return 'on-hold';
      case completed:
        return 'completed';
      case entered_in_error:
        return 'entered-in-error';
      case stopped:
        return 'stopped';
      case unknown:
        return 'unknown';
    }
  }

  String toJson() => toString();
  ImmunizationEvaluationStatusCodes fromString(String str) {
    switch (str) {
      case 'in-progress':
        return ImmunizationEvaluationStatusCodes.in_progress;
      case 'not-done':
        return ImmunizationEvaluationStatusCodes.not_done;
      case 'on-hold':
        return ImmunizationEvaluationStatusCodes.on_hold;
      case 'completed':
        return ImmunizationEvaluationStatusCodes.completed;
      case 'entered-in-error':
        return ImmunizationEvaluationStatusCodes.entered_in_error;
      case 'stopped':
        return ImmunizationEvaluationStatusCodes.stopped;
      case 'unknown':
        return ImmunizationEvaluationStatusCodes.unknown;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  ImmunizationEvaluationStatusCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
