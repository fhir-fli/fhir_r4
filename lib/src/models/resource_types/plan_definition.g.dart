part of 'plan_definition.dart';

/// A code, group definition, or canonical reference that describes or
/// identifies the intended subject of the plan definition. Canonical
/// references are allowed to support the definition of protocols for drug
/// and substance quality specifications, and is allowed to reference a
/// MedicinalProductDefinition, SubstanceDefinition,
/// AdministrableProductDefinition, ManufacturedItemDefinition, or
/// PackagedProductDefinition resource.
sealed class SubjectXPlanDefinitionPlanDefinition extends DataType {}

/// A code, group definition, or canonical reference that describes or
/// identifies the intended subject of the plan definition. Canonical
/// references are allowed to support the definition of protocols for drug
/// and substance quality specifications, and is allowed to reference a
/// MedicinalProductDefinition, SubstanceDefinition,
/// AdministrableProductDefinition, ManufacturedItemDefinition, or
/// PackagedProductDefinition resource.
class CodeableConceptSubjectPlanDefinitionPlanDefinition extends CodeableConcept
    implements SubjectXPlanDefinitionPlanDefinition {
  /// Factory constructor for super class
  factory CodeableConceptSubjectPlanDefinitionPlanDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      CodeableConcept.fromJson(json)
          as CodeableConceptSubjectPlanDefinitionPlanDefinition;
}

/// A code, group definition, or canonical reference that describes or
/// identifies the intended subject of the plan definition. Canonical
/// references are allowed to support the definition of protocols for drug
/// and substance quality specifications, and is allowed to reference a
/// MedicinalProductDefinition, SubstanceDefinition,
/// AdministrableProductDefinition, ManufacturedItemDefinition, or
/// PackagedProductDefinition resource.
class ReferenceSubjectPlanDefinitionPlanDefinition extends Reference
    implements SubjectXPlanDefinitionPlanDefinition {
  /// Factory constructor for super class
  factory ReferenceSubjectPlanDefinitionPlanDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      Reference.fromJson(json) as ReferenceSubjectPlanDefinitionPlanDefinition;
}

/// A code, group definition, or canonical reference that describes or
/// identifies the intended subject of the plan definition. Canonical
/// references are allowed to support the definition of protocols for drug
/// and substance quality specifications, and is allowed to reference a
/// MedicinalProductDefinition, SubstanceDefinition,
/// AdministrableProductDefinition, ManufacturedItemDefinition, or
/// PackagedProductDefinition resource.
class SubjectTypeSubjectPlanDefinitionPlanDefinition extends SubjectType
    implements SubjectXPlanDefinitionPlanDefinition {
  /// Factory constructor for super class
  factory SubjectTypeSubjectPlanDefinitionPlanDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      SubjectType.fromJson(json)
          as SubjectTypeSubjectPlanDefinitionPlanDefinition;
}

/// The target value of the measure to be achieved to signify fulfillment
/// of the goal, e.g. 150 pounds or 7.0%, or in the case of pharmaceutical
/// quality - NMT 0.6%, Clear solution, etc. Either the high or low or both
/// values of the range can be specified. When a low value is missing, it
/// indicates that the goal is achieved at any value at or below the high
/// value. Similarly, if the high value is missing, it indicates that the
/// goal is achieved at any value at or above the low value.
sealed class DetailXPlanDefinitionTarget extends DataType {}

/// The target value of the measure to be achieved to signify fulfillment
/// of the goal, e.g. 150 pounds or 7.0%, or in the case of pharmaceutical
/// quality - NMT 0.6%, Clear solution, etc. Either the high or low or both
/// values of the range can be specified. When a low value is missing, it
/// indicates that the goal is achieved at any value at or below the high
/// value. Similarly, if the high value is missing, it indicates that the
/// goal is achieved at any value at or above the low value.
class QuantityDetailPlanDefinitionTarget extends Quantity
    implements DetailXPlanDefinitionTarget {
  /// Factory constructor for super class
  factory QuantityDetailPlanDefinitionTarget.fromJson(
    Map<String, dynamic> json,
  ) =>
      Quantity.fromJson(json) as QuantityDetailPlanDefinitionTarget;
}

