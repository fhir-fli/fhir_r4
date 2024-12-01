// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The presentation types of notes.
class NoteType {
  // Private constructor for internal use (like enum)
  NoteType._(this.fhirCode, {this.element});

  /// Factory constructor to create [NoteType] from JSON.
  factory NoteType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return NoteType.elementOnly.withElement(element);
    }
    return NoteType._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// NoteType values
  /// display
  static final NoteType display = NoteType._(
    'display',
  );

  /// print
  static final NoteType print = NoteType._(
    'print',
  );

  /// printoper
  static final NoteType printoper = NoteType._(
    'printoper',
  );

  /// For instances where an Element is present but not value

  static final NoteType elementOnly = NoteType._('');

  /// List of all enum-like values
  static final List<NoteType> values = [
    display,
    print,
    printoper,
  ];

  /// Returns the enum value with an element attached
  NoteType withElement(Element? newElement) {
    return NoteType._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => fhirCode;
}
