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

  String toJson() => toString();
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

  static MedicinalProductType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
