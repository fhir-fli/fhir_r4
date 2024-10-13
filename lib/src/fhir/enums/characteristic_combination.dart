/// Logical grouping of characteristics.
enum CharacteristicCombination {
  /// Display: intersection
  /// Definition: Combine characteristics with AND.
  intersection,

  /// Display: union
  /// Definition: Combine characteristics with OR.
  union,
  ;

  @override
  String toString() {
    switch (this) {
      case intersection:
        return 'intersection';
      case union:
        return 'union';
    }
  }

  /// Returns a [String] from a [CharacteristicCombination] enum.
  String toJson() => toString();

  /// Returns a [CharacteristicCombination] from a [String] enum.
  static CharacteristicCombination fromString(String str) {
    switch (str) {
      case 'intersection':
        return CharacteristicCombination.intersection;
      case 'union':
        return CharacteristicCombination.union;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [CharacteristicCombination] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static CharacteristicCombination fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
