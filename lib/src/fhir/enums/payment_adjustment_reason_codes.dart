import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes smattering of Payment Adjustment Reason codes.
enum PaymentAdjustmentReasonCodes {
  /// Display: Prior Payment Reversal
  /// Definition: Prior Payment Reversal
  a001('a001'),

  /// Display: Prior Overpayment
  /// Definition: Prior Overpayment
  a002('a002'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const PaymentAdjustmentReasonCodes(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static PaymentAdjustmentReasonCodes fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return PaymentAdjustmentReasonCodes.elementOnly.withElement(element);
    }
    return PaymentAdjustmentReasonCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  PaymentAdjustmentReasonCodes withElement(Element? newElement) {
    return PaymentAdjustmentReasonCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
