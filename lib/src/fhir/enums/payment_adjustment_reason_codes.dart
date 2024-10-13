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

  /// Returns a [String] from a [PaymentAdjustmentReasonCodes] enum.
  String toJson() => toString();

  /// Returns a [PaymentAdjustmentReasonCodes] from a [String] enum.
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

  /// Returns a [PaymentAdjustmentReasonCodes] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static PaymentAdjustmentReasonCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
