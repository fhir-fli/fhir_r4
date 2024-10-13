/// Overall defining type of this Medicinal Product.
enum MedicinalProductType {
  /// Display: Medicinal Product
  /// Definition: A standard medicinal product.
  MedicinalProduct,

  /// Display: Investigational Medicinal Product
  /// Definition: An investigational medicinal product.
  InvestigationalProduct,
  ;

  @override
  String toString() {
    switch (this) {
      case MedicinalProduct:
        return 'MedicinalProduct';
      case InvestigationalProduct:
        return 'InvestigationalProduct';
    }
  }

  /// Returns a [String] from a [MedicinalProductType] enum.
  String toJson() => toString();

  /// Returns a [MedicinalProductType] from a [String] enum.
  static MedicinalProductType fromString(String str) {
    switch (str) {
      case 'MedicinalProduct':
        return MedicinalProductType.MedicinalProduct;
      case 'InvestigationalProduct':
        return MedicinalProductType.InvestigationalProduct;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [MedicinalProductType] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static MedicinalProductType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
