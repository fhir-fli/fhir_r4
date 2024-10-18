// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

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

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ActionCode(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ActionCode] instances.
  static ActionCode fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ActionCode.elementOnly.withElement(
        element,
      );
    }
    return ActionCode.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  ActionCode withElement(Element? newElement) {
    return ActionCode.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
