import 'package:json_annotation/json_annotation.dart';

/// A classification of the ingredient identifying its purpose within the product.
enum IngredientRole {
  /// Display: Active
  @JsonValue('100000072072')
  value100000072072,
  /// Display: Adjuvant
  @JsonValue('100000072073')
  value100000072073,
  /// Display: Excipient
  @JsonValue('100000072082')
  value100000072082,
  /// Display: Starting material for excipient
  @JsonValue('100000136065')
  value100000136065,
  /// Display: Solvent / Diluent
  @JsonValue('100000136066')
  value100000136066,
  /// Display: Raw materials used in the manufacture of the product
  @JsonValue('100000136178')
  value100000136178,
  /// Display: Starting material for active substance
  @JsonValue('100000136179')
  value100000136179,
  /// Display: Overage
  @JsonValue('100000136561')
  value100000136561,
  /// Display: bioenhancer
  @JsonValue('200000003427')
  value200000003427,
;

@override
  String toString() {
      switch(this) {
        case value100000072072: return '100000072072';
        case value100000072073: return '100000072073';
        case value100000072082: return '100000072082';
        case value100000136065: return '100000136065';
        case value100000136066: return '100000136066';
        case value100000136178: return '100000136178';
        case value100000136179: return '100000136179';
        case value100000136561: return '100000136561';
        case value200000003427: return '200000003427';
      }
      }
String toJson() => toString();
  IngredientRole fromString(String str) {
    switch(str) {
      case '100000072072': return IngredientRole.value100000072072;
      case '100000072073': return IngredientRole.value100000072073;
      case '100000072082': return IngredientRole.value100000072082;
      case '100000136065': return IngredientRole.value100000136065;
      case '100000136066': return IngredientRole.value100000136066;
      case '100000136178': return IngredientRole.value100000136178;
      case '100000136179': return IngredientRole.value100000136179;
      case '100000136561': return IngredientRole.value100000136561;
      case '200000003427': return IngredientRole.value200000003427;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 IngredientRole fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}
