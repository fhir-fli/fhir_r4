import 'package:json_annotation/json_annotation.dart';

/// EnteralFormulaAdditiveType: Codes for the type of modular component such as protein, carbohydrate or fiber to be provided in addition to or mixed with the base formula. This value set is provided as a suggestive example.
enum EnteralFormulaAdditiveTypeCode {
  /// Display: Lipid
  /// Definition: Modular lipid enteral formula component
  @JsonValue('lipid')
  lipid,
  /// Display: Protein
  /// Definition: Modular protein enteral formula component
  @JsonValue('protein')
  protein,
  /// Display: Carbohydrate
  /// Definition: Modular carbohydrate enteral formula component
  @JsonValue('carbohydrate')
  carbohydrate,
  /// Display: Fiber
  /// Definition: Modular fiber enteral formula component
  @JsonValue('fiber')
  fiber,
  /// Display: Water
  /// Definition: Added water
  @JsonValue('water')
  water,
;

@override
  String toString() {
      switch(this) {
        case lipid: return 'lipid';
        case protein: return 'protein';
        case carbohydrate: return 'carbohydrate';
        case fiber: return 'fiber';
        case water: return 'water';
      }
      }
String toJson() => toString();
  EnteralFormulaAdditiveTypeCode fromString(String str) {
    switch(str) {
      case 'lipid': return EnteralFormulaAdditiveTypeCode.lipid;
      case 'protein': return EnteralFormulaAdditiveTypeCode.protein;
      case 'carbohydrate': return EnteralFormulaAdditiveTypeCode.carbohydrate;
      case 'fiber': return EnteralFormulaAdditiveTypeCode.fiber;
      case 'water': return EnteralFormulaAdditiveTypeCode.water;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 EnteralFormulaAdditiveTypeCode fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

