// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

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

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const CommunicationNotDoneReason(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [CommunicationNotDoneReason] instances.
  static CommunicationNotDoneReason fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CommunicationNotDoneReason.elementOnly.withElement(
        element,
      );
    }
    return CommunicationNotDoneReason.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  CommunicationNotDoneReason withElement(Element? newElement) {
    return CommunicationNotDoneReason.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
