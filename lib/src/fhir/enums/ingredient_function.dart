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

  String toJson() => toString();
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

  static IngredientFunction fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
