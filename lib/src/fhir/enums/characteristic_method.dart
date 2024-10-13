/// The method used to determine the characteristic(s) of the variable.
enum CharacteristicMethod {
  /// Display: Default
  /// Definition: Default.
  Default,
  ;

  @override
  String toString() {
    switch (this) {
      case Default:
        return 'Default';
    }
  }

  /// Returns a [String] from a [CharacteristicMethod] enum.
  String toJson() => toString();

  /// Returns a [CharacteristicMethod] from a [String] enum.
  static CharacteristicMethod fromString(String str) {
    switch (str) {
      case 'Default':
        return CharacteristicMethod.Default;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [CharacteristicMethod] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static CharacteristicMethod fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
