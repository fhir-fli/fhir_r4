import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes sample Payee Type codes.
enum ClaimPayeeTypeCodes {
  /// Display: Subscriber
  /// Definition: The subscriber (policy holder) will be reimbursed.
  subscriber('subscriber'),

  /// Display: Provider
  /// Definition: Any benefit payable will be paid to the provider (Assignment of Benefit).
  provider('provider'),

  /// Display: Provider
  /// Definition: Any benefit payable will be paid to a third party such as a guarrantor.
  other('other'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ClaimPayeeTypeCodes(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ClaimPayeeTypeCodes fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ClaimPayeeTypeCodes.elementOnly.withElement(element);
    }
    return ClaimPayeeTypeCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ClaimPayeeTypeCodes withElement(Element? newElement) {
    return ClaimPayeeTypeCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