/// The target value of the measure to be achieved to signify fulfillment
/// of the goal, e.g. 150 pounds or 7.0%, or in the case of pharmaceutical
/// quality - NMT 0.6%, Clear solution, etc. Either the high or low or both
/// values of the range can be specified. When a low value is missing, it
/// indicates that the goal is achieved at any value at or below the high
/// value. Similarly, if the high value is missing, it indicates that the
/// goal is achieved at any value at or above the low value.
class RangeDetailPlanDefinitionTarget extends Range
    implements DetailXPlanDefinitionTarget {
  /// Factory constructor for super class
  factory RangeDetailPlanDefinitionTarget.fromJson(
    Map<String, dynamic> json,
  ) =>
      Range.fromJson(json) as RangeDetailPlanDefinitionTarget;
}

/// The target value of the measure to be achieved to signify fulfillment
/// of the goal, e.g. 150 pounds or 7.0%, or in the case of pharmaceutical
/// quality - NMT 0.6%, Clear solution, etc. Either the high or low or both
/// values of the range can be specified. When a low value is missing, it
/// indicates that the goal is achieved at any value at or below the high
/// value. Similarly, if the high value is missing, it indicates that the
/// goal is achieved at any value at or above the low value.
class CodeableConceptDetailPlanDefinitionTarget extends CodeableConcept
    implements DetailXPlanDefinitionTarget {
  /// Factory constructor for super class
  factory CodeableConceptDetailPlanDefinitionTarget.fromJson(
    Map<String, dynamic> json,
  ) =>
      CodeableConcept.fromJson(json)
          as CodeableConceptDetailPlanDefinitionTarget;
}

/// A code, group definition, or canonical reference that describes the
/// intended subject of the action and its children, if any. Canonical
/// references are allowed to support the definition of protocols for drug
/// and substance quality specifications, and is allowed to reference a
/// MedicinalProductDefinition, SubstanceDefinition,
/// AdministrableProductDefinition, ManufacturedItemDefinition, or
/// PackagedProductDefinition resource.
sealed class SubjectXPlanDefinitionAction extends DataType {}

/// A code, group definition, or canonical reference that describes the
/// intended subject of the action and its children, if any. Canonical
/// references are allowed to support the definition of protocols for drug
/// and substance quality specifications, and is allowed to reference a
/// MedicinalProductDefinition, SubstanceDefinition,
/// AdministrableProductDefinition, ManufacturedItemDefinition, or
/// PackagedProductDefinition resource.
class CodeableConceptSubjectPlanDefinitionAction extends CodeableConcept
    implements SubjectXPlanDefinitionAction {
  /// Factory constructor for super class
  factory CodeableConceptSubjectPlanDefinitionAction.fromJson(
    Map<String, dynamic> json,
  ) =>
      CodeableConcept.fromJson(json)
          as CodeableConceptSubjectPlanDefinitionAction;
}

/// A code, group definition, or canonical reference that describes the
/// intended subject of the action and its children, if any. Canonical
/// references are allowed to support the definition of protocols for drug
/// and substance quality specifications, and is allowed to reference a
/// MedicinalProductDefinition, SubstanceDefinition,
/// AdministrableProductDefinition, ManufacturedItemDefinition, or
/// PackagedProductDefinition resource.
class ReferenceSubjectPlanDefinitionAction extends Reference
    implements SubjectXPlanDefinitionAction {
  /// Factory constructor for super class
  factory ReferenceSubjectPlanDefinitionAction.fromJson(
    Map<String, dynamic> json,
  ) =>
      Reference.fromJson(json) as ReferenceSubjectPlanDefinitionAction;
}

/// A code, group definition, or canonical reference that describes the
/// intended subject of the action and its children, if any. Canonical
/// references are allowed to support the definition of protocols for drug
/// and substance quality specifications, and is allowed to reference a
/// MedicinalProductDefinition, SubstanceDefinition,
/// AdministrableProductDefinition, ManufacturedItemDefinition, or
/// PackagedProductDefinition resource.
class SubjectTypeSubjectPlanDefinitionAction extends SubjectType
    implements SubjectXPlanDefinitionAction {
  /// Factory constructor for super class
  factory SubjectTypeSubjectPlanDefinitionAction.fromJson(
    Map<String, dynamic> json,
  ) =>
      SubjectType.fromJson(json) as SubjectTypeSubjectPlanDefinitionAction;
}

/// An optional value describing when the action should be performed.
sealed class TimingXPlanDefinitionAction extends DataType {}

/// An optional value describing when the action should be performed.
class DateTimeTimingPlanDefinitionAction extends FhirDateTime
    implements TimingXPlanDefinitionAction {
  /// Factory constructor to create a [FhirDateTime] from a [String]
  factory DateTimeTimingPlanDefinitionAction.fromString(
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
      ) as DateTimeTimingPlanDefinitionAction;

  /// Factory constructor to create a [FhirDateTime] from a [DateTime]
  factory DateTimeTimingPlanDefinitionAction.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirDateTime.fromDateTime(input, element: element)
          as DateTimeTimingPlanDefinitionAction;

  /// Factory constructor for super class
  factory DateTimeTimingPlanDefinitionAction.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDateTime.fromJson(json) as DateTimeTimingPlanDefinitionAction;
}

