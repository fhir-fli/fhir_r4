import 'package:json_annotation/json_annotation.dart';

/// Codes indicating the kind of the price component.
enum InvoicePriceComponentType {
  /// Display: base price
  /// Definition: the amount is the base price used for calculating the total price before applying surcharges, discount or taxes.
  @JsonValue('base')
  base,

  /// Display: surcharge
  /// Definition: the amount is a surcharge applied on the base price.
  @JsonValue('surcharge')
  surcharge,

  /// Display: deduction
  /// Definition: the amount is a deduction applied on the base price.
  @JsonValue('deduction')
  deduction,

  /// Display: discount
  /// Definition: the amount is a discount applied on the base price.
  @JsonValue('discount')
  discount,

  /// Display: tax
  /// Definition: the amount is the tax component of the total price.
  @JsonValue('tax')
  tax,

  /// Display: informational
  /// Definition: the amount is of informational character, it has not been applied in the calculation of the total price.
  @JsonValue('informational')
  informational,
  ;

  @override
  String toString() {
    switch (this) {
      case base:
        return 'base';
      case surcharge:
        return 'surcharge';
      case deduction:
        return 'deduction';
      case discount:
        return 'discount';
      case tax:
        return 'tax';
      case informational:
        return 'informational';
    }
  }

  String toJson() => toString();
  static InvoicePriceComponentType fromString(String str) {
    switch (str) {
      case 'base':
        return InvoicePriceComponentType.base;
      case 'surcharge':
        return InvoicePriceComponentType.surcharge;
      case 'deduction':
        return InvoicePriceComponentType.deduction;
      case 'discount':
        return InvoicePriceComponentType.discount;
      case 'tax':
        return InvoicePriceComponentType.tax;
      case 'informational':
        return InvoicePriceComponentType.informational;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static InvoicePriceComponentType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
