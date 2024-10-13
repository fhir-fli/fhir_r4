/// The type of a name given to a substance.
enum SubstanceNameType {
  /// Display: systematic
  Systematic,

  /// Display: scientific
  Scientific,

  /// Display: brand
  Brand,
  ;

  @override
  String toString() {
    switch (this) {
      case Systematic:
        return 'Systematic';
      case Scientific:
        return 'Scientific';
      case Brand:
        return 'Brand';
    }
  }

  /// Returns a [String] from a [SubstanceNameType] enum.
  String toJson() => toString();

  /// Returns a [SubstanceNameType] from a [String] enum.
  static SubstanceNameType fromString(String str) {
    switch (str) {
      case 'Systematic':
        return SubstanceNameType.Systematic;
      case 'Scientific':
        return SubstanceNameType.Scientific;
      case 'Brand':
        return SubstanceNameType.Brand;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [SubstanceNameType] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static SubstanceNameType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
