import 'package:fhir_r4/fhir_r4.dart';

/// The overall intended use of a product.
enum ProductIntendedUse {
  /// Display: Prevention
  /// Definition:
  Prevention('Prevention'),

  /// Display: Treatment
  /// Definition:
  Treatment('Treatment'),

  /// Display: Alleviation
  /// Definition:
  Alleviation('Alleviation'),

  /// Display: Diagnosis
  /// Definition:
  Diagnosis('Diagnosis'),

  /// Display: Monitoring
  /// Definition:
  Monitoring('Monitoring'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ProductIntendedUse(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ProductIntendedUse fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ProductIntendedUse.elementOnly.withElement(element);
    }
    return ProductIntendedUse.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ProductIntendedUse withElement(Element? newElement) {
    return ProductIntendedUse.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
