import 'package:json_annotation/json_annotation.dart';

/// A classification of the ingredient identifying its precise purpose(s) in the drug product (beyond e.g. active/inactive).
enum IngredientFunction {
  /// Display: Antioxidant
  @JsonValue('Antioxidant')
  Antioxidant,
  /// Display: Alkalizing Agent
  @JsonValue('AlkalizingAgent')
  AlkalizingAgent,
;

@override
  String toString() {
      switch(this) {
        case Antioxidant: return 'Antioxidant';
        case AlkalizingAgent: return 'AlkalizingAgent';
      }
      }
String toJson() => toString();
  IngredientFunction fromString(String str) {
    switch(str) {
      case 'Antioxidant': return IngredientFunction.Antioxidant;
      case 'AlkalizingAgent': return IngredientFunction.AlkalizingAgent;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 IngredientFunction fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

