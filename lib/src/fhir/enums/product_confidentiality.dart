import 'package:fhir_r4/fhir_r4.dart';

/// Confidentiality rating, e.g. commercial sensitivity for a Medicinal Product.
enum ProductConfidentiality {
  /// Display: Commercially Sensitive
  /// Definition: Commercially Sensitive
  CommerciallySensitive('CommerciallySensitive'),

  /// Display: Not Commercially Sensitive
  /// Definition: Not Commercially Sensitive
  NotCommerciallySensitive('NotCommerciallySensitive'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ProductConfidentiality(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ProductConfidentiality fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ProductConfidentiality.elementOnly.withElement(element);
    }
    return ProductConfidentiality.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ProductConfidentiality withElement(Element? newElement) {
    return ProductConfidentiality.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
