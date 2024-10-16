import 'package:fhir_r4/fhir_r4.dart';

/// This value set has asset availability codes.
enum ContractResourceAssetAvailiabilityCodes {
  /// Display: Lease
  /// Definition: To be completed
  lease('lease'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ContractResourceAssetAvailiabilityCodes(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ContractResourceAssetAvailiabilityCodes fromJson(
      Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContractResourceAssetAvailiabilityCodes.elementOnly
          .withElement(element);
    }
    return ContractResourceAssetAvailiabilityCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ContractResourceAssetAvailiabilityCodes withElement(Element? newElement) {
    return ContractResourceAssetAvailiabilityCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
