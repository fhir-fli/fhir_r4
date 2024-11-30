// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Mode for this instance of data.
class StructureMapInputMode {
  // Private constructor for internal use (like enum)
  StructureMapInputMode._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// StructureMapInputMode values
  /// source
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StructureMapInputMode source = StructureMapInputMode._(
    'source',
  );

  /// target
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StructureMapInputMode target = StructureMapInputMode._(
    'target',
  );

  /// For instances where an Element is present but not value

  static final StructureMapInputMode elementOnly = StructureMapInputMode._('');

  /// List of all enum-like values
  static final List<StructureMapInputMode> values = [
    source,
    target,
  ];

  /// Returns the enum value with an element attached
  StructureMapInputMode withElement(Element? newElement) {
    return StructureMapInputMode._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [StructureMapInputMode] from JSON.
  static StructureMapInputMode fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return StructureMapInputMode.elementOnly.withElement(element);
    }
    return StructureMapInputMode._(value!, element: element);
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
