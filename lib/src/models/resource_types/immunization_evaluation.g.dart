part of 'immunization_evaluation.dart';

/// Nominal position in a series.
sealed class DoseNumberXImmunizationEvaluationImmunizationEvaluation {}

/// Nominal position in a series.
class PositiveIntDoseNumberImmunizationEvaluationImmunizationEvaluation
    extends FhirPositiveInt
    implements DoseNumberXImmunizationEvaluationImmunizationEvaluation {
  /// Constructor for [PositiveIntDoseNumberImmunizationEvaluationImmunizationEvaluation]
  PositiveIntDoseNumberImmunizationEvaluationImmunizationEvaluation(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory PositiveIntDoseNumberImmunizationEvaluationImmunizationEvaluation.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirPositiveInt.fromJson(json)
          as PositiveIntDoseNumberImmunizationEvaluationImmunizationEvaluation;
}

/// Nominal position in a series.
class StringDoseNumberImmunizationEvaluationImmunizationEvaluation
    extends FhirString
    implements DoseNumberXImmunizationEvaluationImmunizationEvaluation {
  /// Constructor for [StringDoseNumberImmunizationEvaluationImmunizationEvaluation]
  StringDoseNumberImmunizationEvaluationImmunizationEvaluation(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory StringDoseNumberImmunizationEvaluationImmunizationEvaluation.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirString.fromJson(json)
          as StringDoseNumberImmunizationEvaluationImmunizationEvaluation;
}

/// The recommended number of doses to achieve immunity.
sealed class SeriesDosesXImmunizationEvaluationImmunizationEvaluation {}

/// The recommended number of doses to achieve immunity.
class PositiveIntSeriesDosesImmunizationEvaluationImmunizationEvaluation
    extends FhirPositiveInt
    implements SeriesDosesXImmunizationEvaluationImmunizationEvaluation {
  /// Constructor for [PositiveIntSeriesDosesImmunizationEvaluationImmunizationEvaluation]
  PositiveIntSeriesDosesImmunizationEvaluationImmunizationEvaluation(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory PositiveIntSeriesDosesImmunizationEvaluationImmunizationEvaluation.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirPositiveInt.fromJson(json)
          as PositiveIntSeriesDosesImmunizationEvaluationImmunizationEvaluation;
}

/// The recommended number of doses to achieve immunity.
class StringSeriesDosesImmunizationEvaluationImmunizationEvaluation
    extends FhirString
    implements SeriesDosesXImmunizationEvaluationImmunizationEvaluation {
  /// Constructor for [StringSeriesDosesImmunizationEvaluationImmunizationEvaluation]
  StringSeriesDosesImmunizationEvaluationImmunizationEvaluation(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory StringSeriesDosesImmunizationEvaluationImmunizationEvaluation.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirString.fromJson(json)
          as StringSeriesDosesImmunizationEvaluationImmunizationEvaluation;
}
