// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

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

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ActionParticipantType(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ActionParticipantType] instances.
  static ActionParticipantType fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ActionParticipantType.elementOnly.withElement(element);
    }
    return ActionParticipantType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  ActionParticipantType withElement(Element? newElement) {
    return ActionParticipantType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
