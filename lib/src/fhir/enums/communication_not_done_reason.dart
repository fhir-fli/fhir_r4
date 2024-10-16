import 'package:fhir_r4/fhir_r4.dart';

/// Codes for the reason why a communication did not happen.
enum CommunicationNotDoneReason {
  /// Display: Unknown
  /// Definition: The communication was not done due to an unknown reason.
  unknown('unknown'),

  /// Display: System Error
  /// Definition: The communication was not done due to a system error.
  system_error('system-error'),

  /// Display: Invalid Phone Number
  /// Definition: The communication was not done due to an invalid phone number.
  invalid_phone_number('invalid-phone-number'),

  /// Display: Recipient Unavailable
  /// Definition: The communication was not done due to the recipient being unavailable.
  recipient_unavailable('recipient-unavailable'),

  /// Display: Family Objection
  /// Definition: The communication was not done due to a family objection.
  family_objection('family-objection'),

  /// Display: Patient Objection
  /// Definition: The communication was not done due to a patient objection.
  patient_objection('patient-objection'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const CommunicationNotDoneReason(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static CommunicationNotDoneReason fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CommunicationNotDoneReason.elementOnly.withElement(element);
    }
    return CommunicationNotDoneReason.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  CommunicationNotDoneReason withElement(Element? newElement) {
    return CommunicationNotDoneReason.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
