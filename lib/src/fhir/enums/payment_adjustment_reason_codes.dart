/// This value set includes smattering of Payment Adjustment Reason codes.
enum PaymentAdjustmentReasonCodes {
  /// Display: Prior Payment Reversal
  /// Definition: Prior Payment Reversal
  a001,

  /// Display: Prior Overpayment
  /// Definition: Prior Overpayment
  a002,
  ;

  @override
  String toString() {
    switch (this) {
      case a001:
        return 'a001';
      case a002:
        return 'a002';
    }
  }

  String toJson() => toString();
  static PaymentAdjustmentReasonCodes fromString(String str) {
    switch (str) {
      case 'a001':
        return PaymentAdjustmentReasonCodes.a001;
      case 'a002':
        return PaymentAdjustmentReasonCodes.a002;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static PaymentAdjustmentReasonCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
