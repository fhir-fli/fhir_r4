/// MedicationAdministration Status Codes
enum MedicationAdministrationStatusCodes {
  /// Display: In Progress
  /// Definition: The administration has started but has not yet completed.
  in_progress,

  /// Display: Not Done
  /// Definition: The administration was terminated prior to any impact on the subject (though preparatory actions may have been taken)
  not_done,

  /// Display: On Hold
  /// Definition: Actions implied by the administration have been temporarily halted, but are expected to continue later. May also be called 'suspended'.
  on_hold,

  /// Display: Completed
  /// Definition: All actions that are implied by the administration have occurred.
  completed,

  /// Display: Entered in Error
  /// Definition: The administration was entered in error and therefore nullified.
  entered_in_error,

  /// Display: Stopped
  /// Definition: Actions implied by the administration have been permanently halted, before all of them occurred.
  stopped,

  /// Display: Unknown
  /// Definition: The authoring system does not know which of the status values currently applies for this request. Note: This concept is not to be used for 'other' - one of the listed statuses is presumed to apply, it's just not known which one.
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
  static MedicationAdministrationStatusCodes fromString(String str) {
    switch (str) {
      case 'in-progress':
        return MedicationAdministrationStatusCodes.in_progress;
      case 'not-done':
        return MedicationAdministrationStatusCodes.not_done;
      case 'on-hold':
        return MedicationAdministrationStatusCodes.on_hold;
      case 'completed':
        return MedicationAdministrationStatusCodes.completed;
      case 'entered-in-error':
        return MedicationAdministrationStatusCodes.entered_in_error;
      case 'stopped':
        return MedicationAdministrationStatusCodes.stopped;
      case 'unknown':
        return MedicationAdministrationStatusCodes.unknown;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static MedicationAdministrationStatusCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
