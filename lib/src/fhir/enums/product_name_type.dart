/// Type of a name for a Medicinal Product.
enum ProductNameType {
  /// Display: British Approved Name
  BAN,

  /// Display: International Non-Proprietary Name
  INN,

  /// Display: Modified International Non-Proprietary Name
  INNM,

  /// Display: Proposed International Non-Proprietary Name
  pINN,

  /// Display: Recommended International Non-Proprietary Name
  rINN,
  ;

  @override
  String toString() {
    switch (this) {
      case BAN:
        return 'BAN';
      case INN:
        return 'INN';
      case INNM:
        return 'INNM';
      case pINN:
        return 'pINN';
      case rINN:
        return 'rINN';
    }
  }

  /// Returns a [String] from a [ProductNameType] enum.
  String toJson() => toString();

  /// Returns a [ProductNameType] from a [String] enum.
  static ProductNameType fromString(String str) {
    switch (str) {
      case 'BAN':
        return ProductNameType.BAN;
      case 'INN':
        return ProductNameType.INN;
      case 'INNM':
        return ProductNameType.INNM;
      case 'pINN':
        return ProductNameType.pINN;
      case 'rINN':
        return ProductNameType.rINN;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [ProductNameType] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static ProductNameType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
