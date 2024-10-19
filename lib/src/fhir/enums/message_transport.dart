// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The protocol used for message transport.
@Entity()
class MessageTransport extends FhirCode {
  /// Factory constructor to create [MessageTransport] from JSON.
  factory MessageTransport.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MessageTransport.elementOnly(element);
    }
    if (values.contains(value)) {
      return MessageTransport._(value, element);
    }
    throw ArgumentError(
      'MessageTransport.fromJson: JSON value is not a valid value',
    );
  }

  /// http
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MessageTransport.http([this.element])
      : dbValue = 'http',
        super('http', element);

  /// ftp
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MessageTransport.ftp([this.element])
      : dbValue = 'ftp',
        super('ftp', element);

  /// mllp
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MessageTransport.mllp([this.element])
      : dbValue = 'mllp',
        super('mllp', element);

  /// For instances where an Element is present but not value

  MessageTransport.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  MessageTransport._(super.input, [super.element])
      : dbValue = input,
        // ignore: prefer_initializing_formals
        element = element;

  @override
  @Id()
  // ignore: overridden_fields
  int dbId = 0;

  /// Value to store in ObjectBox
  @override
  // ignore: overridden_fields
  String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  Element? element;

  /// List of all enum-like values
  @Transient()
  static final List<String> values = [
    'http',
    'ftp',
    'mllp',
  ];

  /// Returns the enum value with an element attached
  MessageTransport withElement(Element? newElement) {
    return MessageTransport._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'MessageTransport.$value';
}
