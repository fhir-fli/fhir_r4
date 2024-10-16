import 'package:fhir_r4/fhir_r4.dart';

/// This value set contract specific codes for asset context.
enum ContractResourceAssetContextCodes {
  /// Display: Custodian
  /// Definition: To be completed
  custodian('custodian'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ContractResourceAssetContextCodes(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ContractResourceAssetContextCodes fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContractResourceAssetContextCodes.elementOnly.withElement(element);
    }
    return ContractResourceAssetContextCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ContractResourceAssetContextCodes withElement(Element? newElement) {
    return ContractResourceAssetContextCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
