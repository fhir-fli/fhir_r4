import 'package:fhir_r4/fhir_r4.dart';

/// This value set contract specific codes for asset subtype.
enum ContractResourceAssetSubTypeCodes {
  /// Display: Participation
  /// Definition: To be completed
  participation('participation'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ContractResourceAssetSubTypeCodes(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ContractResourceAssetSubTypeCodes fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContractResourceAssetSubTypeCodes.elementOnly.withElement(element);
    }
    return ContractResourceAssetSubTypeCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ContractResourceAssetSubTypeCodes withElement(Element? newElement) {
    return ContractResourceAssetSubTypeCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
