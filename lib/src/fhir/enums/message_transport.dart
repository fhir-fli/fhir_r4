// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The protocol used for message transport.
enum MessageTransport {
  /// Display: HTTP
  /// Definition: The application sends or receives messages using HTTP POST (may be over http: or https:).
  http('http'),

  /// Display: FTP
  /// Definition: The application sends or receives messages using File Transfer Protocol.
  ftp('ftp'),

  /// Display: MLLP
  /// Definition: The application sends or receives messages using HL7's Minimal Lower Level Protocol.
  mllp('mllp'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const MessageTransport(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [MessageTransport] instances.
  static MessageTransport fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MessageTransport.elementOnly.withElement(
        element,
      );
    }
    return MessageTransport.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  MessageTransport withElement(Element? newElement) {
    return MessageTransport.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
