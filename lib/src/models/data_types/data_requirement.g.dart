part of 'data_requirement.dart';

/// The intended subjects of the data requirement. If this element is not
/// provided, a Patient subject is assumed.
sealed class SubjectXDataRequirementDataRequirement {}

/// The intended subjects of the data requirement. If this element is not
/// provided, a Patient subject is assumed.
class CodeableConceptSubjectDataRequirementDataRequirement
    extends CodeableConcept implements SubjectXDataRequirementDataRequirement {
  /// Factory constructor for super class
  factory CodeableConceptSubjectDataRequirementDataRequirement.fromJson(
    Map<String, dynamic> json,
  ) =>
      CodeableConcept.fromJson(json)
          as CodeableConceptSubjectDataRequirementDataRequirement;
}

/// The intended subjects of the data requirement. If this element is not
/// provided, a Patient subject is assumed.
class ReferenceSubjectDataRequirementDataRequirement extends Reference
    implements SubjectXDataRequirementDataRequirement {
  /// Factory constructor for super class
  factory ReferenceSubjectDataRequirementDataRequirement.fromJson(
    Map<String, dynamic> json,
  ) =>
      Reference.fromJson(json)
          as ReferenceSubjectDataRequirementDataRequirement;
}

/// The value of the filter. If period is specified, the filter will return
/// only those data items that fall within the bounds determined by the
/// Period, inclusive of the period boundaries. If dateTime is specified,
/// the filter will return only those data items that are equal to the
/// specified dateTime. If a Duration is specified, the filter will return
/// only those data items that fall within Duration before now.
sealed class ValueXDataRequirementDateFilter {}

/// The value of the filter. If period is specified, the filter will return
/// only those data items that fall within the bounds determined by the
/// Period, inclusive of the period boundaries. If dateTime is specified,
/// the filter will return only those data items that are equal to the
/// specified dateTime. If a Duration is specified, the filter will return
/// only those data items that fall within Duration before now.
class DateTimeValueDataRequirementDateFilter extends FhirDateTime
    implements ValueXDataRequirementDateFilter {
  /// Factory constructor to create a [FhirDateTime] from a [String]
  factory DateTimeValueDataRequirementDateFilter.fromString(
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
      ) as DateTimeValueDataRequirementDateFilter;

  /// Factory constructor to create a [FhirDateTime] from a [DateTime]
  factory DateTimeValueDataRequirementDateFilter.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirDateTime.fromDateTime(input, element: element)
          as DateTimeValueDataRequirementDateFilter;

  /// Factory constructor for super class
  factory DateTimeValueDataRequirementDateFilter.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDateTime.fromJson(json) as DateTimeValueDataRequirementDateFilter;
}

/// The value of the filter. If period is specified, the filter will return
/// only those data items that fall within the bounds determined by the
/// Period, inclusive of the period boundaries. If dateTime is specified,
/// the filter will return only those data items that are equal to the
/// specified dateTime. If a Duration is specified, the filter will return
/// only those data items that fall within Duration before now.
class PeriodValueDataRequirementDateFilter extends Period
    implements ValueXDataRequirementDateFilter {
  /// Factory constructor for super class
  factory PeriodValueDataRequirementDateFilter.fromJson(
    Map<String, dynamic> json,
  ) =>
      Period.fromJson(json) as PeriodValueDataRequirementDateFilter;
}

/// The value of the filter. If period is specified, the filter will return
/// only those data items that fall within the bounds determined by the
/// Period, inclusive of the period boundaries. If dateTime is specified,
/// the filter will return only those data items that are equal to the
/// specified dateTime. If a Duration is specified, the filter will return
/// only those data items that fall within Duration before now.
class DurationValueDataRequirementDateFilter extends FhirDuration
    implements ValueXDataRequirementDateFilter {
  /// Factory constructor for super class
  factory DurationValueDataRequirementDateFilter.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDuration.fromJson(json) as DurationValueDataRequirementDateFilter;
}
