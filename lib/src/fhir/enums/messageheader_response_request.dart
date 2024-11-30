// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// HL7-defined table of codes which identify conditions under which acknowledgments are required to be returned in response to a message.
class MessageheaderResponseRequest {
  // Private constructor for internal use (like enum)
  MessageheaderResponseRequest._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// MessageheaderResponseRequest values
  /// always
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MessageheaderResponseRequest always =
      MessageheaderResponseRequest._(
    'always',
  );

  /// on_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MessageheaderResponseRequest on_error =
      MessageheaderResponseRequest._(
    'on-error',
  );

  /// never
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MessageheaderResponseRequest never =
      MessageheaderResponseRequest._(
    'never',
  );

  /// on_success
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MessageheaderResponseRequest on_success =
      MessageheaderResponseRequest._(
    'on-success',
  );

  /// For instances where an Element is present but not value

  static final MessageheaderResponseRequest elementOnly =
      MessageheaderResponseRequest._('');

  /// List of all enum-like values
  static final List<MessageheaderResponseRequest> values = [
    always,
    on_error,
    never,
    on_success,
  ];

  /// Returns the enum value with an element attached
  MessageheaderResponseRequest withElement(Element? newElement) {
    return MessageheaderResponseRequest._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [MessageheaderResponseRequest] from JSON.
  static MessageheaderResponseRequest fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MessageheaderResponseRequest.elementOnly.withElement(element);
    }
    return MessageheaderResponseRequest._(value!, element: element);
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
