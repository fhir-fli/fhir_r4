part of 'coverage.dart';

/// The amount due from the patient for the cost category.
sealed class ValueXCoverageCostToBeneficiary {}

/// The amount due from the patient for the cost category.
class QuantityValueCoverageCostToBeneficiary extends Quantity
    implements ValueXCoverageCostToBeneficiary {
  /// Factory constructor for super class
  factory QuantityValueCoverageCostToBeneficiary.fromJson(
    Map<String, dynamic> json,
  ) =>
      Quantity.fromJson(json) as QuantityValueCoverageCostToBeneficiary;
}

/// The amount due from the patient for the cost category.
class MoneyValueCoverageCostToBeneficiary extends Money
    implements ValueXCoverageCostToBeneficiary {
  /// Factory constructor for super class
  factory MoneyValueCoverageCostToBeneficiary.fromJson(
    Map<String, dynamic> json,
  ) =>
      Money.fromJson(json) as MoneyValueCoverageCostToBeneficiary;
}
