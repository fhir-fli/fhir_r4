import 'package:json_annotation/json_annotation.dart';

/// MedicationRequest Status Codes
enum MedicationrequestStatus {
  /// Display: Active
  /// Definition: The prescription is 'actionable', but not all actions that are implied by it have occurred yet.
  @JsonValue('active')
  active,

  /// Display: On Hold
  /// Definition: Actions implied by the prescription are to be temporarily halted, but are expected to continue later.  May also be called 'suspended'.
  @JsonValue('on-hold')
  on_hold,

  /// Display: Cancelled
  /// Definition: The prescription has been withdrawn before any administrations have occurred
  @JsonValue('cancelled')
  cancelled,

  /// Display: Completed
  /// Definition: All actions that are implied by the prescription have occurred.
  @JsonValue('completed')
  completed,

  /// Display: Entered in Error
  /// Definition: Some of the actions that are implied by the medication request may have occurred.  For example, the medication may have been dispensed and the patient may have taken some of the medication.  Clinical decision support systems should take this status into account
  @JsonValue('entered-in-error')
  entered_in_error,

  /// Display: Stopped
  /// Definition: Actions implied by the prescription are to be permanently halted, before all of the administrations occurred. This should not be used if the original order was entered in error
  @JsonValue('stopped')
  stopped,

  /// Display: Draft
  /// Definition: The prescription is not yet 'actionable', e.g. it is a work in progress, requires sign-off, verification or needs to be run through decision support process.
  @JsonValue('draft')
  draft,

  /// Display: Unknown
  /// Definition: The authoring/source system does not know which of the status values currently applies for this observation. Note: This concept is not to be used for 'other' - one of the listed statuses is presumed to apply, but the authoring/source system does not know which.
  @JsonValue('unknown')
  unknown,
  ;

  @override
  String toString() {
    switch (this) {
      case active:
        return 'active';
      case on_hold:
        return 'on-hold';
      case cancelled:
        return 'cancelled';
      case completed:
        return 'completed';
      case entered_in_error:
        return 'entered-in-error';
      case stopped:
        return 'stopped';
      case draft:
        return 'draft';
      case unknown:
        return 'unknown';
    }
  }

  String toJson() => toString();
  static MedicationrequestStatus fromString(String str) {
    switch (str) {
      case 'active':
        return MedicationrequestStatus.active;
      case 'on-hold':
        return MedicationrequestStatus.on_hold;
      case 'cancelled':
        return MedicationrequestStatus.cancelled;
      case 'completed':
        return MedicationrequestStatus.completed;
      case 'entered-in-error':
        return MedicationrequestStatus.entered_in_error;
      case 'stopped':
        return MedicationrequestStatus.stopped;
      case 'draft':
        return MedicationrequestStatus.draft;
      case 'unknown':
        return MedicationrequestStatus.unknown;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static MedicationrequestStatus fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
