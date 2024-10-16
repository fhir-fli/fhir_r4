import 'package:fhir_r4/fhir_r4.dart';

/// The prescription supply types appropriate to a medicinal product
enum LegalStatusOfSupply {
  /// Display: Medicinal product not subject to medical prescription
  /// Definition:
  value100000072076('100000072076'),

  /// Display: Medicinal product on medical prescription for renewable or non-renewable delivery
  /// Definition:
  value100000072077('100000072077'),

  /// Display: Medicinal product subject to restricted medical prescription
  /// Definition:
  value100000072078('100000072078'),

  /// Display: Medicinal product on medical prescription for non-renewable delivery
  /// Definition:
  value100000072079('100000072079'),

  /// Display: Medicinal product subject to medical prescription
  /// Definition:
  value100000072084('100000072084'),

  /// Display: Medicinal product subject to special medical prescription
  /// Definition:
  value100000072085('100000072085'),

  /// Display: Medicinal product on medical prescription for renewable delivery
  /// Definition:
  value100000072086('100000072086'),

  /// Display: Medicinal product subject to special and restricted medical prescription
  /// Definition:
  value100000157313('100000157313'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const LegalStatusOfSupply(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static LegalStatusOfSupply fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return LegalStatusOfSupply.elementOnly.withElement(element);
    }
    return LegalStatusOfSupply.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  LegalStatusOfSupply withElement(Element? newElement) {
    return LegalStatusOfSupply.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
