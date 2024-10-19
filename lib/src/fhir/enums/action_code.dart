// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Provides examples of actions to be performed.
@Entity()
class ActionCode extends FhirCode {
  /// Factory constructor to create [ActionCode] from JSON.
  factory ActionCode.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ActionCode.elementOnly(element);
    }
    if (values.contains(value)) {
      return ActionCode._(value, element);
    }
    throw ArgumentError(
      'ActionCode.fromJson: JSON value is not a valid value',
    );
  }

  /// send_message
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ActionCode.send_message([this.element])
      : dbValue = 'send-message',
        super('send-message', element);

  /// collect_information
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ActionCode.collect_information([this.element])
      : dbValue = 'collect-information',
        super('collect-information', element);

  /// prescribe_medication
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ActionCode.prescribe_medication([this.element])
      : dbValue = 'prescribe-medication',
        super('prescribe-medication', element);

  /// recommend_immunization
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ActionCode.recommend_immunization([this.element])
      : dbValue = 'recommend-immunization',
        super('recommend-immunization', element);

  /// order_service
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ActionCode.order_service([this.element])
      : dbValue = 'order-service',
        super('order-service', element);

  /// propose_diagnosis
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ActionCode.propose_diagnosis([this.element])
      : dbValue = 'propose-diagnosis',
        super('propose-diagnosis', element);

  /// record_detected_issue
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ActionCode.record_detected_issue([this.element])
      : dbValue = 'record-detected-issue',
        super('record-detected-issue', element);

  /// record_inference
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ActionCode.record_inference([this.element])
      : dbValue = 'record-inference',
        super('record-inference', element);

  /// report_flag
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ActionCode.report_flag([this.element])
      : dbValue = 'report-flag',
        super('report-flag', element);

  /// For instances where an Element is present but not value

  ActionCode.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ActionCode._(super.input, [super.element])
      : dbValue = input,
        // ignore: prefer_initializing_formals
        element = element;

  @override
  @Id()
  // ignore: overridden_fields
  int dbId = 0;

  /// Value to store in ObjectBox
  @override
  // ignore: overridden_fields
  final String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  final Element? element;

  /// List of all enum-like values
  static final List<String> values = [
    'send-message',
    'collect-information',
    'prescribe-medication',
    'recommend-immunization',
    'order-service',
    'propose-diagnosis',
    'record-detected-issue',
    'record-inference',
    'report-flag',
  ];

  /// Returns the enum value with an element attached
  ActionCode withElement(Element? newElement) {
    return ActionCode._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ActionCode.$value';
}
