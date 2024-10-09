import 'package:json_annotation/json_annotation.dart';

/// The way in which this manufacturer is associated with the ingredient. For example whether it is a possible one (others allowed), or an exclusive authorized one for this ingredient. Note that this is not the manufacturing process role.
enum IngredientManufacturerRole {
  /// Display: Manufacturer is specifically allowed for this ingredient
  @JsonValue('allowed')
  allowed,

  /// Display: Manufacturer is known to make this ingredient in general
  @JsonValue('possible')
  possible,

  /// Display: Manufacturer actually makes this particular ingredient
  @JsonValue('actual')
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

  String toJson() => toString();
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

  static IngredientManufacturerRole fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
