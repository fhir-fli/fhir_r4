import 'package:fhir_r4/fhir_r4.dart';

/// The mode of a message capability statement.
enum EventCapabilityMode {
  /// Display: Sender
  /// Definition: The application sends requests and receives responses.
  sender('sender'),

  /// Display: Receiver
  /// Definition: The application receives requests and sends responses.
  receiver('receiver'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const EventCapabilityMode(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static EventCapabilityMode fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EventCapabilityMode.elementOnly.withElement(element);
    }
    return EventCapabilityMode.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  EventCapabilityMode withElement(Element? newElement) {
    return EventCapabilityMode.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
