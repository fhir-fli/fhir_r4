// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// How a property is represented when serialized.
class PropertyRepresentation {
  // Private constructor for internal use (like enum)
  PropertyRepresentation._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// PropertyRepresentation values
  /// xmlAttr
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PropertyRepresentation xmlAttr = PropertyRepresentation._(
    'xmlAttr',
  );

  /// xmlText
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PropertyRepresentation xmlText = PropertyRepresentation._(
    'xmlText',
  );

  /// typeAttr
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PropertyRepresentation typeAttr = PropertyRepresentation._(
    'typeAttr',
  );

  /// cdaText
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PropertyRepresentation cdaText = PropertyRepresentation._(
    'cdaText',
  );

  /// xhtml
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PropertyRepresentation xhtml = PropertyRepresentation._(
    'xhtml',
  );

  /// For instances where an Element is present but not value

  static final PropertyRepresentation elementOnly =
      PropertyRepresentation._('');

  /// List of all enum-like values
  static final List<PropertyRepresentation> values = [
    xmlAttr,
    xmlText,
    typeAttr,
    cdaText,
    xhtml,
  ];

  /// Returns the enum value with an element attached
  PropertyRepresentation withElement(Element? newElement) {
    return PropertyRepresentation._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [PropertyRepresentation] from JSON.
  static PropertyRepresentation fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return PropertyRepresentation.elementOnly.withElement(element);
    }
    return PropertyRepresentation.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
