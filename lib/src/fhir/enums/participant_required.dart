// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Is the Participant required to attend the appointment.
class ParticipantRequired {
  // Private constructor for internal use (like enum)
  ParticipantRequired._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ParticipantRequired values
  /// required_
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipantRequired required_ = ParticipantRequired._(
    'required',
  );

  /// optional
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipantRequired optional = ParticipantRequired._(
    'optional',
  );

  /// information_only
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipantRequired information_only = ParticipantRequired._(
    'information-only',
  );

  /// For instances where an Element is present but not value

  static final ParticipantRequired elementOnly = ParticipantRequired._('');

  /// List of all enum-like values
  static final List<ParticipantRequired> values = [
    required_,
    optional,
    information_only,
  ];

  /// Returns the enum value with an element attached
  ParticipantRequired withElement(Element? newElement) {
    return ParticipantRequired._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ParticipantRequired] from JSON.
  static ParticipantRequired fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ParticipantRequired.elementOnly.withElement(element);
    }
    return ParticipantRequired._(value!, element: element);
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
