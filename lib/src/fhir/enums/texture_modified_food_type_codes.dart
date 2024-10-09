import 'package:json_annotation/json_annotation.dart';

/// TextureModifiedFoodType: Codes for types of foods that are texture-modified. This value set is composed SNOMED CT Concepts from SCTID 255620007 Foods (substance) and is provided as a suggestive example.
enum TextureModifiedFoodTypeCodes {
  /// Display: Foods
  @JsonValue('255620007')
  value255620007,

  /// Display: Meat
  @JsonValue('28647000')
  value28647000,

  /// Display: Vegetables
  @JsonValue('22836000')
  value22836000,

  /// Display: Fruit
  @JsonValue('72511004')
  value72511004,

  /// Display: Dairy foods
  @JsonValue('226760005')
  value226760005,

  /// Display: Dietary Fats and Oils
  @JsonValue('226887002')
  value226887002,

  /// Display: Eggs
  @JsonValue('102263004')
  value102263004,

  /// Display: Food Starch
  @JsonValue('74242007')
  value74242007,

  /// Display: Fruit Nuts and Seeds
  @JsonValue('227415002')
  value227415002,

  /// Display: Grain
  @JsonValue('264331002')
  value264331002,

  /// Display: Sauce seasonings and soups
  @JsonValue('227518002')
  value227518002,

  /// Display: Seafood
  @JsonValue('44027008')
  value44027008,

  /// Display: Starchy food
  @JsonValue('226529007')
  value226529007,

  /// Display: Vegetables plus herbs and spices
  @JsonValue('227210005')
  value227210005,
  ;

  @override
  String toString() {
    switch (this) {
      case value255620007:
        return '255620007';
      case value28647000:
        return '28647000';
      case value22836000:
        return '22836000';
      case value72511004:
        return '72511004';
      case value226760005:
        return '226760005';
      case value226887002:
        return '226887002';
      case value102263004:
        return '102263004';
      case value74242007:
        return '74242007';
      case value227415002:
        return '227415002';
      case value264331002:
        return '264331002';
      case value227518002:
        return '227518002';
      case value44027008:
        return '44027008';
      case value226529007:
        return '226529007';
      case value227210005:
        return '227210005';
    }
  }

  String toJson() => toString();
  static TextureModifiedFoodTypeCodes fromString(String str) {
    switch (str) {
      case '255620007':
        return TextureModifiedFoodTypeCodes.value255620007;
      case '28647000':
        return TextureModifiedFoodTypeCodes.value28647000;
      case '22836000':
        return TextureModifiedFoodTypeCodes.value22836000;
      case '72511004':
        return TextureModifiedFoodTypeCodes.value72511004;
      case '226760005':
        return TextureModifiedFoodTypeCodes.value226760005;
      case '226887002':
        return TextureModifiedFoodTypeCodes.value226887002;
      case '102263004':
        return TextureModifiedFoodTypeCodes.value102263004;
      case '74242007':
        return TextureModifiedFoodTypeCodes.value74242007;
      case '227415002':
        return TextureModifiedFoodTypeCodes.value227415002;
      case '264331002':
        return TextureModifiedFoodTypeCodes.value264331002;
      case '227518002':
        return TextureModifiedFoodTypeCodes.value227518002;
      case '44027008':
        return TextureModifiedFoodTypeCodes.value44027008;
      case '226529007':
        return TextureModifiedFoodTypeCodes.value226529007;
      case '227210005':
        return TextureModifiedFoodTypeCodes.value227210005;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static TextureModifiedFoodTypeCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
