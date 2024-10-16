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
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const PropertyRepresentation(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static PropertyRepresentation fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return PropertyRepresentation.elementOnly.withElement(element);
    }
    return PropertyRepresentation.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  PropertyRepresentation withElement(Element? newElement) {
    return PropertyRepresentation.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
