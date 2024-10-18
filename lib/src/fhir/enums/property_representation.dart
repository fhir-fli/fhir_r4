// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// How a property is represented when serialized.
enum PropertyRepresentation {
  /// Display: XML Attribute
  /// Definition: In XML, this property is represented as an attribute not an element.
  xmlAttr('xmlAttr'),

  /// Display: XML Text
  /// Definition: This element is represented using the XML text attribute (primitives only).
  xmlText('xmlText'),

  /// Display: Type Attribute
  /// Definition: The type of this element is indicated using xsi:type.
  typeAttr('typeAttr'),

  /// Display: CDA Text Format
  /// Definition: Use CDA narrative instead of XHTML.
  cdaText('cdaText'),

  /// Display: XHTML
  /// Definition: The property is represented using XHTML.
  xhtml('xhtml'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const PropertyRepresentation(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [PropertyRepresentation] instances.
  static PropertyRepresentation fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return PropertyRepresentation.elementOnly.withElement(
        element,
      );
    }
    return PropertyRepresentation.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  PropertyRepresentation withElement(Element? newElement) {
    return PropertyRepresentation.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
