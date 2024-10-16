import 'package:fhir_r4/fhir_r4.dart';

/// Type of a name for a Medicinal Product.
enum ProductNameType {
  /// Display: British Approved Name
  /// Definition:
  BAN('BAN'),

  /// Display: International Non-Proprietary Name
  /// Definition:
  INN('INN'),

  /// Display: Modified International Non-Proprietary Name
  /// Definition:
  INNM('INNM'),

  /// Display: Proposed International Non-Proprietary Name
  /// Definition:
  pINN('pINN'),

  /// Display: Recommended International Non-Proprietary Name
  /// Definition:
  rINN('rINN'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ProductNameType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ProductNameType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ProductNameType.elementOnly.withElement(element);
    }
    return ProductNameType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ProductNameType withElement(Element? newElement) {
    return ProductNameType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
