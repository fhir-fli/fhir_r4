// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// How a search parameter relates to the set of elements returned by evaluating its xpath query.
enum XPathUsageType {
  /// Display: Normal
  /// Definition: The search parameter is derived directly from the selected nodes based on the type definitions.
  normal('normal'),

  /// Display: Phonetic
  /// Definition: The search parameter is derived by a phonetic transform from the selected nodes.
  phonetic('phonetic'),

  /// Display: Nearby
  /// Definition: The search parameter is based on a spatial transform of the selected nodes.
  nearby('nearby'),

  /// Display: Distance
  /// Definition: The search parameter is based on a spatial transform of the selected nodes, using physical distance from the middle.
  distance('distance'),

  /// Display: Other
  /// Definition: The interpretation of the xpath statement is unknown (and can't be automated).
  other('other'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const XPathUsageType(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [XPathUsageType] instances.
  static XPathUsageType fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return XPathUsageType.elementOnly.withElement(
        element,
      );
    }
    return XPathUsageType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  XPathUsageType withElement(Element? newElement) {
    return XPathUsageType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
