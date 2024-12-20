part of 'research_element_definition.dart';

/// The intended subjects for the ResearchElementDefinition. If this
/// element is not provided, a Patient subject is assumed, but the subject
/// of the ResearchElementDefinition can be anything.
sealed class SubjectXResearchElementDefinitionResearchElementDefinition
    extends DataType {}

/// The intended subjects for the ResearchElementDefinition. If this
/// element is not provided, a Patient subject is assumed, but the subject
/// of the ResearchElementDefinition can be anything.
class CodeableConceptSubjectResearchElementDefinitionResearchElementDefinition
    extends CodeableConcept
    implements SubjectXResearchElementDefinitionResearchElementDefinition {
  /// Factory constructor for super class
  factory CodeableConceptSubjectResearchElementDefinitionResearchElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      CodeableConcept.fromJson(json)
          as CodeableConceptSubjectResearchElementDefinitionResearchElementDefinition;
}

/// The intended subjects for the ResearchElementDefinition. If this
/// element is not provided, a Patient subject is assumed, but the subject
/// of the ResearchElementDefinition can be anything.
class ReferenceSubjectResearchElementDefinitionResearchElementDefinition
    extends Reference
    implements SubjectXResearchElementDefinitionResearchElementDefinition {
  /// Factory constructor for super class
  factory ReferenceSubjectResearchElementDefinitionResearchElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      Reference.fromJson(json)
          as ReferenceSubjectResearchElementDefinitionResearchElementDefinition;
}

/// Define members of the research element using Codes (such as condition,
/// medication, or observation), Expressions ( using an expression language
/// such as FHIRPath or CQL) or DataRequirements (such as Diabetes
/// diagnosis onset in the last year).
sealed class DefinitionXResearchElementDefinitionCharacteristic
    extends DataType {}

/// Define members of the research element using Codes (such as condition,
/// medication, or observation), Expressions ( using an expression language
/// such as FHIRPath or CQL) or DataRequirements (such as Diabetes
/// diagnosis onset in the last year).
class CodeableConceptDefinitionResearchElementDefinitionCharacteristic
    extends CodeableConcept
    implements DefinitionXResearchElementDefinitionCharacteristic {
  /// Factory constructor for super class
  factory CodeableConceptDefinitionResearchElementDefinitionCharacteristic.fromJson(
    Map<String, dynamic> json,
  ) =>
      CodeableConcept.fromJson(json)
          as CodeableConceptDefinitionResearchElementDefinitionCharacteristic;
}