/// An optional value describing when the action should be performed.
class AgeTimingPlanDefinitionAction extends Age
    implements TimingXPlanDefinitionAction {
  /// Factory constructor for super class
  factory AgeTimingPlanDefinitionAction.fromJson(
    Map<String, dynamic> json,
  ) =>
      Age.fromJson(json) as AgeTimingPlanDefinitionAction;
}

/// An optional value describing when the action should be performed.
class PeriodTimingPlanDefinitionAction extends Period
    implements TimingXPlanDefinitionAction {
  /// Factory constructor for super class
  factory PeriodTimingPlanDefinitionAction.fromJson(
    Map<String, dynamic> json,
  ) =>
      Period.fromJson(json) as PeriodTimingPlanDefinitionAction;
}

/// An optional value describing when the action should be performed.
class DurationTimingPlanDefinitionAction extends FhirDuration
    implements TimingXPlanDefinitionAction {
  /// Factory constructor for super class
  factory DurationTimingPlanDefinitionAction.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDuration.fromJson(json) as DurationTimingPlanDefinitionAction;
}

/// An optional value describing when the action should be performed.
class RangeTimingPlanDefinitionAction extends Range
    implements TimingXPlanDefinitionAction {
  /// Factory constructor for super class
  factory RangeTimingPlanDefinitionAction.fromJson(
    Map<String, dynamic> json,
  ) =>
      Range.fromJson(json) as RangeTimingPlanDefinitionAction;
}

/// An optional value describing when the action should be performed.
class TimingTimingPlanDefinitionAction extends Timing
    implements TimingXPlanDefinitionAction {
  /// Factory constructor for super class
  factory TimingTimingPlanDefinitionAction.fromJson(
    Map<String, dynamic> json,
  ) =>
      Timing.fromJson(json) as TimingTimingPlanDefinitionAction;
}

/// A reference to an ActivityDefinition that describes the action to be
/// taken in detail, or a PlanDefinition that describes a series of actions
/// to be taken.
sealed class DefinitionXPlanDefinitionAction extends DataType {}

/// A reference to an ActivityDefinition that describes the action to be
/// taken in detail, or a PlanDefinition that describes a series of actions
/// to be taken.
class CanonicalDefinitionPlanDefinitionAction extends FhirCanonical
    implements DefinitionXPlanDefinitionAction {
  /// Constructor for [CanonicalDefinitionPlanDefinitionAction]
  CanonicalDefinitionPlanDefinitionAction(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory CanonicalDefinitionPlanDefinitionAction.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirCanonical.fromJson(json) as CanonicalDefinitionPlanDefinitionAction;
}

/// A reference to an ActivityDefinition that describes the action to be
/// taken in detail, or a PlanDefinition that describes a series of actions
/// to be taken.
class UriDefinitionPlanDefinitionAction extends FhirUri
    implements DefinitionXPlanDefinitionAction {
  /// Constructor for [UriDefinitionPlanDefinitionAction]
  UriDefinitionPlanDefinitionAction(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory UriDefinitionPlanDefinitionAction.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirUri.fromJson(json) as UriDefinitionPlanDefinitionAction;
}

/// A duration or range of durations to apply to the relationship. For
/// example, 30-60 minutes before.
sealed class OffsetXPlanDefinitionRelatedAction extends DataType {}

/// A duration or range of durations to apply to the relationship. For
/// example, 30-60 minutes before.
class DurationOffsetPlanDefinitionRelatedAction extends FhirDuration
    implements OffsetXPlanDefinitionRelatedAction {
  /// Factory constructor for super class
  factory DurationOffsetPlanDefinitionRelatedAction.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDuration.fromJson(json) as DurationOffsetPlanDefinitionRelatedAction;
}

/// A duration or range of durations to apply to the relationship. For
/// example, 30-60 minutes before.
class RangeOffsetPlanDefinitionRelatedAction extends Range
    implements OffsetXPlanDefinitionRelatedAction {
  /// Factory constructor for super class
  factory RangeOffsetPlanDefinitionRelatedAction.fromJson(
    Map<String, dynamic> json,
  ) =>
      Range.fromJson(json) as RangeOffsetPlanDefinitionRelatedAction;
}
