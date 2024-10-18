// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// HL7-defined table of codes which identify conditions under which acknowledgments are required to be returned in response to a message.
enum MessageheaderResponseRequest {
  /// Display: Always
  /// Definition: initiator expects a response for this message.
  always('always'),

  /// Display: Error/reject conditions only
  /// Definition: initiator expects a response only if in error.
  on_error('on-error'),

  /// Display: Never
  /// Definition: initiator does not expect a response.
  never('never'),

  /// Display: Successful completion only
  /// Definition: initiator expects a response only if successful.
  on_success('on-success'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const MessageheaderResponseRequest(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [MessageheaderResponseRequest] instances.
  static MessageheaderResponseRequest fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MessageheaderResponseRequest.elementOnly.withElement(element);
    }
    return MessageheaderResponseRequest.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  MessageheaderResponseRequest withElement(Element? newElement) {
    return MessageheaderResponseRequest.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
