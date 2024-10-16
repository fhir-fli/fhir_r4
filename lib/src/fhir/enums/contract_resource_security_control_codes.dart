import 'package:fhir_r4/fhir_r4.dart';

/// This value set contract specific codes for security control.
enum ContractResourceSecurityControlCodes {
  /// Display: Policy
  /// Definition: To be completed
  policy('policy'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ContractResourceSecurityControlCodes(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ContractResourceSecurityControlCodes fromJson(
      Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContractResourceSecurityControlCodes.elementOnly
          .withElement(element);
    }
    return ContractResourceSecurityControlCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ContractResourceSecurityControlCodes withElement(Element? newElement) {
    return ContractResourceSecurityControlCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
