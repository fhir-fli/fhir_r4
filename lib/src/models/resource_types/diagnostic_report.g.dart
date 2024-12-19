part of 'diagnostic_report.dart';

/// The time or time-period the observed values are related to. When the
/// subject of the report is a patient, this is usually either the time of
/// the procedure or of specimen collection(s), but very often the source
/// of the date/time is not known, only the date/time itself.
sealed class EffectiveXDiagnosticReportDiagnosticReport {}

/// The time or time-period the observed values are related to. When the
/// subject of the report is a patient, this is usually either the time of
/// the procedure or of specimen collection(s), but very often the source
/// of the date/time is not known, only the date/time itself.
class DateTimeEffectiveDiagnosticReportDiagnosticReport extends FhirDateTime
    implements EffectiveXDiagnosticReportDiagnosticReport {
  /// Factory constructor to create a [FhirDateTime] from a [String]
  factory DateTimeEffectiveDiagnosticReportDiagnosticReport.fromString(
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
      ) as DateTimeEffectiveDiagnosticReportDiagnosticReport;

  /// Factory constructor to create a [FhirDateTime] from a [DateTime]
  factory DateTimeEffectiveDiagnosticReportDiagnosticReport.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirDateTime.fromDateTime(input, element: element)
          as DateTimeEffectiveDiagnosticReportDiagnosticReport;

  /// Factory constructor for super class
  factory DateTimeEffectiveDiagnosticReportDiagnosticReport.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDateTime.fromJson(json)
          as DateTimeEffectiveDiagnosticReportDiagnosticReport;
}

/// The time or time-period the observed values are related to. When the
/// subject of the report is a patient, this is usually either the time of
/// the procedure or of specimen collection(s), but very often the source
/// of the date/time is not known, only the date/time itself.
class PeriodEffectiveDiagnosticReportDiagnosticReport extends Period
    implements EffectiveXDiagnosticReportDiagnosticReport {
  /// Factory constructor for super class
  factory PeriodEffectiveDiagnosticReportDiagnosticReport.fromJson(
    Map<String, dynamic> json,
  ) =>
      Period.fromJson(json) as PeriodEffectiveDiagnosticReportDiagnosticReport;
}
