/// MedicationStatement Status Codes
enum MedicationStatementStatusCodes {
  /// Display: Active
  /// Definition: The medication is still being taken.
  active,

  /// Display: Completed
  /// Definition: The medication is no longer being taken.
  completed,

  /// Display: Entered in Error
  /// Definition: Some of the actions that are implied by the medication statement may have occurred.  For example, the patient may have taken some of the medication.  Clinical decision support systems should take this status into account.
  entered_in_error,

  /// Display: Intended
  /// Definition: The medication may be taken at some time in the future.
  intended,

  /// Display: Stopped
  /// Definition: Actions implied by the statement have been permanently halted, before all of them occurred. This should not be used if the statement was entered in error.
  stopped,

  /// Display: On Hold
  /// Definition: Actions implied by the statement have been temporarily halted, but are expected to continue later. May also be called 'suspended'.
  on_hold,

  /// Display: Unknown
  /// Definition: The state of the medication use is not currently known.
  unknown,

  /// Display: Not Taken
  /// Definition: The medication was not consumed by the patient
  not_taken,
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
      case unknown:
        return 'unknown';
      case not_taken:
        return 'not-taken';
    }
  }

  String toJson() => toString();
  static MedicationStatementStatusCodes fromString(String str) {
    switch (str) {
      case 'active':
        return MedicationStatementStatusCodes.active;
      case 'completed':
        return MedicationStatementStatusCodes.completed;
      case 'entered-in-error':
        return MedicationStatementStatusCodes.entered_in_error;
      case 'intended':
        return MedicationStatementStatusCodes.intended;
      case 'stopped':
        return MedicationStatementStatusCodes.stopped;
      case 'on-hold':
        return MedicationStatementStatusCodes.on_hold;
      case 'unknown':
        return MedicationStatementStatusCodes.unknown;
      case 'not-taken':
        return MedicationStatementStatusCodes.not_taken;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static MedicationStatementStatusCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
