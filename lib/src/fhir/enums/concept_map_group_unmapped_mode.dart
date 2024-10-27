// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Defines which action to take if there is no match in the group.
class ConceptMapGroupUnmappedMode {
  // Private constructor for internal use (like enum)
  ConceptMapGroupUnmappedMode._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ConceptMapGroupUnmappedMode values
  /// provided
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConceptMapGroupUnmappedMode provided =
      ConceptMapGroupUnmappedMode._(
    'provided',
  );

  /// fixed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConceptMapGroupUnmappedMode fixed =
      ConceptMapGroupUnmappedMode._(
    'fixed',
  );

  /// other_map
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConceptMapGroupUnmappedMode other_map =
      ConceptMapGroupUnmappedMode._(
    'other-map',
  );

  /// For instances where an Element is present but not value

  static final ConceptMapGroupUnmappedMode elementOnly =
      ConceptMapGroupUnmappedMode._('');

  /// List of all enum-like values
  static final List<ConceptMapGroupUnmappedMode> values = [
    provided,
    fixed,
    other_map,
  ];

  /// Returns the enum value with an element attached
  ConceptMapGroupUnmappedMode withElement(Element? newElement) {
    return ConceptMapGroupUnmappedMode._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ConceptMapGroupUnmappedMode] from JSON.
  static ConceptMapGroupUnmappedMode fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConceptMapGroupUnmappedMode.elementOnly.withElement(element);
    }
    return ConceptMapGroupUnmappedMode.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
