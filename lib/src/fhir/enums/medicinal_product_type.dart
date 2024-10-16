import 'package:fhir_r4/fhir_r4.dart';

/// Overall defining type of this Medicinal Product.
enum MedicinalProductType {
  /// Display: Medicinal Product
  /// Definition: A standard medicinal product.
  MedicinalProduct('MedicinalProduct'),

  /// Display: Investigational Medicinal Product
  /// Definition: An investigational medicinal product.
  InvestigationalProduct('InvestigationalProduct'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const MedicinalProductType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static MedicinalProductType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicinalProductType.elementOnly.withElement(element);
    }
    return MedicinalProductType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  MedicinalProductType withElement(Element? newElement) {
    return MedicinalProductType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
