// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The type of participant for the action.
class ActionParticipantType {
  // Private constructor for internal use (like enum)
  ActionParticipantType._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ActionParticipantType values
  /// patient
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ActionParticipantType patient = ActionParticipantType._(
    'patient',
  );

  /// practitioner
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ActionParticipantType practitioner = ActionParticipantType._(
    'practitioner',
  );

  /// related_person
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ActionParticipantType related_person = ActionParticipantType._(
    'related-person',
  );

  /// device
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ActionParticipantType device = ActionParticipantType._(
    'device',
  );

  /// For instances where an Element is present but not value

  static final ActionParticipantType elementOnly = ActionParticipantType._('');

  /// List of all enum-like values
  static final List<ActionParticipantType> values = [
    patient,
    practitioner,
    related_person,
    device,
  ];

  /// Returns the enum value with an element attached
  ActionParticipantType withElement(Element? newElement) {
    return ActionParticipantType._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ActionParticipantType] from JSON.
  static ActionParticipantType fromJson(Map<String, dynamic> json) {
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

  /// String representation
  @override
  String toString() => fhirCode;
}
