/// This value set includes sample Payment Type codes.
enum PaymentTypeCodes {
  /// Display: Payment
  /// Definition: The amount is partial or complete settlement of the amounts due.
  payment,

  /// Display: Adjustment
  /// Definition: The amount is an adjustment regarding claims already paid.
  adjustment,

  /// Display: Advance
  /// Definition: The amount is an advance against future claims.
  advance,
  ;

  @override
  String toString() {
    switch (this) {
      case payment:
        return 'payment';
      case adjustment:
        return 'adjustment';
      case advance:
        return 'advance';
    }
  }

  /// Returns a [String] from a [PaymentTypeCodes] enum.
  String toJson() => toString();

  /// Returns a [PaymentTypeCodes] from a [String] enum.
  static PaymentTypeCodes fromString(String str) {
    switch (str) {
      case 'payment':
        return PaymentTypeCodes.payment;
      case 'adjustment':
        return PaymentTypeCodes.adjustment;
      case 'advance':
        return PaymentTypeCodes.advance;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [PaymentTypeCodes] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static PaymentTypeCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
