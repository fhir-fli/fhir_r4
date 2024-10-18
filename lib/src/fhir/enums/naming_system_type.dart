// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Identifies the purpose of the naming system.
enum NamingSystemType {
  /// Display: Code System
  /// Definition: The naming system is used to define concepts and symbols to represent those concepts; e.g. UCUM, LOINC, NDC code, local lab codes, etc.
  codesystem('codesystem'),

  /// Display: Identifier
  /// Definition: The naming system is used to manage identifiers (e.g. license numbers, order numbers, etc.).
  identifier('identifier'),

  /// Display: Root
  /// Definition: The naming system is used as the root for other identifiers and naming systems.
  root('root'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const NamingSystemType(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [NamingSystemType] instances.
  static NamingSystemType fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return NamingSystemType.elementOnly.withElement(
        element,
      );
    }
    return NamingSystemType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  NamingSystemType withElement(Element? newElement) {
    return NamingSystemType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
