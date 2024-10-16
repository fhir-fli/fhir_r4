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
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const MessageTransport(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static MessageTransport fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MessageTransport.elementOnly.withElement(element);
    }
    return MessageTransport.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  MessageTransport withElement(Element? newElement) {
    return MessageTransport.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
