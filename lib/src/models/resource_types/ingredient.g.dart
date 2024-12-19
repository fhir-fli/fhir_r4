part of 'ingredient.dart';

/// The quantity of substance in the unit of presentation, or in the volume
/// (or mass) of the single pharmaceutical product or manufactured item.
/// Unit of presentation refers to the quantity that the item occurs in
/// e.g. a strength per tablet size, perhaps 'per 20mg' (the size of the
/// tablet). It is not generally normalized as a unitary unit, which would
/// be 'per mg').
sealed class PresentationXIngredientStrength {}

/// The quantity of substance in the unit of presentation, or in the volume
/// (or mass) of the single pharmaceutical product or manufactured item.
/// Unit of presentation refers to the quantity that the item occurs in
/// e.g. a strength per tablet size, perhaps 'per 20mg' (the size of the
/// tablet). It is not generally normalized as a unitary unit, which would
/// be 'per mg').
class RatioPresentationIngredientStrength extends Ratio
    implements PresentationXIngredientStrength {
  /// Factory constructor for super class
  factory RatioPresentationIngredientStrength.fromJson(
    Map<String, dynamic> json,
  ) =>
      Ratio.fromJson(json) as RatioPresentationIngredientStrength;
}

/// The quantity of substance in the unit of presentation, or in the volume
/// (or mass) of the single pharmaceutical product or manufactured item.
/// Unit of presentation refers to the quantity that the item occurs in
/// e.g. a strength per tablet size, perhaps 'per 20mg' (the size of the
/// tablet). It is not generally normalized as a unitary unit, which would
/// be 'per mg').
class RatioRangePresentationIngredientStrength extends RatioRange
    implements PresentationXIngredientStrength {
  /// Factory constructor for super class
  factory RatioRangePresentationIngredientStrength.fromJson(
    Map<String, dynamic> json,
  ) =>
      RatioRange.fromJson(json) as RatioRangePresentationIngredientStrength;
}

/// The strength per unitary volume (or mass).
sealed class ConcentrationXIngredientStrength {}

/// The strength per unitary volume (or mass).
class RatioConcentrationIngredientStrength extends Ratio
    implements ConcentrationXIngredientStrength {
  /// Factory constructor for super class
  factory RatioConcentrationIngredientStrength.fromJson(
    Map<String, dynamic> json,
  ) =>
      Ratio.fromJson(json) as RatioConcentrationIngredientStrength;
}

/// The strength per unitary volume (or mass).
class RatioRangeConcentrationIngredientStrength extends RatioRange
    implements ConcentrationXIngredientStrength {
  /// Factory constructor for super class
  factory RatioRangeConcentrationIngredientStrength.fromJson(
    Map<String, dynamic> json,
  ) =>
      RatioRange.fromJson(json) as RatioRangeConcentrationIngredientStrength;
}

/// Strength expressed in terms of a reference substance.
sealed class StrengthXIngredientReferenceStrength {}

/// Strength expressed in terms of a reference substance.
class RatioStrengthIngredientReferenceStrength extends Ratio
    implements StrengthXIngredientReferenceStrength {
  /// Factory constructor for super class
  factory RatioStrengthIngredientReferenceStrength.fromJson(
    Map<String, dynamic> json,
  ) =>
      Ratio.fromJson(json) as RatioStrengthIngredientReferenceStrength;
}

/// Strength expressed in terms of a reference substance.
class RatioRangeStrengthIngredientReferenceStrength extends RatioRange
    implements StrengthXIngredientReferenceStrength {
  /// Factory constructor for super class
  factory RatioRangeStrengthIngredientReferenceStrength.fromJson(
    Map<String, dynamic> json,
  ) =>
      RatioRange.fromJson(json)
          as RatioRangeStrengthIngredientReferenceStrength;
}
