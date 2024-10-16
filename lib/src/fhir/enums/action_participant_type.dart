import 'package:fhir_r4/fhir_r4.dart';

/// The type of participant for the action.
enum ActionParticipantType {
  /// Display: Patient
  /// Definition: The participant is the patient under evaluation.
  patient('patient'),

  /// Display: Practitioner
  /// Definition: The participant is a practitioner involved in the patient's care.
  practitioner('practitioner'),

  /// Display: Related Person
  /// Definition: The participant is a person related to the patient.
  related_person('related-person'),

  /// Display: Device
  /// Definition: The participant is a system or device used in the care of the patient.
  device('device'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ActionParticipantType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ActionParticipantType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ActionParticipantType.elementOnly.withElement(element);
    }
    return ActionParticipantType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ActionParticipantType withElement(Element? newElement) {
    return ActionParticipantType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
