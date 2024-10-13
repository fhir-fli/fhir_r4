/// This value set includes a sample set of Payment Status codes.
enum PaymentStatusCodes {
  /// Display: Paid
  /// Definition: The payment has been sent physically or electronically.
  paid,

  /// Display: Cleared
  /// Definition: The payment has been received by the payee.
  cleared,
  ;

  @override
  String toString() {
    switch (this) {
      case paid:
        return 'paid';
      case cleared:
        return 'cleared';
    }
  }

  /// Returns a [String] from a [PaymentStatusCodes] enum.
  String toJson() => toString();

  /// Returns a [PaymentStatusCodes] from a [String] enum.
  static PaymentStatusCodes fromString(String str) {
    switch (str) {
      case 'paid':
        return PaymentStatusCodes.paid;
      case 'cleared':
        return PaymentStatusCodes.cleared;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [PaymentStatusCodes] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static PaymentStatusCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
