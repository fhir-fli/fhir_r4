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
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ProductCrossReferenceType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ProductCrossReferenceType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ProductCrossReferenceType.elementOnly.withElement(element);
    }
    return ProductCrossReferenceType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ProductCrossReferenceType withElement(Element? newElement) {
    return ProductCrossReferenceType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
