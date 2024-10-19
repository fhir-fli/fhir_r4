// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// The type of participant for the action.
@collection
class ActionParticipantType {
  /// Constructor for internal use (like enum)
  ActionParticipantType({this.fhirCode, this.element})
      : assert(
          fhirCode != null || element != null,
          'Either fhirCode or element should be provided',
        );

  /// The ID of the object in the database.
  Id dbId = Isar.autoIncrement;

  /// The String value of this enum (FHIR code)
  final String? fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ActionParticipantType values
  /// patient
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ActionParticipantType patient = ActionParticipantType(
    fhirCode: 'patient',
  );

  /// practitioner
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ActionParticipantType practitioner = ActionParticipantType(
    fhirCode: 'practitioner',
  );

  /// related_person
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ActionParticipantType related_person = ActionParticipantType(
    fhirCode: 'related-person',
  );

  /// device
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ActionParticipantType device = ActionParticipantType(
    fhirCode: 'device',
  );

  /// For instances where an Element is present but not value

  static final ActionParticipantType elementOnly = ActionParticipantType();

  /// List of all enum-like values
  static final List<ActionParticipantType> values = [
    patient,
    practitioner,
    related_person,
    device,
  ];

  /// Returns the enum value with an element attached
  ActionParticipantType withElement(Element? newElement) {
    return ActionParticipantType(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
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

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ActionParticipantType.$fhirCode';
}
