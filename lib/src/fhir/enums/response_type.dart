// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The kind of response to a message.
class ResponseType {
  // Private constructor for internal use (like enum)
  ResponseType._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ResponseType values
  /// ok
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResponseType ok = ResponseType._(
    'ok',
  );

  /// transient_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResponseType transient_error = ResponseType._(
    'transient-error',
  );

  /// fatal_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResponseType fatal_error = ResponseType._(
    'fatal-error',
  );

  /// For instances where an Element is present but not value

  static final ResponseType elementOnly = ResponseType._('');

  /// List of all enum-like values
  static final List<ResponseType> values = [
    ok,
    transient_error,
    fatal_error,
  ];

  /// Returns the enum value with an element attached
  ResponseType withElement(Element? newElement) {
    return ResponseType._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ResponseType] from JSON.
  static ResponseType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ResponseType.elementOnly.withElement(element);
    }
    return ResponseType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
