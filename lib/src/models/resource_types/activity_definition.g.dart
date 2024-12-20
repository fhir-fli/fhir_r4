part of 'activity_definition.dart';

/// A code, group definition, or canonical reference that describes or
/// identifies the intended subject of the activity being defined.
/// Canonical references are allowed to support the definition of protocols
/// for drug and substance quality specifications, and is allowed to
/// reference a MedicinalProductDefinition, SubstanceDefinition,
/// AdministrableProductDefinition, ManufacturedItemDefinition, or
/// PackagedProductDefinition resource.
sealed class SubjectXActivityDefinitionActivityDefinition extends DataType {}

/// A code, group definition, or canonical reference that describes or
/// identifies the intended subject of the activity being defined.
/// Canonical references are allowed to support the definition of protocols
/// for drug and substance quality specifications, and is allowed to
/// reference a MedicinalProductDefinition, SubstanceDefinition,
/// AdministrableProductDefinition, ManufacturedItemDefinition, or
/// PackagedProductDefinition resource.
class CodeableConceptSubjectActivityDefinitionActivityDefinition
    extends CodeableConcept
    implements SubjectXActivityDefinitionActivityDefinition {
  /// Factory constructor for super class
  factory CodeableConceptSubjectActivityDefinitionActivityDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      CodeableConcept.fromJson(json)
          as CodeableConceptSubjectActivityDefinitionActivityDefinition;
}

/// A code, group definition, or canonical reference that describes or
/// identifies the intended subject of the activity being defined.
/// Canonical references are allowed to support the definition of protocols
/// for drug and substance quality specifications, and is allowed to
/// reference a MedicinalProductDefinition, SubstanceDefinition,
/// AdministrableProductDefinition, ManufacturedItemDefinition, or
/// PackagedProductDefinition resource.
class ReferenceSubjectActivityDefinitionActivityDefinition extends Reference
    implements SubjectXActivityDefinitionActivityDefinition {
  /// Factory constructor for super class
  factory ReferenceSubjectActivityDefinitionActivityDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      Reference.fromJson(json)
          as ReferenceSubjectActivityDefinitionActivityDefinition;
}

/// A code, group definition, or canonical reference that describes or
/// identifies the intended subject of the activity being defined.
/// Canonical references are allowed to support the definition of protocols
/// for drug and substance quality specifications, and is allowed to
/// reference a MedicinalProductDefinition, SubstanceDefinition,
/// AdministrableProductDefinition, ManufacturedItemDefinition, or
/// PackagedProductDefinition resource.
class SubjectTypeSubjectActivityDefinitionActivityDefinition extends SubjectType
    implements SubjectXActivityDefinitionActivityDefinition {
  /// Factory constructor for super class
  factory SubjectTypeSubjectActivityDefinitionActivityDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      SubjectType.fromJson(json)
          as SubjectTypeSubjectActivityDefinitionActivityDefinition;
}

/// The period, timing or frequency upon which the described activity is to
/// occur.
sealed class TimingXActivityDefinitionActivityDefinition extends DataType {}

/// The period, timing or frequency upon which the described activity is to
/// occur.
class TimingTimingActivityDefinitionActivityDefinition extends Timing
    implements TimingXActivityDefinitionActivityDefinition {
  /// Factory constructor for super class
  factory TimingTimingActivityDefinitionActivityDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      Timing.fromJson(json) as TimingTimingActivityDefinitionActivityDefinition;
}

/// The period, timing or frequency upon which the described activity is to
/// occur.
class DateTimeTimingActivityDefinitionActivityDefinition extends FhirDateTime
    implements TimingXActivityDefinitionActivityDefinition {
  /// Factory constructor to create a [FhirDateTime] from a [String]
  factory DateTimeTimingActivityDefinitionActivityDefinition.fromString(
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
      ) as DateTimeTimingActivityDefinitionActivityDefinition;

  /// Factory constructor to create a [FhirDateTime] from a [DateTime]
  factory DateTimeTimingActivityDefinitionActivityDefinition.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirDateTime.fromDateTime(input, element: element)
          as DateTimeTimingActivityDefinitionActivityDefinition;

  /// Factory constructor for super class
  factory DateTimeTimingActivityDefinitionActivityDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDateTime.fromJson(json)
          as DateTimeTimingActivityDefinitionActivityDefinition;
}

/// The period, timing or frequency upon which the described activity is to
/// occur.
class AgeTimingActivityDefinitionActivityDefinition extends Age
    implements TimingXActivityDefinitionActivityDefinition {
  /// Factory constructor for super class
  factory AgeTimingActivityDefinitionActivityDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      Age.fromJson(json) as AgeTimingActivityDefinitionActivityDefinition;
}

/// The period, timing or frequency upon which the described activity is to
/// occur.
class PeriodTimingActivityDefinitionActivityDefinition extends Period
    implements TimingXActivityDefinitionActivityDefinition {
  /// Factory constructor for super class
  factory PeriodTimingActivityDefinitionActivityDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      Period.fromJson(json) as PeriodTimingActivityDefinitionActivityDefinition;
}

/// The period, timing or frequency upon which the described activity is to
/// occur.
class RangeTimingActivityDefinitionActivityDefinition extends Range
    implements TimingXActivityDefinitionActivityDefinition {
  /// Factory constructor for super class
  factory RangeTimingActivityDefinitionActivityDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      Range.fromJson(json) as RangeTimingActivityDefinitionActivityDefinition;
}

/// The period, timing or frequency upon which the described activity is to
/// occur.
class DurationTimingActivityDefinitionActivityDefinition extends FhirDuration
    implements TimingXActivityDefinitionActivityDefinition {
  /// Factory constructor for super class
  factory DurationTimingActivityDefinitionActivityDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDuration.fromJson(json)
          as DurationTimingActivityDefinitionActivityDefinition;
}

/// Identifies the food, drug or other product being consumed or supplied
/// in the activity.
sealed class ProductXActivityDefinitionActivityDefinition extends DataType {}

/// Identifies the food, drug or other product being consumed or supplied
/// in the activity.
class ReferenceProductActivityDefinitionActivityDefinition extends Reference
    implements ProductXActivityDefinitionActivityDefinition {
  /// Factory constructor for super class
  factory ReferenceProductActivityDefinitionActivityDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      Reference.fromJson(json)
          as ReferenceProductActivityDefinitionActivityDefinition;
}

/// Identifies the food, drug or other product being consumed or supplied
/// in the activity.
class CodeableConceptProductActivityDefinitionActivityDefinition
    extends CodeableConcept
    implements ProductXActivityDefinitionActivityDefinition {
  /// Factory constructor for super class
  factory CodeableConceptProductActivityDefinitionActivityDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      CodeableConcept.fromJson(json)
          as CodeableConceptProductActivityDefinitionActivityDefinition;
}
