/// A classification of the ingredient identifying its precise purpose(s) in the drug product (beyond e.g. active/inactive).
enum IngredientFunction {
  /// Display: Antioxidant
  Antioxidant,

  /// Display: Alkalizing Agent
  AlkalizingAgent,
  ;

  @override
  String toString() {
    switch (this) {
      case Antioxidant:
        return 'Antioxidant';
      case AlkalizingAgent:
        return 'AlkalizingAgent';
    }
  }

  /// Returns a [String] from a [IngredientFunction] enum.
  String toJson() => toString();

  /// Returns a [IngredientFunction] from a [String] enum.
  static IngredientFunction fromString(String str) {
    switch (str) {
      case 'Antioxidant':
        return IngredientFunction.Antioxidant;
      case 'AlkalizingAgent':
        return IngredientFunction.AlkalizingAgent;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [IngredientFunction] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static IngredientFunction fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
