/// This value set includes a smattering of Unit type codes.
enum UnitTypeCodes {
  /// Display: Individual
  /// Definition: A single individual
  individual,

  /// Display: Family
  /// Definition: A family, typically includes self, spouse(s) and children to a defined age
  family,
  ;

  @override
  String toString() {
    switch (this) {
      case individual:
        return 'individual';
      case family:
        return 'family';
    }
  }

  /// Returns a [String] from a [UnitTypeCodes] enum.
  String toJson() => toString();

  /// Returns a [UnitTypeCodes] from a [String] enum.
  static UnitTypeCodes fromString(String str) {
    switch (str) {
      case 'individual':
        return UnitTypeCodes.individual;
      case 'family':
        return UnitTypeCodes.family;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [UnitTypeCodes] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static UnitTypeCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
