import 'package:json_annotation/json_annotation.dart';

/// This value set includes sample Payment Type codes.
enum PaymentTypeCodes {
  /// Display: Payment
  /// Definition: The amount is partial or complete settlement of the amounts due.
  @JsonValue('payment')
  payment,

  /// Display: Adjustment
  /// Definition: The amount is an adjustment regarding claims already paid.
  @JsonValue('adjustment')
  adjustment,

  /// Display: Advance
  /// Definition: The amount is an advance against future claims.
  @JsonValue('advance')
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

  String toJson() => toString();
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

  static PaymentTypeCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
