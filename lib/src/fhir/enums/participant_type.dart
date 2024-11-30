// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set defines a set of codes that can be used to indicate how an individual participates in an encounter.
class ParticipantType {
  // Private constructor for internal use (like enum)
  ParticipantType._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ParticipantType values
  /// SPRF
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipantType SPRF = ParticipantType._(
    'SPRF',
  );

  /// PPRF
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipantType PPRF = ParticipantType._(
    'PPRF',
  );

  /// PART
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipantType PART = ParticipantType._(
    'PART',
  );

  /// translator
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipantType translator = ParticipantType._(
    'translator',
  );

  /// emergency
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipantType emergency = ParticipantType._(
    'emergency',
  );

  /// For instances where an Element is present but not value

  static final ParticipantType elementOnly = ParticipantType._('');

  /// List of all enum-like values
  static final List<ParticipantType> values = [
    SPRF,
    PPRF,
    PART,
    translator,
    emergency,
  ];

  /// Returns the enum value with an element attached
  ParticipantType withElement(Element? newElement) {
    return ParticipantType._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ParticipantType] from JSON.
  static ParticipantType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ParticipantType.elementOnly.withElement(element);
    }
    return ParticipantType._(value!, element: element);
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
