// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// How to interpret the context.
class StructureMapContextType {
  // Private constructor for internal use (like enum)
  StructureMapContextType._(this.fhirCode, {this.element});

  /// Factory constructor to create [StructureMapContextType] from JSON.
  factory StructureMapContextType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return StructureMapContextType.elementOnly.withElement(element);
    }
    return StructureMapContextType._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// StructureMapContextType values
  /// type
  static final StructureMapContextType type = StructureMapContextType._(
    'type',
  );

  /// variable
  static final StructureMapContextType variable = StructureMapContextType._(
    'variable',
  );

  /// For instances where an Element is present but not value

  static final StructureMapContextType elementOnly =
      StructureMapContextType._('');

  /// List of all enum-like values
  static final List<StructureMapContextType> values = [
    type,
    variable,
  ];

  /// Returns the enum value with an element attached
  StructureMapContextType withElement(Element? newElement) {
    return StructureMapContextType._(fhirCode, element: newElement);
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
