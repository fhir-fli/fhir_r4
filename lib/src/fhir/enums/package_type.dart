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

  String toJson() => toString();
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

  static PackageType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
