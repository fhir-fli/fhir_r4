// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// If this is the default rule set to apply for the source type, or this combination of types.
class StructureMapGroupTypeMode {
  // Private constructor for internal use (like enum)
  StructureMapGroupTypeMode._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// StructureMapGroupTypeMode values
  /// none
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StructureMapGroupTypeMode none = StructureMapGroupTypeMode._(
    'none',
  );

  /// types
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StructureMapGroupTypeMode types = StructureMapGroupTypeMode._(
    'types',
  );

  /// type_and_types
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StructureMapGroupTypeMode type_and_types =
      StructureMapGroupTypeMode._(
    'type-and-types',
  );

  /// For instances where an Element is present but not value

  static final StructureMapGroupTypeMode elementOnly =
      StructureMapGroupTypeMode._('');

  /// List of all enum-like values
  static final List<StructureMapGroupTypeMode> values = [
    none,
    types,
    type_and_types,
  ];

  /// Returns the enum value with an element attached
  StructureMapGroupTypeMode withElement(Element? newElement) {
    return StructureMapGroupTypeMode._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [StructureMapGroupTypeMode] from JSON.
  static StructureMapGroupTypeMode fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return StructureMapGroupTypeMode.elementOnly.withElement(element);
    }
    return StructureMapGroupTypeMode.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'StructureMapGroupTypeMode.$fhirCode';
}
