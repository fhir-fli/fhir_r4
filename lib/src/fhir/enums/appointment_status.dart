import 'package:fhir_r4/fhir_r4.dart';

/// The free/busy status of an appointment.
enum AppointmentStatus {
  /// Display: Proposed
  /// Definition: None of the participant(s) have finalized their acceptance of the appointment request, and the start/end time might not be set yet.
  proposed('proposed'),

  /// Display: Pending
  /// Definition: Some or all of the participant(s) have not finalized their acceptance of the appointment request.
  pending('pending'),

  /// Display: Booked
  /// Definition: All participant(s) have been considered and the appointment is confirmed to go ahead at the date/times specified.
  booked('booked'),

  /// Display: Arrived
  /// Definition: The patient/patients has/have arrived and is/are waiting to be seen.
  arrived('arrived'),

  /// Display: Fulfilled
  /// Definition: The planning stages of the appointment are now complete, the encounter resource will exist and will track further status changes. Note that an encounter may exist before the appointment status is fulfilled for many reasons.
  fulfilled('fulfilled'),

  /// Display: Cancelled
  /// Definition: The appointment has been cancelled.
  cancelled('cancelled'),

  /// Display: No Show
  /// Definition: Some or all of the participant(s) have not/did not appear for the appointment (usually the patient).
  noshow('noshow'),

  /// Display: Entered in error
  /// Definition: This instance should not have been part of this patient's medical record.
  entered_in_error('entered-in-error'),

  /// Display: Checked In
  /// Definition: When checked in, all pre-encounter administrative work is complete, and the encounter may begin. (where multiple patients are involved, they are all present).
  checked_in('checked-in'),

  /// Display: Waitlisted
  /// Definition: The appointment has been placed on a waitlist, to be scheduled/confirmed in the future when a slot/service is available. A specific time might or might not be pre-allocated.
  waitlist('waitlist'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const AppointmentStatus(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static AppointmentStatus fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AppointmentStatus.elementOnly.withElement(element);
    }
    return AppointmentStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  AppointmentStatus withElement(Element? newElement) {
    return AppointmentStatus.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
