import 'package:fhir_r4/fhir_r4.dart';

/// Provides examples of actions to be performed.
enum ActionCode {
  /// Display: Send a message
  /// Definition: The action indicates that a particular message should be sent to a participant in the process.
  send_message('send-message'),

  /// Display: Collect information
  /// Definition: The action indicates that information should be collected from a participant in the process.
  collect_information('collect-information'),

  /// Display: Prescribe a medication
  /// Definition: The action indicates that a particular medication should be prescribed to the patient.
  prescribe_medication('prescribe-medication'),

  /// Display: Recommend an immunization
  /// Definition: The action indicates that a particular immunization should be performed.
  recommend_immunization('recommend-immunization'),

  /// Display: Order a service
  /// Definition: The action indicates that a particular service should be provided.
  order_service('order-service'),

  /// Display: Propose a diagnosis
  /// Definition: The action indicates that a particular diagnosis should be proposed.
  propose_diagnosis('propose-diagnosis'),

  /// Display: Record a detected issue
  /// Definition: The action indicates that a particular detected issue should be recorded.
  record_detected_issue('record-detected-issue'),

  /// Display: Record an inference
  /// Definition: The action indicates that a particular inference should be recorded.
  record_inference('record-inference'),

  /// Display: Report a flag
  /// Definition: The action indicates that a particular flag should be reported.
  report_flag('report-flag'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ActionCode(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ActionCode fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ActionCode.elementOnly.withElement(element);
    }
    return ActionCode.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ActionCode withElement(Element? newElement) {
    return ActionCode.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
