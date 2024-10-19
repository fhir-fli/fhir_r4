// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Is the Participant required to attend the appointment.
@Entity()
class ParticipantRequired extends FhirCode {
  /// Factory constructor to create [ParticipantRequired] from JSON.
  factory ParticipantRequired.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ParticipantRequired.elementOnly(element);
    }
    if (values.contains(value)) {
      return ParticipantRequired._(value, element);
    }
    throw ArgumentError(
      'ParticipantRequired.fromJson: JSON value is not a valid value',
    );
  }

  /// required_
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ParticipantRequired.required_([this.element])
      : dbValue = 'required',
        super('required', element);

  /// optional
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ParticipantRequired.optional([this.element])
      : dbValue = 'optional',
        super('optional', element);

  /// information_only
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ParticipantRequired.information_only([this.element])
      : dbValue = 'information-only',
        super('information-only', element);

  /// For instances where an Element is present but not value

  ParticipantRequired.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ParticipantRequired._(super.input, [super.element])
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
  final String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  final Element? element;

  /// List of all enum-like values
  static final List<String> values = [
    'required',
    'optional',
    'information-only',
  ];

  /// Returns the enum value with an element attached
  ParticipantRequired withElement(Element? newElement) {
    return ParticipantRequired._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ParticipantRequired.$value';
}
