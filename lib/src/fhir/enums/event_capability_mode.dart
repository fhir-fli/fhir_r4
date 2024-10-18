// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The mode of a message capability statement.
enum EventCapabilityMode {
  /// Display: Sender
  /// Definition: The application sends requests and receives responses.
  sender('sender'),

  /// Display: Receiver
  /// Definition: The application receives requests and sends responses.
  receiver('receiver'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const EventCapabilityMode(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [EventCapabilityMode] instances.
  static EventCapabilityMode fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EventCapabilityMode.elementOnly.withElement(element);
    }
    return EventCapabilityMode.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  EventCapabilityMode withElement(Element? newElement) {
    return EventCapabilityMode.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
