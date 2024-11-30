// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes sample Exception codes.
class ExceptionCodes {
  // Private constructor for internal use (like enum)
  ExceptionCodes._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ExceptionCodes values
  /// student
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExceptionCodes student = ExceptionCodes._(
    'student',
  );

  /// disabled
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExceptionCodes disabled = ExceptionCodes._(
    'disabled',
  );

  /// For instances where an Element is present but not value

  static final ExceptionCodes elementOnly = ExceptionCodes._('');

  /// List of all enum-like values
  static final List<ExceptionCodes> values = [
    student,
    disabled,
  ];

  /// Returns the enum value with an element attached
  ExceptionCodes withElement(Element? newElement) {
    return ExceptionCodes._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ExceptionCodes] from JSON.
  static ExceptionCodes fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExceptionCodes.elementOnly.withElement(element);
    }
    return ExceptionCodes._(value!, element: element);
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
