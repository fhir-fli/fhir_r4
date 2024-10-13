/// A high level categorisation of a package.
enum PackageType {
  /// Display: Medicinal product pack
  MedicinalProductPack,

  /// Display: Raw material package
  RawMaterialPackage,

  /// Display: Shipping or transport container
  Shipping_TransportContainer,
  ;

  @override
  String toString() {
    switch (this) {
      case MedicinalProductPack:
        return 'MedicinalProductPack';
      case RawMaterialPackage:
        return 'RawMaterialPackage';
      case Shipping_TransportContainer:
        return 'Shipping-TransportContainer';
    }
  }

  /// Returns a [String] from a [PackageType] enum.
  String toJson() => toString();

  /// Returns a [PackageType] from a [String] enum.
  static PackageType fromString(String str) {
    switch (str) {
      case 'MedicinalProductPack':
        return PackageType.MedicinalProductPack;
      case 'RawMaterialPackage':
        return PackageType.RawMaterialPackage;
      case 'Shipping-TransportContainer':
        return PackageType.Shipping_TransportContainer;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [PackageType] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static PackageType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
