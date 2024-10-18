// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Estimate of the potential clinical harm, or seriousness, of a reaction to an identified substance.
enum AllergyIntoleranceCriticality {
  /// Display: Low Risk
  /// Definition: Worst case result of a future exposure is not assessed to be life-threatening or having high potential for organ system failure.
  low('low'),

  /// Display: High Risk
  /// Definition: Worst case result of a future exposure is assessed to be life-threatening or having high potential for organ system failure.
  high('high'),

  /// Display: Unable to Assess Risk
  /// Definition: Unable to assess the worst case result of a future exposure.
  unable_to_assess('unable-to-assess'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const AllergyIntoleranceCriticality(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [AllergyIntoleranceCriticality] instances.
  static AllergyIntoleranceCriticality fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AllergyIntoleranceCriticality.elementOnly.withElement(
        element,
      );
    }
    return AllergyIntoleranceCriticality.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  AllergyIntoleranceCriticality withElement(Element? newElement) {
    return AllergyIntoleranceCriticality.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
