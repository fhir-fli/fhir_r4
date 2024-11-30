// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes example Procedure Type codes.
class ExampleProcedureTypeCodes {
  // Private constructor for internal use (like enum)
  ExampleProcedureTypeCodes._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ExampleProcedureTypeCodes values
  /// primary
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleProcedureTypeCodes primary = ExampleProcedureTypeCodes._(
    'primary',
  );

  /// secondary
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleProcedureTypeCodes secondary =
      ExampleProcedureTypeCodes._(
    'secondary',
  );

  /// For instances where an Element is present but not value

  static final ExampleProcedureTypeCodes elementOnly =
      ExampleProcedureTypeCodes._('');

  /// List of all enum-like values
  static final List<ExampleProcedureTypeCodes> values = [
    primary,
    secondary,
  ];

  /// Returns the enum value with an element attached
  ExampleProcedureTypeCodes withElement(Element? newElement) {
    return ExampleProcedureTypeCodes._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ExampleProcedureTypeCodes] from JSON.
  static ExampleProcedureTypeCodes fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExampleProcedureTypeCodes.elementOnly.withElement(element);
    }
    return ExampleProcedureTypeCodes._(value!, element: element);
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
