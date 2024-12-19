part of 'condition.dart';

/// Estimated or actual date or date-time the condition began, in the
/// opinion of the clinician.
sealed class OnsetXConditionCondition {}

/// Estimated or actual date or date-time the condition began, in the
/// opinion of the clinician.
class DateTimeOnsetConditionCondition extends FhirDateTime
    implements OnsetXConditionCondition {
  /// Factory constructor to create a [FhirDateTime] from a [String]
  factory DateTimeOnsetConditionCondition.fromString(
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
      ) as DateTimeOnsetConditionCondition;

  /// Factory constructor to create a [FhirDateTime] from a [DateTime]
  factory DateTimeOnsetConditionCondition.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirDateTime.fromDateTime(input, element: element)
          as DateTimeOnsetConditionCondition;

  /// Factory constructor for super class
  factory DateTimeOnsetConditionCondition.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDateTime.fromJson(json) as DateTimeOnsetConditionCondition;
}

/// Estimated or actual date or date-time the condition began, in the
/// opinion of the clinician.
class AgeOnsetConditionCondition extends Age
    implements OnsetXConditionCondition {
  /// Factory constructor for super class
  factory AgeOnsetConditionCondition.fromJson(
    Map<String, dynamic> json,
  ) =>
      Age.fromJson(json) as AgeOnsetConditionCondition;
}

/// Estimated or actual date or date-time the condition began, in the
/// opinion of the clinician.
class PeriodOnsetConditionCondition extends Period
    implements OnsetXConditionCondition {
  /// Factory constructor for super class
  factory PeriodOnsetConditionCondition.fromJson(
    Map<String, dynamic> json,
  ) =>
      Period.fromJson(json) as PeriodOnsetConditionCondition;
}

/// Estimated or actual date or date-time the condition began, in the
/// opinion of the clinician.
class RangeOnsetConditionCondition extends Range
    implements OnsetXConditionCondition {
  /// Factory constructor for super class
  factory RangeOnsetConditionCondition.fromJson(
    Map<String, dynamic> json,
  ) =>
      Range.fromJson(json) as RangeOnsetConditionCondition;
}

/// Estimated or actual date or date-time the condition began, in the
/// opinion of the clinician.
class StringOnsetConditionCondition extends FhirString
    implements OnsetXConditionCondition {
  /// Constructor for [StringOnsetConditionCondition]
  StringOnsetConditionCondition(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory StringOnsetConditionCondition.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirString.fromJson(json) as StringOnsetConditionCondition;
}

/// The date or estimated date that the condition resolved or went into
/// remission. This is called "abatement" because of the many overloaded
/// connotations associated with "remission" or "resolution" - Conditions
/// are never really resolved, but they can abate.
sealed class AbatementXConditionCondition {}

/// The date or estimated date that the condition resolved or went into
/// remission. This is called "abatement" because of the many overloaded
/// connotations associated with "remission" or "resolution" - Conditions
/// are never really resolved, but they can abate.
class DateTimeAbatementConditionCondition extends FhirDateTime
    implements AbatementXConditionCondition {
  /// Factory constructor to create a [FhirDateTime] from a [String]
  factory DateTimeAbatementConditionCondition.fromString(
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
      ) as DateTimeAbatementConditionCondition;

  /// Factory constructor to create a [FhirDateTime] from a [DateTime]
  factory DateTimeAbatementConditionCondition.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirDateTime.fromDateTime(input, element: element)
          as DateTimeAbatementConditionCondition;

  /// Factory constructor for super class
  factory DateTimeAbatementConditionCondition.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDateTime.fromJson(json) as DateTimeAbatementConditionCondition;
}

/// The date or estimated date that the condition resolved or went into
/// remission. This is called "abatement" because of the many overloaded
/// connotations associated with "remission" or "resolution" - Conditions
/// are never really resolved, but they can abate.
class AgeAbatementConditionCondition extends Age
    implements AbatementXConditionCondition {
  /// Factory constructor for super class
  factory AgeAbatementConditionCondition.fromJson(
    Map<String, dynamic> json,
  ) =>
      Age.fromJson(json) as AgeAbatementConditionCondition;
}

/// The date or estimated date that the condition resolved or went into
/// remission. This is called "abatement" because of the many overloaded
/// connotations associated with "remission" or "resolution" - Conditions
/// are never really resolved, but they can abate.
class PeriodAbatementConditionCondition extends Period
    implements AbatementXConditionCondition {
  /// Factory constructor for super class
  factory PeriodAbatementConditionCondition.fromJson(
    Map<String, dynamic> json,
  ) =>
      Period.fromJson(json) as PeriodAbatementConditionCondition;
}

/// The date or estimated date that the condition resolved or went into
/// remission. This is called "abatement" because of the many overloaded
/// connotations associated with "remission" or "resolution" - Conditions
/// are never really resolved, but they can abate.
class RangeAbatementConditionCondition extends Range
    implements AbatementXConditionCondition {
  /// Factory constructor for super class
  factory RangeAbatementConditionCondition.fromJson(
    Map<String, dynamic> json,
  ) =>
      Range.fromJson(json) as RangeAbatementConditionCondition;
}

/// The date or estimated date that the condition resolved or went into
/// remission. This is called "abatement" because of the many overloaded
/// connotations associated with "remission" or "resolution" - Conditions
/// are never really resolved, but they can abate.
class StringAbatementConditionCondition extends FhirString
    implements AbatementXConditionCondition {
  /// Constructor for [StringAbatementConditionCondition]
  StringAbatementConditionCondition(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory StringAbatementConditionCondition.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirString.fromJson(json) as StringAbatementConditionCondition;
}
