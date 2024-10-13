/// This value set defines a set of codes that can be used to indicate dietary preferences or restrictions a patient may have.
enum Diet {
  /// Display: Vegetarian
  /// Definition: Food without meat, poultry or seafood.
  vegetarian,

  /// Display: Dairy Free
  /// Definition: Excludes dairy products.
  dairy_free,

  /// Display: Nut Free
  /// Definition: Excludes ingredients containing nuts.
  nut_free,

  /// Display: Gluten Free
  /// Definition: Excludes ingredients containing gluten.
  gluten_free,

  /// Display: Vegan
  /// Definition: Food without meat, poultry, seafood, eggs, dairy products and other animal-derived substances.
  vegan,

  /// Display: Halal
  /// Definition: Foods that conform to Islamic law.
  halal,

  /// Display: Kosher
  /// Definition: Foods that conform to Jewish dietary law.
  kosher,
  ;

  @override
  String toString() {
    switch (this) {
      case vegetarian:
        return 'vegetarian';
      case dairy_free:
        return 'dairy-free';
      case nut_free:
        return 'nut-free';
      case gluten_free:
        return 'gluten-free';
      case vegan:
        return 'vegan';
      case halal:
        return 'halal';
      case kosher:
        return 'kosher';
    }
  }

  /// Returns a [String] from a [Diet] enum.
  String toJson() => toString();

  /// Returns a [Diet] from a [String] enum.
  static Diet fromString(String str) {
    switch (str) {
      case 'vegetarian':
        return Diet.vegetarian;
      case 'dairy-free':
        return Diet.dairy_free;
      case 'nut-free':
        return Diet.nut_free;
      case 'gluten-free':
        return Diet.gluten_free;
      case 'vegan':
        return Diet.vegan;
      case 'halal':
        return Diet.halal;
      case 'kosher':
        return Diet.kosher;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [Diet] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static Diet fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
