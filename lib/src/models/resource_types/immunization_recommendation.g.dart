part of 'immunization_recommendation.dart';

/// Nominal position of the recommended dose in a series (e.g. dose 2 is
/// the next recommended dose).
sealed class DoseNumberXImmunizationRecommendationRecommendation
    extends DataType {}

/// Nominal position of the recommended dose in a series (e.g. dose 2 is
/// the next recommended dose).
class PositiveIntDoseNumberImmunizationRecommendationRecommendation
    extends FhirPositiveInt
    implements DoseNumberXImmunizationRecommendationRecommendation {
  /// Constructor for [PositiveIntDoseNumberImmunizationRecommendationRecommendation]
  PositiveIntDoseNumberImmunizationRecommendationRecommendation(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory PositiveIntDoseNumberImmunizationRecommendationRecommendation.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirPositiveInt.fromJson(json)
          as PositiveIntDoseNumberImmunizationRecommendationRecommendation;
}

/// Nominal position of the recommended dose in a series (e.g. dose 2 is
/// the next recommended dose).
class StringDoseNumberImmunizationRecommendationRecommendation
    extends FhirString
    implements DoseNumberXImmunizationRecommendationRecommendation {
  /// Constructor for [StringDoseNumberImmunizationRecommendationRecommendation]
  StringDoseNumberImmunizationRecommendationRecommendation(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory StringDoseNumberImmunizationRecommendationRecommendation.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirString.fromJson(json)
          as StringDoseNumberImmunizationRecommendationRecommendation;
}

/// The recommended number of doses to achieve immunity.
sealed class SeriesDosesXImmunizationRecommendationRecommendation
    extends DataType {}

/// The recommended number of doses to achieve immunity.
class PositiveIntSeriesDosesImmunizationRecommendationRecommendation
    extends FhirPositiveInt
    implements SeriesDosesXImmunizationRecommendationRecommendation {
  /// Constructor for [PositiveIntSeriesDosesImmunizationRecommendationRecommendation]
  PositiveIntSeriesDosesImmunizationRecommendationRecommendation(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory PositiveIntSeriesDosesImmunizationRecommendationRecommendation.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirPositiveInt.fromJson(json)
          as PositiveIntSeriesDosesImmunizationRecommendationRecommendation;
}

/// The recommended number of doses to achieve immunity.
class StringSeriesDosesImmunizationRecommendationRecommendation
    extends FhirString
    implements SeriesDosesXImmunizationRecommendationRecommendation {
  /// Constructor for [StringSeriesDosesImmunizationRecommendationRecommendation]
  StringSeriesDosesImmunizationRecommendationRecommendation(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory StringSeriesDosesImmunizationRecommendationRecommendation.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirString.fromJson(json)
          as StringSeriesDosesImmunizationRecommendationRecommendation;
}
