import 'package:fhir_r4/fhir_r4.dart';

/// This value set contract specific codes for status.
enum ContractResourceDefinitionTypeCodes {
  /// Display: Temporary Value
  /// Definition: To be completed
  temp('temp'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ContractResourceDefinitionTypeCodes(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ContractResourceDefinitionTypeCodes fromJson(
      Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContractResourceDefinitionTypeCodes.elementOnly
          .withElement(element);
    }
    return ContractResourceDefinitionTypeCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ContractResourceDefinitionTypeCodes withElement(Element? newElement) {
    return ContractResourceDefinitionTypeCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
