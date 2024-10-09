/// The free/busy status of an appointment.
enum AppointmentStatus {
  /// Display: Proposed
  /// Definition: None of the participant(s) have finalized their acceptance of the appointment request, and the start/end time might not be set yet.
  proposed,

  /// Display: Pending
  /// Definition: Some or all of the participant(s) have not finalized their acceptance of the appointment request.
  pending,

  /// Display: Booked
  /// Definition: All participant(s) have been considered and the appointment is confirmed to go ahead at the date/times specified.
  booked,

  /// Display: Arrived
  /// Definition: The patient/patients has/have arrived and is/are waiting to be seen.
  arrived,

  /// Display: Fulfilled
  /// Definition: The planning stages of the appointment are now complete, the encounter resource will exist and will track further status changes. Note that an encounter may exist before the appointment status is fulfilled for many reasons.
  fulfilled,

  /// Display: Cancelled
  /// Definition: The appointment has been cancelled.
  cancelled,

  /// Display: No Show
  /// Definition: Some or all of the participant(s) have not/did not appear for the appointment (usually the patient).
  noshow,

  /// Display: Entered in error
  /// Definition: This instance should not have been part of this patient's medical record.
  entered_in_error,

  /// Display: Checked In
  /// Definition: When checked in, all pre-encounter administrative work is complete, and the encounter may begin. (where multiple patients are involved, they are all present).
  checked_in,

  /// Display: Waitlisted
  /// Definition: The appointment has been placed on a waitlist, to be scheduled/confirmed in the future when a slot/service is available. A specific time might or might not be pre-allocated.
  waitlist,
  ;

  @override
  String toString() {
    switch (this) {
      case proposed:
        return 'proposed';
      case pending:
        return 'pending';
      case booked:
        return 'booked';
      case arrived:
        return 'arrived';
      case fulfilled:
        return 'fulfilled';
      case cancelled:
        return 'cancelled';
      case noshow:
        return 'noshow';
      case entered_in_error:
        return 'entered-in-error';
      case checked_in:
        return 'checked-in';
      case waitlist:
        return 'waitlist';
    }
  }

  String toJson() => toString();
  static AppointmentStatus fromString(String str) {
    switch (str) {
      case 'proposed':
        return AppointmentStatus.proposed;
      case 'pending':
        return AppointmentStatus.pending;
      case 'booked':
        return AppointmentStatus.booked;
      case 'arrived':
        return AppointmentStatus.arrived;
      case 'fulfilled':
        return AppointmentStatus.fulfilled;
      case 'cancelled':
        return AppointmentStatus.cancelled;
      case 'noshow':
        return AppointmentStatus.noshow;
      case 'entered-in-error':
        return AppointmentStatus.entered_in_error;
      case 'checked-in':
        return AppointmentStatus.checked_in;
      case 'waitlist':
        return AppointmentStatus.waitlist;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static AppointmentStatus fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
