import 'package:json_annotation/json_annotation.dart';

/// Provides examples of actions to be performed.
enum ActionCode {
  /// Display: Send a message
  /// Definition: The action indicates that a particular message should be sent to a participant in the process.
  @JsonValue('send-message')
  send_message,
  /// Display: Collect information
  /// Definition: The action indicates that information should be collected from a participant in the process.
  @JsonValue('collect-information')
  collect_information,
  /// Display: Prescribe a medication
  /// Definition: The action indicates that a particular medication should be prescribed to the patient.
  @JsonValue('prescribe-medication')
  prescribe_medication,
  /// Display: Recommend an immunization
  /// Definition: The action indicates that a particular immunization should be performed.
  @JsonValue('recommend-immunization')
  recommend_immunization,
  /// Display: Order a service
  /// Definition: The action indicates that a particular service should be provided.
  @JsonValue('order-service')
  order_service,
  /// Display: Propose a diagnosis
  /// Definition: The action indicates that a particular diagnosis should be proposed.
  @JsonValue('propose-diagnosis')
  propose_diagnosis,
  /// Display: Record a detected issue
  /// Definition: The action indicates that a particular detected issue should be recorded.
  @JsonValue('record-detected-issue')
  record_detected_issue,
  /// Display: Record an inference
  /// Definition: The action indicates that a particular inference should be recorded.
  @JsonValue('record-inference')
  record_inference,
  /// Display: Report a flag
  /// Definition: The action indicates that a particular flag should be reported.
  @JsonValue('report-flag')
  report_flag,
;

@override
  String toString() {
      switch(this) {
        case send_message: return 'send-message';
        case collect_information: return 'collect-information';
        case prescribe_medication: return 'prescribe-medication';
        case recommend_immunization: return 'recommend-immunization';
        case order_service: return 'order-service';
        case propose_diagnosis: return 'propose-diagnosis';
        case record_detected_issue: return 'record-detected-issue';
        case record_inference: return 'record-inference';
        case report_flag: return 'report-flag';
      }
      }
String toJson() => toString();
  ActionCode fromString(String str) {
    switch(str) {
      case 'send-message': return ActionCode.send_message;
      case 'collect-information': return ActionCode.collect_information;
      case 'prescribe-medication': return ActionCode.prescribe_medication;
      case 'recommend-immunization': return ActionCode.recommend_immunization;
      case 'order-service': return ActionCode.order_service;
      case 'propose-diagnosis': return ActionCode.propose_diagnosis;
      case 'record-detected-issue': return ActionCode.record_detected_issue;
      case 'record-inference': return ActionCode.record_inference;
      case 'report-flag': return ActionCode.report_flag;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 ActionCode fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

