import 'package:fhir_r4/fhir_r4.dart';

/// This value set contract specific codes for asset scope.
enum ContractResourceAssetScopeCodes {
  /// Display: Thing
  /// Definition: To be completed
  thing('thing'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ContractResourceAssetScopeCodes(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ContractResourceAssetScopeCodes fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContractResourceAssetScopeCodes.elementOnly.withElement(element);
    }
    return ContractResourceAssetScopeCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ContractResourceAssetScopeCodes withElement(Element? newElement) {
    return ContractResourceAssetScopeCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
