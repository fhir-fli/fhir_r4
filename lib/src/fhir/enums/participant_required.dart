// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

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

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ParticipantRequired(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ParticipantRequired] instances.
  static ParticipantRequired fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ParticipantRequired.elementOnly.withElement(
        element,
      );
    }
    return ParticipantRequired.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  ParticipantRequired withElement(Element? newElement) {
    return ParticipantRequired.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
