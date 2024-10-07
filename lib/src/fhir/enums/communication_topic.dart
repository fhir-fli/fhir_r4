import 'package:json_annotation/json_annotation.dart';

/// Codes describing the purpose or content of the communication.
enum CommunicationTopic {
  /// Display: Prescription Refill Request
  /// Definition: The purpose or content of the communication is a prescription refill request.
  @JsonValue('prescription-refill-request')
  prescription_refill_request,
  /// Display: Progress Update
  /// Definition: The purpose or content of the communication is a progress update.
  @JsonValue('progress-update')
  progress_update,
  /// Display: Report Labs
  /// Definition: The purpose or content of the communication is to report labs.
  @JsonValue('report-labs')
  report_labs,
  /// Display: Appointment Reminder
  /// Definition: The purpose or content of the communication is an appointment reminder.
  @JsonValue('appointment-reminder')
  appointment_reminder,
  /// Display: Phone Consult
  /// Definition: The purpose or content of the communication is a phone consult.
  @JsonValue('phone-consult')
  phone_consult,
  /// Display: Summary Report
  /// Definition: The purpose or content of the communication is a summary report.
  @JsonValue('summary-report')
  summary_report,
;

@override
  String toString() {
      switch(this) {
        case prescription_refill_request: return 'prescription-refill-request';
        case progress_update: return 'progress-update';
        case report_labs: return 'report-labs';
        case appointment_reminder: return 'appointment-reminder';
        case phone_consult: return 'phone-consult';
        case summary_report: return 'summary-report';
      }
      }
String toJson() => toString();
  CommunicationTopic fromString(String str) {
    switch(str) {
      case 'prescription-refill-request': return CommunicationTopic.prescription_refill_request;
      case 'progress-update': return CommunicationTopic.progress_update;
      case 'report-labs': return CommunicationTopic.report_labs;
      case 'appointment-reminder': return CommunicationTopic.appointment_reminder;
      case 'phone-consult': return CommunicationTopic.phone_consult;
      case 'summary-report': return CommunicationTopic.summary_report;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 CommunicationTopic fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

