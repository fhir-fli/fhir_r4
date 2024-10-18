// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Relationship to another Medicinal Product.
enum ProductCrossReferenceType {
  /// Display: Link to Investigational Product
  /// Definition: Link to Investigational (Development) Product
  InvestigationalProduct('InvestigationalProduct'),

  /// Display: Link Actual to Virtual Product
  /// Definition: Link Actual to Virtual Product
  VirtualProduct('VirtualProduct'),

  /// Display: Link Virtual to Actual Product
  /// Definition: Link Virtual to Actual Product
  ActualProduct('ActualProduct'),

  /// Display: Link Generic to Branded Product
  /// Definition: Link Generic to Branded Product
  BrandedProduct('BrandedProduct'),

  /// Display: Link Branded to Generic Product
  /// Definition: Link Branded to Generic Product
  GenericProduct('GenericProduct'),

  /// Display: Link to Parallel Import Product
  /// Definition: Link to Parallel Import Product
  Parallel('Parallel'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ProductCrossReferenceType(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ProductCrossReferenceType] instances.
  static ProductCrossReferenceType fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ProductCrossReferenceType.elementOnly.withElement(element);
    }
    return ProductCrossReferenceType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  ProductCrossReferenceType withElement(Element? newElement) {
    return ProductCrossReferenceType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
