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
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const CommunicationCategory(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static CommunicationCategory fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CommunicationCategory.elementOnly.withElement(element);
    }
    return CommunicationCategory.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  CommunicationCategory withElement(Element? newElement) {
    return CommunicationCategory.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
