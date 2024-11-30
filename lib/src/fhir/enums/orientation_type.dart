// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Type for orientation.
class OrientationType {
  // Private constructor for internal use (like enum)
  OrientationType._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// OrientationType values
  /// sense
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final OrientationType sense = OrientationType._(
    'sense',
  );

  /// antisense
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final OrientationType antisense = OrientationType._(
    'antisense',
  );

  /// For instances where an Element is present but not value

  static final OrientationType elementOnly = OrientationType._('');

  /// List of all enum-like values
  static final List<OrientationType> values = [
    sense,
    antisense,
  ];

  /// Returns the enum value with an element attached
  OrientationType withElement(Element? newElement) {
    return OrientationType._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [OrientationType] from JSON.
  static OrientationType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return OrientationType.elementOnly.withElement(element);
    }
    return OrientationType._(value!, element: element);
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
