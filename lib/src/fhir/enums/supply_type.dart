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

  /// Returns a [String] from a [SupplyType] enum.
  String toJson() => toString();

  /// Returns a [SupplyType] from a [String] enum.
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

  /// Returns a [SupplyType] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static SupplyType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
