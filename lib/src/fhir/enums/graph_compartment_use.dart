// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Defines how a compartment rule is used.
class GraphCompartmentUse {
  // Private constructor for internal use (like enum)
  GraphCompartmentUse._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// GraphCompartmentUse values
  /// condition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GraphCompartmentUse condition = GraphCompartmentUse._(
    'condition',
  );

  /// requirement
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GraphCompartmentUse requirement = GraphCompartmentUse._(
    'requirement',
  );

  /// For instances where an Element is present but not value

  static final GraphCompartmentUse elementOnly = GraphCompartmentUse._('');

  /// List of all enum-like values
  static final List<GraphCompartmentUse> values = [
    condition,
    requirement,
  ];

  /// Returns the enum value with an element attached
  GraphCompartmentUse withElement(Element? newElement) {
    return GraphCompartmentUse._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [GraphCompartmentUse] from JSON.
  static GraphCompartmentUse fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GraphCompartmentUse.elementOnly.withElement(element);
    }
    return GraphCompartmentUse.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
