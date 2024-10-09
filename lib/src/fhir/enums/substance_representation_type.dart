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

  String toJson() => toString();
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

  static SubstanceRepresentationType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
