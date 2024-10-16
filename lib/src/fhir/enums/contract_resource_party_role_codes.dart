import 'package:fhir_r4/fhir_r4.dart';

/// This value set contract specific codes for offer party participation.
enum ContractResourcePartyRoleCodes {
  /// Display: FLunky
  /// Definition: To be completed
  flunky('flunky'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ContractResourcePartyRoleCodes(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ContractResourcePartyRoleCodes fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContractResourcePartyRoleCodes.elementOnly.withElement(element);
    }
    return ContractResourcePartyRoleCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ContractResourcePartyRoleCodes withElement(Element? newElement) {
    return ContractResourcePartyRoleCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
