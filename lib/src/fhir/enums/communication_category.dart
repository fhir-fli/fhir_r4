// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Codes for general categories of communications such as alerts, instructions, etc.
enum CommunicationCategory {
  /// Display: Alert
  /// Definition: The communication conveys an alert.
  alert('alert'),

  /// Display: Notification
  /// Definition: The communication conveys a notification.
  notification('notification'),

  /// Display: Reminder
  /// Definition: The communication conveys a reminder.
  reminder('reminder'),

  /// Display: Instruction
  /// Definition: The communication conveys an instruction.
  instruction('instruction'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const CommunicationCategory(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [CommunicationCategory] instances.
  static CommunicationCategory fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CommunicationCategory.elementOnly.withElement(element);
    }
    return CommunicationCategory.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  CommunicationCategory withElement(Element? newElement) {
    return CommunicationCategory.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
