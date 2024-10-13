/// BiologicallyDerived Product Storage Scale.
enum BiologicallyDerivedProductStorageScale {
  /// Display: Fahrenheit
  /// Definition: Fahrenheit temperature scale.
  farenheit,

  /// Display: Celsius
  /// Definition: Celsius or centigrade temperature scale.
  celsius,

  /// Display: Kelvin
  /// Definition: Kelvin absolute thermodynamic temperature scale.
  kelvin,
  ;

  @override
  String toString() {
    switch (this) {
      case farenheit:
        return 'farenheit';
      case celsius:
        return 'celsius';
      case kelvin:
        return 'kelvin';
    }
  }

  /// Returns a [String] from a [BiologicallyDerivedProductStorageScale] enum.
  String toJson() => toString();

  /// Returns a [BiologicallyDerivedProductStorageScale] from a [String] enum.
  static BiologicallyDerivedProductStorageScale fromString(String str) {
    switch (str) {
      case 'farenheit':
        return BiologicallyDerivedProductStorageScale.farenheit;
      case 'celsius':
        return BiologicallyDerivedProductStorageScale.celsius;
      case 'kelvin':
        return BiologicallyDerivedProductStorageScale.kelvin;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [BiologicallyDerivedProductStorageScale] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static BiologicallyDerivedProductStorageScale fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
