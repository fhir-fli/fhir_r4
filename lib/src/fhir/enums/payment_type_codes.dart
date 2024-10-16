import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes sample Payment Type codes.
enum PaymentTypeCodes {
  /// Display: Payment
  /// Definition: The amount is partial or complete settlement of the amounts due.
  payment('payment'),

  /// Display: Adjustment
  /// Definition: The amount is an adjustment regarding claims already paid.
  adjustment('adjustment'),

  /// Display: Advance
  /// Definition: The amount is an advance against future claims.
  advance('advance'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const PaymentTypeCodes(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static PaymentTypeCodes fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return PaymentTypeCodes.elementOnly.withElement(element);
    }
    return PaymentTypeCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  PaymentTypeCodes withElement(Element? newElement) {
    return PaymentTypeCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
