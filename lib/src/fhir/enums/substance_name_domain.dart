import 'package:json_annotation/json_annotation.dart';

/// The use context of a substance name for example if there is a different name when used as a drug active ingredient as opposed to a food colour additive.
enum SubstanceNameDomain {
  /// Display: Active Ingredient
  @JsonValue('ActiveIngredient')
  ActiveIngredient,
  /// Display: Food Color Additive
  @JsonValue('FoodColorAdditive')
  FoodColorAdditive,
;

@override
  String toString() {
      switch(this) {
        case ActiveIngredient: return 'ActiveIngredient';
        case FoodColorAdditive: return 'FoodColorAdditive';
      }
      }
String toJson() => toString();
  SubstanceNameDomain fromString(String str) {
    switch(str) {
      case 'ActiveIngredient': return SubstanceNameDomain.ActiveIngredient;
      case 'FoodColorAdditive': return SubstanceNameDomain.FoodColorAdditive;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 SubstanceNameDomain fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}
