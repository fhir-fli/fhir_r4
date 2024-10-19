// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The type of participant for the action.
@Entity()
class ActionParticipantType extends FhirCode {
  /// Factory constructor to create [ActionParticipantType] from JSON.
  factory ActionParticipantType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ActionParticipantType.elementOnly(element);
    }
    if (values.contains(value)) {
      return ActionParticipantType._(value, element);
    }
    throw ArgumentError(
      'ActionParticipantType.fromJson: JSON value is not a valid value',
    );
  }

  /// patient
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ActionParticipantType.patient([this.element])
      : dbValue = 'patient',
        super('patient', element);

  /// practitioner
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ActionParticipantType.practitioner([this.element])
      : dbValue = 'practitioner',
        super('practitioner', element);

  /// related_person
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ActionParticipantType.related_person([this.element])
      : dbValue = 'related-person',
        super('related-person', element);

  /// device
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ActionParticipantType.device([this.element])
      : dbValue = 'device',
        super('device', element);

  /// For instances where an Element is present but not value

  ActionParticipantType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ActionParticipantType._(super.input, [super.element])
      : dbValue = input,
        // ignore: prefer_initializing_formals
        element = element;

  @override
  @Id()
  // ignore: overridden_fields
  int dbId = 0;

  /// Value to store in ObjectBox
  @override
  // ignore: overridden_fields
  String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  Element? element;

  /// List of all enum-like values
  @Transient()
  static final List<String> values = [
    'patient',
    'practitioner',
    'related-person',
    'device',
  ];

  /// Returns the enum value with an element attached
  ActionParticipantType withElement(Element? newElement) {
    return ActionParticipantType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ActionParticipantType.$value';
}
