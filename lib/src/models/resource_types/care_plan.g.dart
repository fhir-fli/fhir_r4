part of 'care_plan.dart';

/// The period, timing or frequency upon which the described activity is to
/// occur.
sealed class ScheduledXCarePlanDetail extends DataType {}

/// The period, timing or frequency upon which the described activity is to
/// occur.
class TimingScheduledCarePlanDetail extends Timing
    implements ScheduledXCarePlanDetail {
  /// Factory constructor for super class
  factory TimingScheduledCarePlanDetail.fromJson(
    Map<String, dynamic> json,
  ) =>
      Timing.fromJson(json) as TimingScheduledCarePlanDetail;
}

/// The period, timing or frequency upon which the described activity is to
/// occur.
class PeriodScheduledCarePlanDetail extends Period
    implements ScheduledXCarePlanDetail {
  /// Factory constructor for super class
  factory PeriodScheduledCarePlanDetail.fromJson(
    Map<String, dynamic> json,
  ) =>
      Period.fromJson(json) as PeriodScheduledCarePlanDetail;
}

/// The period, timing or frequency upon which the described activity is to
/// occur.
class StringScheduledCarePlanDetail extends FhirString
    implements ScheduledXCarePlanDetail {
  /// Constructor for [StringScheduledCarePlanDetail]
  StringScheduledCarePlanDetail(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory StringScheduledCarePlanDetail.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirString.fromJson(json) as StringScheduledCarePlanDetail;
}

/// Identifies the food, drug or other product to be consumed or supplied
/// in the activity.
sealed class ProductXCarePlanDetail extends DataType {}

/// Identifies the food, drug or other product to be consumed or supplied
/// in the activity.
class CodeableConceptProductCarePlanDetail extends CodeableConcept
    implements ProductXCarePlanDetail {
  /// Factory constructor for super class
  factory CodeableConceptProductCarePlanDetail.fromJson(
    Map<String, dynamic> json,
  ) =>
      CodeableConcept.fromJson(json) as CodeableConceptProductCarePlanDetail;
}

/// Identifies the food, drug or other product to be consumed or supplied
/// in the activity.
class ReferenceProductCarePlanDetail extends Reference
    implements ProductXCarePlanDetail {
  /// Factory constructor for super class
  factory ReferenceProductCarePlanDetail.fromJson(
    Map<String, dynamic> json,
  ) =>
      Reference.fromJson(json) as ReferenceProductCarePlanDetail;
}
