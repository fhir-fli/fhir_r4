/// The overall intended use of a product.
enum ProductIntendedUse {
  /// Display: Prevention
  Prevention,

  /// Display: Treatment
  Treatment,

  /// Display: Alleviation
  Alleviation,

  /// Display: Diagnosis
  Diagnosis,

  /// Display: Monitoring
  Monitoring,
  ;

  @override
  String toString() {
    switch (this) {
      case Prevention:
        return 'Prevention';
      case Treatment:
        return 'Treatment';
      case Alleviation:
        return 'Alleviation';
      case Diagnosis:
        return 'Diagnosis';
      case Monitoring:
        return 'Monitoring';
    }
  }

  /// Returns a [String] from a [ProductIntendedUse] enum.
  String toJson() => toString();

  /// Returns a [ProductIntendedUse] from a [String] enum.
  static ProductIntendedUse fromString(String str) {
    switch (str) {
      case 'Prevention':
        return ProductIntendedUse.Prevention;
      case 'Treatment':
        return ProductIntendedUse.Treatment;
      case 'Alleviation':
        return ProductIntendedUse.Alleviation;
      case 'Diagnosis':
        return ProductIntendedUse.Diagnosis;
      case 'Monitoring':
        return ProductIntendedUse.Monitoring;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [ProductIntendedUse] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static ProductIntendedUse fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
