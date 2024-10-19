// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Codes describing the purpose or content of the communication.
@Entity()
class CommunicationTopic extends FhirCode {
  /// Factory constructor to create [CommunicationTopic] from JSON.
  factory CommunicationTopic.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CommunicationTopic.elementOnly(element);
    }
    if (values.contains(value)) {
      return CommunicationTopic._(value, element);
    }
    throw ArgumentError(
      'CommunicationTopic.fromJson: JSON value is not a valid value',
    );
  }

  /// prescription_refill_request
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommunicationTopic.prescription_refill_request([this.element])
      : dbValue = 'prescription-refill-request',
        super('prescription-refill-request', element);

  /// progress_update
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommunicationTopic.progress_update([this.element])
      : dbValue = 'progress-update',
        super('progress-update', element);

  /// report_labs
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommunicationTopic.report_labs([this.element])
      : dbValue = 'report-labs',
        super('report-labs', element);

  /// appointment_reminder
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommunicationTopic.appointment_reminder([this.element])
      : dbValue = 'appointment-reminder',
        super('appointment-reminder', element);

  /// phone_consult
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommunicationTopic.phone_consult([this.element])
      : dbValue = 'phone-consult',
        super('phone-consult', element);

  /// summary_report
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommunicationTopic.summary_report([this.element])
      : dbValue = 'summary-report',
        super('summary-report', element);

  /// For instances where an Element is present but not value

  CommunicationTopic.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  CommunicationTopic._(super.input, [super.element])
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
  String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  Element? element;

  /// List of all enum-like values
  @Transient()
  static final List<String> values = [
    'prescription-refill-request',
    'progress-update',
    'report-labs',
    'appointment-reminder',
    'phone-consult',
    'summary-report',
  ];

  /// Returns the enum value with an element attached
  CommunicationTopic withElement(Element? newElement) {
    return CommunicationTopic._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'CommunicationTopic.$value';
}
