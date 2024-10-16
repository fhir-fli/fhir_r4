import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes a sample set of Payment Status codes.
enum PaymentStatusCodes {
  /// Display: Paid
  /// Definition: The payment has been sent physically or electronically.
  paid('paid'),

  /// Display: Cleared
  /// Definition: The payment has been received by the payee.
  cleared('cleared'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const PaymentStatusCodes(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static PaymentStatusCodes fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return PaymentStatusCodes.elementOnly.withElement(element);
    }
    return PaymentStatusCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  PaymentStatusCodes withElement(Element? newElement) {
    return PaymentStatusCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
