import 'package:fhir_r4/fhir_r4.dart';

/// This value set contract specific codes for action status.
enum ContractResourceActionStatusCodes {
  /// Display: Complete
  /// Definition: To be completed
  complete('complete'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ContractResourceActionStatusCodes(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ContractResourceActionStatusCodes fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContractResourceActionStatusCodes.elementOnly.withElement(element);
    }
    return ContractResourceActionStatusCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ContractResourceActionStatusCodes withElement(Element? newElement) {
    return ContractResourceActionStatusCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
