// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set defines the set of codes that can be used to indicate the marital status of a person.
class MaritalStatusCodes {
  // Private constructor for internal use (like enum)
  MaritalStatusCodes._(this.fhirCode, {this.element});

  /// Factory constructor to create [MaritalStatusCodes] from JSON.
  factory MaritalStatusCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MaritalStatusCodes.elementOnly.withElement(element);
    }
    return MaritalStatusCodes._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// MaritalStatusCodes values
  /// UNK
  static final MaritalStatusCodes UNK = MaritalStatusCodes._(
    'UNK',
  );

  /// For instances where an Element is present but not value

  static final MaritalStatusCodes elementOnly = MaritalStatusCodes._('');

  /// List of all enum-like values
  static final List<MaritalStatusCodes> values = [
    UNK,
  ];

  /// Returns the enum value with an element attached
  MaritalStatusCodes withElement(Element? newElement) {
    return MaritalStatusCodes._(fhirCode, element: newElement);
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
