import 'package:json_annotation/json_annotation.dart';

/// This value set includes smattering of Payment Adjustment Reason codes.
enum PaymentAdjustmentReasonCodes {
  /// Display: Prior Payment Reversal
  /// Definition: Prior Payment Reversal
  @JsonValue('a001')
  a001,
  /// Display: Prior Overpayment
  /// Definition: Prior Overpayment
  @JsonValue('a002')
  a002,
;

@override
  String toString() {
      switch(this) {
        case a001: return 'a001';
        case a002: return 'a002';
      }
      }
String toJson() => toString();
  PaymentAdjustmentReasonCodes fromString(String str) {
    switch(str) {
      case 'a001': return PaymentAdjustmentReasonCodes.a001;
      case 'a002': return PaymentAdjustmentReasonCodes.a002;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 PaymentAdjustmentReasonCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

