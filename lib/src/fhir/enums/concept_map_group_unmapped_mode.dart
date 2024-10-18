// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Defines which action to take if there is no match in the group.
enum ConceptMapGroupUnmappedMode {
  /// Display: Provided Code
  /// Definition: Use the code as provided in the $translate request.
  provided('provided'),

  /// Display: Fixed Code
  /// Definition: Use the code explicitly provided in the group.unmapped.
  fixed('fixed'),

  /// Display: Other Map
  /// Definition: Use the map identified by the canonical URL in the url element.
  other_map('other-map'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ConceptMapGroupUnmappedMode(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ConceptMapGroupUnmappedMode] instances.
  static ConceptMapGroupUnmappedMode fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConceptMapGroupUnmappedMode.elementOnly.withElement(
        element,
      );
    }
    return ConceptMapGroupUnmappedMode.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  ConceptMapGroupUnmappedMode withElement(Element? newElement) {
    return ConceptMapGroupUnmappedMode.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
