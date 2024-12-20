part of 'risk_assessment.dart';

/// The date (and possibly time) the risk assessment was performed.
sealed class OccurrenceXRiskAssessmentRiskAssessment extends DataType {}

/// The date (and possibly time) the risk assessment was performed.
class DateTimeOccurrenceRiskAssessmentRiskAssessment extends FhirDateTime
    implements OccurrenceXRiskAssessmentRiskAssessment {
  /// Factory constructor to create a [FhirDateTime] from a [String]
  factory DateTimeOccurrenceRiskAssessmentRiskAssessment.fromString(
    String input, {
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
  }) =>
      FhirDateTime.fromString(
        input,
        element: element,
        id: id,
        extension_: extension_,
      ) as DateTimeOccurrenceRiskAssessmentRiskAssessment;

  /// Factory constructor to create a [FhirDateTime] from a [DateTime]
  factory DateTimeOccurrenceRiskAssessmentRiskAssessment.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirDateTime.fromDateTime(input, element: element)
          as DateTimeOccurrenceRiskAssessmentRiskAssessment;

  /// Factory constructor for super class
  factory DateTimeOccurrenceRiskAssessmentRiskAssessment.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDateTime.fromJson(json)
          as DateTimeOccurrenceRiskAssessmentRiskAssessment;
}

/// The date (and possibly time) the risk assessment was performed.
class PeriodOccurrenceRiskAssessmentRiskAssessment extends Period
    implements OccurrenceXRiskAssessmentRiskAssessment {
  /// Factory constructor for super class
  factory PeriodOccurrenceRiskAssessmentRiskAssessment.fromJson(
    Map<String, dynamic> json,
  ) =>
      Period.fromJson(json) as PeriodOccurrenceRiskAssessmentRiskAssessment;
}

/// Indicates how likely the outcome is (in the specified timeframe).
sealed class ProbabilityXRiskAssessmentPrediction extends DataType {}

/// Indicates how likely the outcome is (in the specified timeframe).
class DecimalProbabilityRiskAssessmentPrediction extends FhirDecimal
    implements ProbabilityXRiskAssessmentPrediction {
  /// Constructor for [DecimalProbabilityRiskAssessmentPrediction]
  DecimalProbabilityRiskAssessmentPrediction(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory DecimalProbabilityRiskAssessmentPrediction.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDecimal.fromJson(json) as DecimalProbabilityRiskAssessmentPrediction;
}

/// Indicates how likely the outcome is (in the specified timeframe).
class RangeProbabilityRiskAssessmentPrediction extends Range
    implements ProbabilityXRiskAssessmentPrediction {
  /// Factory constructor for super class
  factory RangeProbabilityRiskAssessmentPrediction.fromJson(
    Map<String, dynamic> json,
  ) =>
      Range.fromJson(json) as RangeProbabilityRiskAssessmentPrediction;
}

/// Indicates the period of time or age range of the subject to which the
/// specified probability applies.
sealed class WhenXRiskAssessmentPrediction extends DataType {}

/// Indicates the period of time or age range of the subject to which the
/// specified probability applies.
class PeriodWhenRiskAssessmentPrediction extends Period
    implements WhenXRiskAssessmentPrediction {
  /// Factory constructor for super class
  factory PeriodWhenRiskAssessmentPrediction.fromJson(
    Map<String, dynamic> json,
  ) =>
      Period.fromJson(json) as PeriodWhenRiskAssessmentPrediction;
}

/// Indicates the period of time or age range of the subject to which the
/// specified probability applies.
class RangeWhenRiskAssessmentPrediction extends Range
    implements WhenXRiskAssessmentPrediction {
  /// Factory constructor for super class
  factory RangeWhenRiskAssessmentPrediction.fromJson(
    Map<String, dynamic> json,
  ) =>
      Range.fromJson(json) as RangeWhenRiskAssessmentPrediction;
}
