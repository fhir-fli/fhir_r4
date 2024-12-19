part of 'dosage.dart';

/// Indicates whether the Medication is only taken when needed within a
/// specific dosing schedule (Boolean option), or it indicates the
/// precondition for taking the Medication (CodeableConcept).
sealed class AsNeededXDosageDosage {}

/// Indicates whether the Medication is only taken when needed within a
/// specific dosing schedule (Boolean option), or it indicates the
/// precondition for taking the Medication (CodeableConcept).
class BooleanAsNeededDosageDosage extends FhirBoolean
    implements AsNeededXDosageDosage {
  /// Constructor for [BooleanAsNeededDosageDosage]
  BooleanAsNeededDosageDosage(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory BooleanAsNeededDosageDosage.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirBoolean.fromJson(json) as BooleanAsNeededDosageDosage;
}

/// Indicates whether the Medication is only taken when needed within a
/// specific dosing schedule (Boolean option), or it indicates the
/// precondition for taking the Medication (CodeableConcept).
class CodeableConceptAsNeededDosageDosage extends CodeableConcept
    implements AsNeededXDosageDosage {
  /// Factory constructor for super class
  factory CodeableConceptAsNeededDosageDosage.fromJson(
    Map<String, dynamic> json,
  ) =>
      CodeableConcept.fromJson(json) as CodeableConceptAsNeededDosageDosage;
}

/// Amount of medication per dose.
sealed class DoseXDosageDoseAndRate {}

/// Amount of medication per dose.
class RangeDoseDosageDoseAndRate extends Range
    implements DoseXDosageDoseAndRate {
  /// Factory constructor for super class
  factory RangeDoseDosageDoseAndRate.fromJson(
    Map<String, dynamic> json,
  ) =>
      Range.fromJson(json) as RangeDoseDosageDoseAndRate;
}

/// Amount of medication per dose.
class QuantityDoseDosageDoseAndRate extends Quantity
    implements DoseXDosageDoseAndRate {
  /// Factory constructor for super class
  factory QuantityDoseDosageDoseAndRate.fromJson(
    Map<String, dynamic> json,
  ) =>
      Quantity.fromJson(json) as QuantityDoseDosageDoseAndRate;
}

/// Amount of medication per unit of time.
sealed class RateXDosageDoseAndRate {}

/// Amount of medication per unit of time.
class RatioRateDosageDoseAndRate extends Ratio
    implements RateXDosageDoseAndRate {
  /// Factory constructor for super class
  factory RatioRateDosageDoseAndRate.fromJson(
    Map<String, dynamic> json,
  ) =>
      Ratio.fromJson(json) as RatioRateDosageDoseAndRate;
}

/// Amount of medication per unit of time.
class RangeRateDosageDoseAndRate extends Range
    implements RateXDosageDoseAndRate {
  /// Factory constructor for super class
  factory RangeRateDosageDoseAndRate.fromJson(
    Map<String, dynamic> json,
  ) =>
      Range.fromJson(json) as RangeRateDosageDoseAndRate;
}

/// Amount of medication per unit of time.
class QuantityRateDosageDoseAndRate extends Quantity
    implements RateXDosageDoseAndRate {
  /// Factory constructor for super class
  factory QuantityRateDosageDoseAndRate.fromJson(
    Map<String, dynamic> json,
  ) =>
      Quantity.fromJson(json) as QuantityRateDosageDoseAndRate;
}
