import 'package:json_annotation/json_annotation.dart';

/// This value sets refers to a Category of supply.
enum SupplyType {
  /// Display: Central Supply
  /// Definition: Supply is stored and requested from central supply.
  @JsonValue('central')
  central,

  /// Display: Non-Stock
  /// Definition: Supply is not onsite and must be requested from an outside vendor using a non-stock requisition.
  @JsonValue('nonstock')
  nonstock,
  ;

  @override
  String toString() {
    switch (this) {
      case central:
        return 'central';
      case nonstock:
        return 'nonstock';
    }
  }

  String toJson() => toString();
  SupplyType fromString(String str) {
    switch (str) {
      case 'central':
        return SupplyType.central;
      case 'nonstock':
        return SupplyType.nonstock;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  SupplyType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
