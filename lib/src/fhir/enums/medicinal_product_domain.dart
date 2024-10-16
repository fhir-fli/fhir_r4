import 'package:fhir_r4/fhir_r4.dart';

/// Applicable domain for this product (e.g. human, veterinary)
enum MedicinalProductDomain {
  /// Display: Human use
  /// Definition: Product intended for use with humans
  Human('Human'),

  /// Display: Veterinary use
  /// Definition: Product intended for use with animals
  Veterinary('Veterinary'),

  /// Display: Human and Veterinary use
  /// Definition: Product intended for use with both humans and animals
  HumanAndVeterinary('HumanAndVeterinary'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const MedicinalProductDomain(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static MedicinalProductDomain fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicinalProductDomain.elementOnly.withElement(element);
    }
    return MedicinalProductDomain.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  MedicinalProductDomain withElement(Element? newElement) {
    return MedicinalProductDomain.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
