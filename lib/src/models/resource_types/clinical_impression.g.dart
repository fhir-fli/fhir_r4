part of 'clinical_impression.dart';

/// The point in time or period over which the subject was assessed.
sealed class EffectiveXClinicalImpressionClinicalImpression {}

/// The point in time or period over which the subject was assessed.
class DateTimeEffectiveClinicalImpressionClinicalImpression extends FhirDateTime
    implements EffectiveXClinicalImpressionClinicalImpression {
  /// Factory constructor to create a [FhirDateTime] from a [String]
  factory DateTimeEffectiveClinicalImpressionClinicalImpression.fromString(
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
      ) as DateTimeEffectiveClinicalImpressionClinicalImpression;

  /// Factory constructor to create a [FhirDateTime] from a [DateTime]
  factory DateTimeEffectiveClinicalImpressionClinicalImpression.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirDateTime.fromDateTime(input, element: element)
          as DateTimeEffectiveClinicalImpressionClinicalImpression;

  /// Factory constructor for super class
  factory DateTimeEffectiveClinicalImpressionClinicalImpression.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDateTime.fromJson(json)
          as DateTimeEffectiveClinicalImpressionClinicalImpression;
}

/// The point in time or period over which the subject was assessed.
class PeriodEffectiveClinicalImpressionClinicalImpression extends Period
    implements EffectiveXClinicalImpressionClinicalImpression {
  /// Factory constructor for super class
  factory PeriodEffectiveClinicalImpressionClinicalImpression.fromJson(
    Map<String, dynamic> json,
  ) =>
      Period.fromJson(json)
          as PeriodEffectiveClinicalImpressionClinicalImpression;
}
