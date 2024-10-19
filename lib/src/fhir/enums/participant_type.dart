// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// This value set defines a set of codes that can be used to indicate how an individual participates in an encounter.
@Entity()
class ParticipantType extends FhirCode {
  /// Factory constructor to create [ParticipantType] from JSON.
  factory ParticipantType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ParticipantType.elementOnly(element);
    }
    if (values.contains(value)) {
      return ParticipantType._(value, element);
    }
    throw ArgumentError(
      'ParticipantType.fromJson: JSON value is not a valid value',
    );
  }

  /// SPRF
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ParticipantType.SPRF([this.element])
      : dbValue = 'SPRF',
        super('SPRF', element);

  /// PPRF
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ParticipantType.PPRF([this.element])
      : dbValue = 'PPRF',
        super('PPRF', element);

  /// PART
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ParticipantType.PART([this.element])
      : dbValue = 'PART',
        super('PART', element);

  /// translator
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ParticipantType.translator([this.element])
      : dbValue = 'translator',
        super('translator', element);

  /// emergency
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ParticipantType.emergency([this.element])
      : dbValue = 'emergency',
        super('emergency', element);

  /// For instances where an Element is present but not value

  ParticipantType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ParticipantType._(super.input, [super.element])
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
    'SPRF',
    'PPRF',
    'PART',
    'translator',
    'emergency',
  ];

  /// Returns the enum value with an element attached
  ParticipantType withElement(Element? newElement) {
    return ParticipantType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ParticipantType.$value';
}
