// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes a smattering of Network type codes.
class NetworkTypeCodes {
  // Private constructor for internal use (like enum)
  NetworkTypeCodes._(this.fhirCode, {this.element});

  /// Factory constructor to create [NetworkTypeCodes] from JSON.
  factory NetworkTypeCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return NetworkTypeCodes.elementOnly.withElement(element);
    }
    return NetworkTypeCodes._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// NetworkTypeCodes values
  /// in_
  static final NetworkTypeCodes in_ = NetworkTypeCodes._(
    'in',
  );

  /// out
  static final NetworkTypeCodes out = NetworkTypeCodes._(
    'out',
  );

  /// For instances where an Element is present but not value

  static final NetworkTypeCodes elementOnly = NetworkTypeCodes._('');

  /// List of all enum-like values
  static final List<NetworkTypeCodes> values = [
    in_,
    out,
  ];

  /// Returns the enum value with an element attached
  NetworkTypeCodes withElement(Element? newElement) {
    return NetworkTypeCodes._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => fhirCode;
}
