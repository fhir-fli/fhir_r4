/// NutrientModifier :  Codes for types of nutrients that are being modified such as carbohydrate or sodium.  This value set includes codes from [SNOMED CT](http://snomed.info/sct) where concept is-a 226355009 (Nutrients(substance)), and the concepts for Sodium, Potassium and Fluid. This is provided as a suggestive example.
enum NutrientModifierCodes {
  /// Display: Fluid
  value33463005,

  /// Display: Sodium
  value39972003,

  /// Display: Potassium
  value88480006,
  ;

  @override
  String toString() {
    switch (this) {
      case value33463005:
        return '33463005';
      case value39972003:
        return '39972003';
      case value88480006:
        return '88480006';
    }
  }

  String toJson() => toString();
  static NutrientModifierCodes fromString(String str) {
    switch (str) {
      case '33463005':
        return NutrientModifierCodes.value33463005;
      case '39972003':
        return NutrientModifierCodes.value39972003;
      case '88480006':
        return NutrientModifierCodes.value88480006;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static NutrientModifierCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
