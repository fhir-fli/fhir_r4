import 'package:json_annotation/json_annotation.dart';

/// This value set includes a sample set of Payment Status codes.
enum PaymentStatusCodes {
  /// Display: Paid
  /// Definition: The payment has been sent physically or electronically.
  @JsonValue('paid')
  paid,

  /// Display: Cleared
  /// Definition: The payment has been received by the payee.
  @JsonValue('cleared')
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

  String toJson() => toString();
  PaymentStatusCodes fromString(String str) {
    switch (str) {
      case 'paid':
        return PaymentStatusCodes.paid;
      case 'cleared':
        return PaymentStatusCodes.cleared;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  PaymentStatusCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
