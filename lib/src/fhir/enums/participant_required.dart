import 'package:fhir_r4/fhir_r4.dart';

/// Is the Participant required to attend the appointment.
enum ParticipantRequired {
  /// Display: Required
  /// Definition: The participant is required to attend the appointment.
  required_('required'),

  /// Display: Optional
  /// Definition: The participant may optionally attend the appointment.
  optional('optional'),

  /// Display: Information Only
  /// Definition: The participant is excluded from the appointment, and might not be informed of the appointment taking place. (Appointment is about them, not for them - such as 2 doctors discussing results about a patient's test).
  information_only('information-only'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ParticipantRequired(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ParticipantRequired fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ParticipantRequired.elementOnly.withElement(element);
    }
    return ParticipantRequired.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ParticipantRequired withElement(Element? newElement) {
    return ParticipantRequired.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
