import 'package:fhir_r4/fhir_r4.dart';

/// Current state of the encounter.
enum EncounterStatus {
  /// Display: Planned
  /// Definition: The Encounter has not yet started.
  planned('planned'),

  /// Display: Arrived
  /// Definition: The Patient is present for the encounter, however is not currently meeting with a practitioner.
  arrived('arrived'),

  /// Display: Triaged
  /// Definition: The patient has been assessed for the priority of their treatment based on the severity of their condition.
  triaged('triaged'),

  /// Display: In Progress
  /// Definition: The Encounter has begun and the patient is present / the practitioner and the patient are meeting.
  in_progress('in-progress'),

  /// Display: On Leave
  /// Definition: The Encounter has begun, but the patient is temporarily on leave.
  onleave('onleave'),

  /// Display: Finished
  /// Definition: The Encounter has ended.
  finished('finished'),

  /// Display: Cancelled
  /// Definition: The Encounter has ended before it has begun.
  cancelled('cancelled'),

  /// Display: Entered in Error
  /// Definition: This instance should not have been part of this patient's medical record.
  entered_in_error('entered-in-error'),

  /// Display: Unknown
  /// Definition: The encounter status is unknown. Note that "unknown" is a value of last resort and every attempt should be made to provide a meaningful value other than "unknown".
  unknown('unknown'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const EncounterStatus(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static EncounterStatus fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EncounterStatus.elementOnly.withElement(element);
    }
    return EncounterStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  EncounterStatus withElement(Element? newElement) {
    return EncounterStatus.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
