import 'package:json_annotation/json_annotation.dart';

/// The status of the diagnostic report.
enum DiagnosticReportStatus {
  /// Display: Registered
  /// Definition: The existence of the report is registered, but there is nothing yet available.
  @JsonValue('registered')
  registered,

  /// Display: Partial
  /// Definition: This is a partial (e.g. initial, interim or preliminary) report: data in the report may be incomplete or unverified.
  @JsonValue('partial')
  partial,

  /// Display: Preliminary
  /// Definition: Verified early results are available, but not all  results are final.
  @JsonValue('preliminary')
  preliminary,

  /// Display: Final
  /// Definition: The report is complete and verified by an authorized person.
  @JsonValue('final')
  final_,

  /// Display: Amended
  /// Definition: Subsequent to being final, the report has been modified.  This includes any change in the results, diagnosis, narrative text, or other content of a report that has been issued.
  @JsonValue('amended')
  amended,

  /// Display: Corrected
  /// Definition: Subsequent to being final, the report has been modified  to correct an error in the report or referenced results.
  @JsonValue('corrected')
  corrected,

  /// Display: Appended
  /// Definition: Subsequent to being final, the report has been modified by adding new content. The existing content is unchanged.
  @JsonValue('appended')
  appended,

  /// Display: Cancelled
  /// Definition: The report is unavailable because the measurement was not started or not completed (also sometimes called "aborted").
  @JsonValue('cancelled')
  cancelled,

  /// Display: Entered in Error
  /// Definition: The report has been withdrawn following a previous final release.  This electronic record should never have existed, though it is possible that real-world decisions were based on it. (If real-world activity has occurred, the status should be "cancelled" rather than "entered-in-error".).
  @JsonValue('entered-in-error')
  entered_in_error,

  /// Display: Unknown
  /// Definition: The authoring/source system does not know which of the status values currently applies for this observation. Note: This concept is not to be used for "other" - one of the listed statuses is presumed to apply, but the authoring/source system does not know which.
  @JsonValue('unknown')
  unknown,
  ;

  @override
  String toString() {
    switch (this) {
      case registered:
        return 'registered';
      case partial:
        return 'partial';
      case preliminary:
        return 'preliminary';
      case final_:
        return 'final';
      case amended:
        return 'amended';
      case corrected:
        return 'corrected';
      case appended:
        return 'appended';
      case cancelled:
        return 'cancelled';
      case entered_in_error:
        return 'entered-in-error';
      case unknown:
        return 'unknown';
    }
  }

  String toJson() => toString();
  static DiagnosticReportStatus fromString(String str) {
    switch (str) {
      case 'registered':
        return DiagnosticReportStatus.registered;
      case 'partial':
        return DiagnosticReportStatus.partial;
      case 'preliminary':
        return DiagnosticReportStatus.preliminary;
      case 'final':
        return DiagnosticReportStatus.final_;
      case 'amended':
        return DiagnosticReportStatus.amended;
      case 'corrected':
        return DiagnosticReportStatus.corrected;
      case 'appended':
        return DiagnosticReportStatus.appended;
      case 'cancelled':
        return DiagnosticReportStatus.cancelled;
      case 'entered-in-error':
        return DiagnosticReportStatus.entered_in_error;
      case 'unknown':
        return DiagnosticReportStatus.unknown;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static DiagnosticReportStatus fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
