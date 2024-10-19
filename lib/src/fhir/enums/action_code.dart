// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Provides examples of actions to be performed.
class ActionCode {
  // Private constructor for internal use (like enum)
  ActionCode._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ActionCode values
  /// send_message
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ActionCode send_message = ActionCode._(
    'send-message',
  );

  /// collect_information
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ActionCode collect_information = ActionCode._(
    'collect-information',
  );

  /// prescribe_medication
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ActionCode prescribe_medication = ActionCode._(
    'prescribe-medication',
  );

  /// recommend_immunization
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ActionCode recommend_immunization = ActionCode._(
    'recommend-immunization',
  );

  /// order_service
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ActionCode order_service = ActionCode._(
    'order-service',
  );

  /// propose_diagnosis
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ActionCode propose_diagnosis = ActionCode._(
    'propose-diagnosis',
  );

  /// record_detected_issue
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ActionCode record_detected_issue = ActionCode._(
    'record-detected-issue',
  );

  /// record_inference
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ActionCode record_inference = ActionCode._(
    'record-inference',
  );

  /// report_flag
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ActionCode report_flag = ActionCode._(
    'report-flag',
  );

  /// For instances where an Element is present but not value

  static final ActionCode elementOnly = ActionCode._('');

  /// List of all enum-like values
  static final List<ActionCode> values = [
    send_message,
    collect_information,
    prescribe_medication,
    recommend_immunization,
    order_service,
    propose_diagnosis,
    record_detected_issue,
    record_inference,
    report_flag,
  ];

  /// Returns the enum value with an element attached
  ActionCode withElement(Element? newElement) {
    return ActionCode._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ActionCode] from JSON.
  static ActionCode fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ActionCode.elementOnly.withElement(element);
    }
    return ActionCode.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ActionCode.$fhirCode';
}
