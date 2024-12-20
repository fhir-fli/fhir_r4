part of 'detected_issue.dart';

/// The date or period when the detected issue was initially identified.
sealed class IdentifiedXDetectedIssueDetectedIssue extends DataType {}

/// The date or period when the detected issue was initially identified.
class DateTimeIdentifiedDetectedIssueDetectedIssue extends FhirDateTime
    implements IdentifiedXDetectedIssueDetectedIssue {
  /// Factory constructor to create a [FhirDateTime] from a [String]
  factory DateTimeIdentifiedDetectedIssueDetectedIssue.fromString(
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
      ) as DateTimeIdentifiedDetectedIssueDetectedIssue;

  /// Factory constructor to create a [FhirDateTime] from a [DateTime]
  factory DateTimeIdentifiedDetectedIssueDetectedIssue.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirDateTime.fromDateTime(input, element: element)
          as DateTimeIdentifiedDetectedIssueDetectedIssue;

  /// Factory constructor for super class
  factory DateTimeIdentifiedDetectedIssueDetectedIssue.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDateTime.fromJson(json)
          as DateTimeIdentifiedDetectedIssueDetectedIssue;
}

/// The date or period when the detected issue was initially identified.
class PeriodIdentifiedDetectedIssueDetectedIssue extends Period
    implements IdentifiedXDetectedIssueDetectedIssue {
  /// Factory constructor for super class
  factory PeriodIdentifiedDetectedIssueDetectedIssue.fromJson(
    Map<String, dynamic> json,
  ) =>
      Period.fromJson(json) as PeriodIdentifiedDetectedIssueDetectedIssue;
}
