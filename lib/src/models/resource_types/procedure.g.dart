part of 'procedure.dart';

/// Estimated or actual date, date-time, period, or age when the procedure
/// was performed. Allows a period to support complex procedures that span
/// more than one date, and also allows for the length of the procedure to
/// be captured.
sealed class PerformedXProcedureProcedure extends DataType {}

/// Estimated or actual date, date-time, period, or age when the procedure
/// was performed. Allows a period to support complex procedures that span
/// more than one date, and also allows for the length of the procedure to
/// be captured.
class DateTimePerformedProcedureProcedure extends FhirDateTime
    implements PerformedXProcedureProcedure {
  /// Factory constructor to create a [FhirDateTime] from a [String]
  factory DateTimePerformedProcedureProcedure.fromString(
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
      ) as DateTimePerformedProcedureProcedure;

  /// Factory constructor to create a [FhirDateTime] from a [DateTime]
  factory DateTimePerformedProcedureProcedure.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirDateTime.fromDateTime(input, element: element)
          as DateTimePerformedProcedureProcedure;

  /// Factory constructor for super class
  factory DateTimePerformedProcedureProcedure.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDateTime.fromJson(json) as DateTimePerformedProcedureProcedure;
}

/// Estimated or actual date, date-time, period, or age when the procedure
/// was performed. Allows a period to support complex procedures that span
/// more than one date, and also allows for the length of the procedure to
/// be captured.
class PeriodPerformedProcedureProcedure extends Period
    implements PerformedXProcedureProcedure {
  /// Factory constructor for super class
  factory PeriodPerformedProcedureProcedure.fromJson(
    Map<String, dynamic> json,
  ) =>
      Period.fromJson(json) as PeriodPerformedProcedureProcedure;
}

/// Estimated or actual date, date-time, period, or age when the procedure
/// was performed. Allows a period to support complex procedures that span
/// more than one date, and also allows for the length of the procedure to
/// be captured.
class StringPerformedProcedureProcedure extends FhirString
    implements PerformedXProcedureProcedure {
  /// Constructor for [StringPerformedProcedureProcedure]
  StringPerformedProcedureProcedure(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory StringPerformedProcedureProcedure.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirString.fromJson(json) as StringPerformedProcedureProcedure;
}

/// Estimated or actual date, date-time, period, or age when the procedure
/// was performed. Allows a period to support complex procedures that span
/// more than one date, and also allows for the length of the procedure to
/// be captured.
class AgePerformedProcedureProcedure extends Age
    implements PerformedXProcedureProcedure {
  /// Factory constructor for super class
  factory AgePerformedProcedureProcedure.fromJson(
    Map<String, dynamic> json,
  ) =>
      Age.fromJson(json) as AgePerformedProcedureProcedure;
}

/// Estimated or actual date, date-time, period, or age when the procedure
/// was performed. Allows a period to support complex procedures that span
/// more than one date, and also allows for the length of the procedure to
/// be captured.
class RangePerformedProcedureProcedure extends Range
    implements PerformedXProcedureProcedure {
  /// Factory constructor for super class
  factory RangePerformedProcedureProcedure.fromJson(
    Map<String, dynamic> json,
  ) =>
      Range.fromJson(json) as RangePerformedProcedureProcedure;
}
