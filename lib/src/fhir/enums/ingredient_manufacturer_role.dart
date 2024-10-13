/// The way in which this manufacturer is associated with the ingredient. For example whether it is a possible one (others allowed), or an exclusive authorized one for this ingredient. Note that this is not the manufacturing process role.
enum IngredientManufacturerRole {
  /// Display: Manufacturer is specifically allowed for this ingredient
  allowed,

  /// Display: Manufacturer is known to make this ingredient in general
  possible,

  /// Display: Manufacturer actually makes this particular ingredient
  actual,
  ;

  @override
  String toString() {
    switch (this) {
      case allowed:
        return 'allowed';
      case possible:
        return 'possible';
      case actual:
        return 'actual';
    }
  }

  /// Returns a [String] from a [IngredientManufacturerRole] enum.
  String toJson() => toString();

  /// Returns a [IngredientManufacturerRole] from a [String] enum.
  static IngredientManufacturerRole fromString(String str) {
    switch (str) {
      case 'allowed':
        return IngredientManufacturerRole.allowed;
      case 'possible':
        return IngredientManufacturerRole.possible;
      case 'actual':
        return IngredientManufacturerRole.actual;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [IngredientManufacturerRole] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static IngredientManufacturerRole fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
