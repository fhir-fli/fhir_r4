/// This value sets refers to a Category of supply.
enum SupplyType {
  /// Display: Central Supply
  /// Definition: Supply is stored and requested from central supply.
  central,

  /// Display: Non-Stock
  /// Definition: Supply is not onsite and must be requested from an outside vendor using a non-stock requisition.
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
  static SupplyType fromString(String str) {
    switch (str) {
      case 'central':
        return SupplyType.central;
      case 'nonstock':
        return SupplyType.nonstock;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static SupplyType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
