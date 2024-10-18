// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Identifies the style of unique identifier used to identify a namespace.
enum NamingSystemIdentifierType {
  /// Display: OID
  /// Definition: An ISO object identifier; e.g. 1.2.3.4.5.
  oid('oid'),

  /// Display: UUID
  /// Definition: A universally unique identifier of the form a5afddf4-e880-459b-876e-e4591b0acc11.
  uuid('uuid'),

  /// Display: URI
  /// Definition: A uniform resource identifier (ideally a URL - uniform resource locator); e.g. http://unitsofmeasure.org.
  uri('uri'),

  /// Display: Other
  /// Definition: Some other type of unique identifier; e.g. HL7-assigned reserved string such as LN for LOINC.
  other('other'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const NamingSystemIdentifierType(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [NamingSystemIdentifierType] instances.
  static NamingSystemIdentifierType fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return NamingSystemIdentifierType.elementOnly.withElement(element);
    }
    return NamingSystemIdentifierType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  NamingSystemIdentifierType withElement(Element? newElement) {
    return NamingSystemIdentifierType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
