/// The type of a name given to a substance.
enum SubstanceRepresentationType {
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

  /// Returns a [String] from a [SubstanceRepresentationType] enum.
  String toJson() => toString();

  /// Returns a [SubstanceRepresentationType] from a [String] enum.
  static SubstanceRepresentationType fromString(String str) {
    switch (str) {
      case 'Systematic':
        return SubstanceRepresentationType.Systematic;
      case 'Scientific':
        return SubstanceRepresentationType.Scientific;
      case 'Brand':
        return SubstanceRepresentationType.Brand;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [SubstanceRepresentationType] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static SubstanceRepresentationType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
