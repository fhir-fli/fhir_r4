import 'package:fhir_r4/fhir_r4.dart';

/// The status of the diagnostic report.
enum DiagnosticReportStatus {
  /// Display: Registered
  /// Definition: The existence of the report is registered, but there is nothing yet available.
  registered('registered'),

  /// Display: Partial
  /// Definition: This is a partial (e.g. initial, interim or preliminary) report: data in the report may be incomplete or unverified.
  partial('partial'),

  /// Display: Preliminary
  /// Definition: Verified early results are available, but not all results are final.
  preliminary('preliminary'),

  /// Display: Final
  /// Definition: The report is complete and verified by an authorized person.
  final_('final'),

  /// Display: Amended
  /// Definition: Subsequent to being final, the report has been modified. This includes any change in the results, diagnosis, narrative text, or other content of a report that has been issued.
  amended('amended'),

  /// Display: Corrected
  /// Definition: Subsequent to being final, the report has been modified to correct an error in the report or referenced results.
  corrected('corrected'),

  /// Display: Appended
  /// Definition: Subsequent to being final, the report has been modified by adding new content. The existing content is unchanged.
  appended('appended'),

  /// Display: Cancelled
  /// Definition: The report is unavailable because the measurement was not started or not completed (also sometimes called "aborted").
  cancelled('cancelled'),

  /// Display: Entered in Error
  /// Definition: The report has been withdrawn following a previous final release. This electronic record should never have existed, though it is possible that real-world decisions were based on it. (If real-world activity has occurred, the status should be "cancelled" rather than "entered-in-error".).
  entered_in_error('entered-in-error'),

  /// Display: Unknown
  /// Definition: The authoring/source system does not know which of the status values currently applies for this observation. Note: This concept is not to be used for "other" - one of the listed statuses is presumed to apply, but the authoring/source system does not know which.
  unknown('unknown'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const DiagnosticReportStatus(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static DiagnosticReportStatus fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DiagnosticReportStatus.elementOnly.withElement(element);
    }
    return DiagnosticReportStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  DiagnosticReportStatus withElement(Element? newElement) {
    return DiagnosticReportStatus.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
