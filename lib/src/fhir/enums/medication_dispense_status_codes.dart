import 'package:json_annotation/json_annotation.dart';

/// MedicationDispense Status Codes
enum MedicationDispenseStatusCodes {
  /// Display: Preparation
  /// Definition: The core event has not started yet, but some staging activities have begun (e.g. initial compounding or packaging of medication). Preparation stages may be tracked for billing purposes.
  @JsonValue('preparation')
  preparation,
  /// Display: In Progress
  /// Definition: The dispensed product is ready for pickup.
  @JsonValue('in-progress')
  in_progress,
  /// Display: Cancelled
  /// Definition: The dispensed product was not and will never be picked up by the patient.
  @JsonValue('cancelled')
  cancelled,
  /// Display: On Hold
  /// Definition: The dispense process is paused while waiting for an external event to reactivate the dispense.  For example, new stock has arrived or the prescriber has called.
  @JsonValue('on-hold')
  on_hold,
  /// Display: Completed
  /// Definition: The dispensed product has been picked up.
  @JsonValue('completed')
  completed,
  /// Display: Entered in Error
  /// Definition: The dispense was entered in error and therefore nullified.
  @JsonValue('entered-in-error')
  entered_in_error,
  /// Display: Stopped
  /// Definition: Actions implied by the dispense have been permanently halted, before all of them occurred.
  @JsonValue('stopped')
  stopped,
  /// Display: Declined
  /// Definition: The dispense was declined and not performed.
  @JsonValue('declined')
  declined,
  /// Display: Unknown
  /// Definition: The authoring system does not know which of the status values applies for this medication dispense.  Note: this concept is not to be used for other - one of the listed statuses is presumed to apply, it's just now known which one.
  @JsonValue('unknown')
  unknown,
;

@override
  String toString() {
      switch(this) {
        case preparation: return 'preparation';
        case in_progress: return 'in-progress';
        case cancelled: return 'cancelled';
        case on_hold: return 'on-hold';
        case completed: return 'completed';
        case entered_in_error: return 'entered-in-error';
        case stopped: return 'stopped';
        case declined: return 'declined';
        case unknown: return 'unknown';
      }
      }
String toJson() => toString();
  MedicationDispenseStatusCodes fromString(String str) {
    switch(str) {
      case 'preparation': return MedicationDispenseStatusCodes.preparation;
      case 'in-progress': return MedicationDispenseStatusCodes.in_progress;
      case 'cancelled': return MedicationDispenseStatusCodes.cancelled;
      case 'on-hold': return MedicationDispenseStatusCodes.on_hold;
      case 'completed': return MedicationDispenseStatusCodes.completed;
      case 'entered-in-error': return MedicationDispenseStatusCodes.entered_in_error;
      case 'stopped': return MedicationDispenseStatusCodes.stopped;
      case 'declined': return MedicationDispenseStatusCodes.declined;
      case 'unknown': return MedicationDispenseStatusCodes.unknown;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 MedicationDispenseStatusCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}