/// Define members of the research element using Codes (such as condition,
/// medication, or observation), Expressions ( using an expression language
/// such as FHIRPath or CQL) or DataRequirements (such as Diabetes
/// diagnosis onset in the last year).
class CanonicalDefinitionResearchElementDefinitionCharacteristic
    extends FhirCanonical
    implements DefinitionXResearchElementDefinitionCharacteristic {
  /// Constructor for [CanonicalDefinitionResearchElementDefinitionCharacteristic]
  CanonicalDefinitionResearchElementDefinitionCharacteristic(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory CanonicalDefinitionResearchElementDefinitionCharacteristic.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirCanonical.fromJson(json)
          as CanonicalDefinitionResearchElementDefinitionCharacteristic;
}

/// Define members of the research element using Codes (such as condition,
/// medication, or observation), Expressions ( using an expression language
/// such as FHIRPath or CQL) or DataRequirements (such as Diabetes
/// diagnosis onset in the last year).
class ExpressionDefinitionResearchElementDefinitionCharacteristic
    extends FhirExpression
    implements DefinitionXResearchElementDefinitionCharacteristic {
  /// Factory constructor for super class
  factory ExpressionDefinitionResearchElementDefinitionCharacteristic.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirExpression.fromJson(json)
          as ExpressionDefinitionResearchElementDefinitionCharacteristic;
}

/// Define members of the research element using Codes (such as condition,
/// medication, or observation), Expressions ( using an expression language
/// such as FHIRPath or CQL) or DataRequirements (such as Diabetes
/// diagnosis onset in the last year).
class DataRequirementDefinitionResearchElementDefinitionCharacteristic
    extends DataRequirement
    implements DefinitionXResearchElementDefinitionCharacteristic {
  /// Factory constructor for super class
  factory DataRequirementDefinitionResearchElementDefinitionCharacteristic.fromJson(
    Map<String, dynamic> json,
  ) =>
      DataRequirement.fromJson(json)
          as DataRequirementDefinitionResearchElementDefinitionCharacteristic;
}

/// Indicates what effective period the study covers.
sealed class StudyEffectiveXResearchElementDefinitionCharacteristic
    extends DataType {}

/// Indicates what effective period the study covers.
class DateTimeStudyEffectiveResearchElementDefinitionCharacteristic
    extends FhirDateTime
    implements StudyEffectiveXResearchElementDefinitionCharacteristic {
  /// Factory constructor to create a [FhirDateTime] from a [String]
  factory DateTimeStudyEffectiveResearchElementDefinitionCharacteristic.fromString(
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
      ) as DateTimeStudyEffectiveResearchElementDefinitionCharacteristic;

  /// Factory constructor to create a [FhirDateTime] from a [DateTime]
  factory DateTimeStudyEffectiveResearchElementDefinitionCharacteristic.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirDateTime.fromDateTime(input, element: element)
          as DateTimeStudyEffectiveResearchElementDefinitionCharacteristic;

  /// Factory constructor for super class
  factory DateTimeStudyEffectiveResearchElementDefinitionCharacteristic.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDateTime.fromJson(json)
          as DateTimeStudyEffectiveResearchElementDefinitionCharacteristic;
}

/// Indicates what effective period the study covers.
class PeriodStudyEffectiveResearchElementDefinitionCharacteristic extends Period
    implements StudyEffectiveXResearchElementDefinitionCharacteristic {
  /// Factory constructor for super class
  factory PeriodStudyEffectiveResearchElementDefinitionCharacteristic.fromJson(
    Map<String, dynamic> json,
  ) =>
      Period.fromJson(json)
          as PeriodStudyEffectiveResearchElementDefinitionCharacteristic;
}

/// Indicates what effective period the study covers.
class DurationStudyEffectiveResearchElementDefinitionCharacteristic
    extends FhirDuration
    implements StudyEffectiveXResearchElementDefinitionCharacteristic {
  /// Factory constructor for super class
  factory DurationStudyEffectiveResearchElementDefinitionCharacteristic.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDuration.fromJson(json)
          as DurationStudyEffectiveResearchElementDefinitionCharacteristic;
}

/// Indicates what effective period the study covers.
class TimingStudyEffectiveResearchElementDefinitionCharacteristic extends Timing
    implements StudyEffectiveXResearchElementDefinitionCharacteristic {
  /// Factory constructor for super class
  factory TimingStudyEffectiveResearchElementDefinitionCharacteristic.fromJson(
    Map<String, dynamic> json,
  ) =>
      Timing.fromJson(json)
          as TimingStudyEffectiveResearchElementDefinitionCharacteristic;
}

/// Indicates what effective period the study covers.
sealed class ParticipantEffectiveXResearchElementDefinitionCharacteristic
    extends DataType {}

/// Indicates what effective period the study covers.
class DateTimeParticipantEffectiveResearchElementDefinitionCharacteristic
    extends FhirDateTime
    implements ParticipantEffectiveXResearchElementDefinitionCharacteristic {
  /// Factory constructor to create a [FhirDateTime] from a [String]
  factory DateTimeParticipantEffectiveResearchElementDefinitionCharacteristic.fromString(
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
      ) as DateTimeParticipantEffectiveResearchElementDefinitionCharacteristic;

  /// Factory constructor to create a [FhirDateTime] from a [DateTime]
  factory DateTimeParticipantEffectiveResearchElementDefinitionCharacteristic.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirDateTime.fromDateTime(input, element: element)
          as DateTimeParticipantEffectiveResearchElementDefinitionCharacteristic;

  /// Factory constructor for super class
  factory DateTimeParticipantEffectiveResearchElementDefinitionCharacteristic.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDateTime.fromJson(json)
          as DateTimeParticipantEffectiveResearchElementDefinitionCharacteristic;
}

/// Indicates what effective period the study covers.
class PeriodParticipantEffectiveResearchElementDefinitionCharacteristic
    extends Period
    implements ParticipantEffectiveXResearchElementDefinitionCharacteristic {
  /// Factory constructor for super class
  factory PeriodParticipantEffectiveResearchElementDefinitionCharacteristic.fromJson(
    Map<String, dynamic> json,
  ) =>
      Period.fromJson(json)
          as PeriodParticipantEffectiveResearchElementDefinitionCharacteristic;
}

/// Indicates what effective period the study covers.
class DurationParticipantEffectiveResearchElementDefinitionCharacteristic
    extends FhirDuration
    implements ParticipantEffectiveXResearchElementDefinitionCharacteristic {
  /// Factory constructor for super class
  factory DurationParticipantEffectiveResearchElementDefinitionCharacteristic.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDuration.fromJson(json)
          as DurationParticipantEffectiveResearchElementDefinitionCharacteristic;
}

/// Indicates what effective period the study covers.
class TimingParticipantEffectiveResearchElementDefinitionCharacteristic
    extends Timing
    implements ParticipantEffectiveXResearchElementDefinitionCharacteristic {
  /// Factory constructor for super class
  factory TimingParticipantEffectiveResearchElementDefinitionCharacteristic.fromJson(
    Map<String, dynamic> json,
  ) =>
      Timing.fromJson(json)
          as TimingParticipantEffectiveResearchElementDefinitionCharacteristic;
}
