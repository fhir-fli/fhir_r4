// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes smattering of Payment Adjustment Reason codes.
enum PaymentAdjustmentReasonCodes {
  /// Display: Prior Payment Reversal
  /// Definition: Prior Payment Reversal
  a001('a001'),

  /// Display: Prior Overpayment
  /// Definition: Prior Overpayment
  a002('a002'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const PaymentAdjustmentReasonCodes(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [PaymentAdjustmentReasonCodes] instances.
  static PaymentAdjustmentReasonCodes fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return PaymentAdjustmentReasonCodes.elementOnly.withElement(
        element,
      );
    }
    return PaymentAdjustmentReasonCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  PaymentAdjustmentReasonCodes withElement(Element? newElement) {
    return PaymentAdjustmentReasonCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
