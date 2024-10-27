// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Codes describing the purpose or content of the communication.
class CommunicationTopic {
  // Private constructor for internal use (like enum)
  CommunicationTopic._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// CommunicationTopic values
  /// prescription_refill_request
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommunicationTopic prescription_refill_request =
      CommunicationTopic._(
    'prescription-refill-request',
  );

  /// progress_update
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommunicationTopic progress_update = CommunicationTopic._(
    'progress-update',
  );

  /// report_labs
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommunicationTopic report_labs = CommunicationTopic._(
    'report-labs',
  );

  /// appointment_reminder
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommunicationTopic appointment_reminder = CommunicationTopic._(
    'appointment-reminder',
  );

  /// phone_consult
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommunicationTopic phone_consult = CommunicationTopic._(
    'phone-consult',
  );

  /// summary_report
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommunicationTopic summary_report = CommunicationTopic._(
    'summary-report',
  );

  /// For instances where an Element is present but not value

  static final CommunicationTopic elementOnly = CommunicationTopic._('');

  /// List of all enum-like values
  static final List<CommunicationTopic> values = [
    prescription_refill_request,
    progress_update,
    report_labs,
    appointment_reminder,
    phone_consult,
    summary_report,
  ];

  /// Returns the enum value with an element attached
  CommunicationTopic withElement(Element? newElement) {
    return CommunicationTopic._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [CommunicationTopic] from JSON.
  static CommunicationTopic fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CommunicationTopic.elementOnly.withElement(element);
    }
    return CommunicationTopic.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
