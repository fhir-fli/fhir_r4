part of 'allergy_intolerance.dart';

/// Estimated or actual date, date-time, or age when allergy or intolerance
/// was identified.
sealed class OnsetXAllergyIntoleranceAllergyIntolerance {}

/// Estimated or actual date, date-time, or age when allergy or intolerance
/// was identified.
class DateTimeOnsetAllergyIntoleranceAllergyIntolerance extends FhirDateTime
    implements OnsetXAllergyIntoleranceAllergyIntolerance {
  /// Factory constructor to create a [FhirDateTime] from a [String]
  factory DateTimeOnsetAllergyIntoleranceAllergyIntolerance.fromString(
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
      ) as DateTimeOnsetAllergyIntoleranceAllergyIntolerance;

  /// Factory constructor to create a [FhirDateTime] from a [DateTime]
  factory DateTimeOnsetAllergyIntoleranceAllergyIntolerance.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirDateTime.fromDateTime(input, element: element)
          as DateTimeOnsetAllergyIntoleranceAllergyIntolerance;

  /// Factory constructor for super class
  factory DateTimeOnsetAllergyIntoleranceAllergyIntolerance.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDateTime.fromJson(json)
          as DateTimeOnsetAllergyIntoleranceAllergyIntolerance;
}

/// Estimated or actual date, date-time, or age when allergy or intolerance
/// was identified.
class AgeOnsetAllergyIntoleranceAllergyIntolerance extends Age
    implements OnsetXAllergyIntoleranceAllergyIntolerance {
  /// Factory constructor for super class
  factory AgeOnsetAllergyIntoleranceAllergyIntolerance.fromJson(
    Map<String, dynamic> json,
  ) =>
      Age.fromJson(json) as AgeOnsetAllergyIntoleranceAllergyIntolerance;
}

/// Estimated or actual date, date-time, or age when allergy or intolerance
/// was identified.
class PeriodOnsetAllergyIntoleranceAllergyIntolerance extends Period
    implements OnsetXAllergyIntoleranceAllergyIntolerance {
  /// Factory constructor for super class
  factory PeriodOnsetAllergyIntoleranceAllergyIntolerance.fromJson(
    Map<String, dynamic> json,
  ) =>
      Period.fromJson(json) as PeriodOnsetAllergyIntoleranceAllergyIntolerance;
}

/// Estimated or actual date, date-time, or age when allergy or intolerance
/// was identified.
class RangeOnsetAllergyIntoleranceAllergyIntolerance extends Range
    implements OnsetXAllergyIntoleranceAllergyIntolerance {
  /// Factory constructor for super class
  factory RangeOnsetAllergyIntoleranceAllergyIntolerance.fromJson(
    Map<String, dynamic> json,
  ) =>
      Range.fromJson(json) as RangeOnsetAllergyIntoleranceAllergyIntolerance;
}

/// Estimated or actual date, date-time, or age when allergy or intolerance
/// was identified.
class StringOnsetAllergyIntoleranceAllergyIntolerance extends FhirString
    implements OnsetXAllergyIntoleranceAllergyIntolerance {
  /// Constructor for [StringOnsetAllergyIntoleranceAllergyIntolerance]
  StringOnsetAllergyIntoleranceAllergyIntolerance(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory StringOnsetAllergyIntoleranceAllergyIntolerance.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirString.fromJson(json)
          as StringOnsetAllergyIntoleranceAllergyIntolerance;
}
