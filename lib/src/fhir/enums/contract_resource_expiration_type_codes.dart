import 'package:fhir_r4/fhir_r4.dart';

/// This value set contract specific codes for status.
enum ContractResourceExpirationTypeCodes {
  /// Display: Breach
  /// Definition: To be completed
  breach('breach'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ContractResourceExpirationTypeCodes(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ContractResourceExpirationTypeCodes fromJson(
      Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContractResourceExpirationTypeCodes.elementOnly
          .withElement(element);
    }
    return ContractResourceExpirationTypeCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ContractResourceExpirationTypeCodes withElement(Element? newElement) {
    return ContractResourceExpirationTypeCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
