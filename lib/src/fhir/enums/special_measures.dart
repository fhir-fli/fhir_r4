// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Extra measures defined for a Medicinal Product, such as a requirement to conduct post-authorisation studies.
enum SpecialMeasures {
  /// Display: Requirement to conduct post-authorisation studies
  /// Definition: Requirement to conduct post-authorisation studies
  Post_authorisationStudies('Post-authorisationStudies'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const SpecialMeasures(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [SpecialMeasures] instances.
  static SpecialMeasures fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SpecialMeasures.elementOnly.withElement(
        element,
      );
    }
    return SpecialMeasures.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  SpecialMeasures withElement(Element? newElement) {
    return SpecialMeasures.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
