import 'package:fhir_r4/fhir_r4.dart';

/// Codes describing the purpose or content of the communication.
enum CommunicationTopic {
  /// Display: Prescription Refill Request
  /// Definition: The purpose or content of the communication is a prescription refill request.
  prescription_refill_request('prescription-refill-request'),

  /// Display: Progress Update
  /// Definition: The purpose or content of the communication is a progress update.
  progress_update('progress-update'),

  /// Display: Report Labs
  /// Definition: The purpose or content of the communication is to report labs.
  report_labs('report-labs'),

  /// Display: Appointment Reminder
  /// Definition: The purpose or content of the communication is an appointment reminder.
  appointment_reminder('appointment-reminder'),

  /// Display: Phone Consult
  /// Definition: The purpose or content of the communication is a phone consult.
  phone_consult('phone-consult'),

  /// Display: Summary Report
  /// Definition: The purpose or content of the communication is a summary report.
  summary_report('summary-report'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const CommunicationTopic(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static CommunicationTopic fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CommunicationTopic.elementOnly.withElement(element);
    }
    return CommunicationTopic.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  CommunicationTopic withElement(Element? newElement) {
    return CommunicationTopic.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
