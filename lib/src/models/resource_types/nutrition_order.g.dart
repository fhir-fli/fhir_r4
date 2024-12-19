part of 'nutrition_order.dart';

/// The rate of administration of formula via a feeding pump, e.g. 60 mL
/// per hour, according to the specified schedule.
sealed class RateXNutritionOrderAdministration {}

/// The rate of administration of formula via a feeding pump, e.g. 60 mL
/// per hour, according to the specified schedule.
class QuantityRateNutritionOrderAdministration extends Quantity
    implements RateXNutritionOrderAdministration {
  /// Factory constructor for super class
  factory QuantityRateNutritionOrderAdministration.fromJson(
    Map<String, dynamic> json,
  ) =>
      Quantity.fromJson(json) as QuantityRateNutritionOrderAdministration;
}

/// The rate of administration of formula via a feeding pump, e.g. 60 mL
/// per hour, according to the specified schedule.
class RatioRateNutritionOrderAdministration extends Ratio
    implements RateXNutritionOrderAdministration {
  /// Factory constructor for super class
  factory RatioRateNutritionOrderAdministration.fromJson(
    Map<String, dynamic> json,
  ) =>
      Ratio.fromJson(json) as RatioRateNutritionOrderAdministration;
}
