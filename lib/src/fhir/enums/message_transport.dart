// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// The protocol used for message transport.
@collection
class MessageTransport {
  /// Constructor for internal use (like enum)
  MessageTransport({this.fhirCode, this.element})
      : assert(
          fhirCode != null || element != null,
          'Either fhirCode or element should be provided',
        );

  /// The ID of the object in the database.
  Id dbId = Isar.autoIncrement;

  /// The String value of this enum (FHIR code)
  final String? fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// MessageTransport values
  /// http
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MessageTransport http = MessageTransport(
    fhirCode: 'http',
  );

  /// ftp
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MessageTransport ftp = MessageTransport(
    fhirCode: 'ftp',
  );

  /// mllp
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MessageTransport mllp = MessageTransport(
    fhirCode: 'mllp',
  );

  /// For instances where an Element is present but not value

  static final MessageTransport elementOnly = MessageTransport();

  /// List of all enum-like values
  static final List<MessageTransport> values = [
    http,
    ftp,
    mllp,
  ];

  /// Returns the enum value with an element attached
  MessageTransport withElement(Element? newElement) {
    return MessageTransport(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [MessageTransport] from JSON.
  static MessageTransport fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MessageTransport.elementOnly.withElement(element);
    }
    return MessageTransport.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'MessageTransport.$fhirCode';
}
