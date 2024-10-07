import 'package:json_annotation/json_annotation.dart';

/// This value set defines a set of codes that can be used to indicate dietary preferences or restrictions a patient may have.
enum Diet {
  /// Display: Vegetarian
  /// Definition: Food without meat, poultry or seafood.
  @JsonValue('vegetarian')
  vegetarian,
  /// Display: Dairy Free
  /// Definition: Excludes dairy products.
  @JsonValue('dairy-free')
  dairy_free,
  /// Display: Nut Free
  /// Definition: Excludes ingredients containing nuts.
  @JsonValue('nut-free')
  nut_free,
  /// Display: Gluten Free
  /// Definition: Excludes ingredients containing gluten.
  @JsonValue('gluten-free')
  gluten_free,
  /// Display: Vegan
  /// Definition: Food without meat, poultry, seafood, eggs, dairy products and other animal-derived substances.
  @JsonValue('vegan')
  vegan,
  /// Display: Halal
  /// Definition: Foods that conform to Islamic law.
  @JsonValue('halal')
  halal,
  /// Display: Kosher
  /// Definition: Foods that conform to Jewish dietary law.
  @JsonValue('kosher')
  kosher,
;

@override
  String toString() {
      switch(this) {
        case vegetarian: return 'vegetarian';
        case dairy_free: return 'dairy-free';
        case nut_free: return 'nut-free';
        case gluten_free: return 'gluten-free';
        case vegan: return 'vegan';
        case halal: return 'halal';
        case kosher: return 'kosher';
      }
      }
String toJson() => toString();
  Diet fromString(String str) {
    switch(str) {
      case 'vegetarian': return Diet.vegetarian;
      case 'dairy-free': return Diet.dairy_free;
      case 'nut-free': return Diet.nut_free;
      case 'gluten-free': return Diet.gluten_free;
      case 'vegan': return Diet.vegan;
      case 'halal': return Diet.halal;
      case 'kosher': return Diet.kosher;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 Diet fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

