// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Clinical assessment of the severity of a reaction event as a whole, potentially considering multiple different manifestations.
enum AllergyIntoleranceSeverity {
  /// Display: Mild
  /// Definition: Causes mild physiological effects.
  mild('mild'),

  /// Display: Moderate
  /// Definition: Causes moderate physiological effects.
  moderate('moderate'),

  /// Display: Severe
  /// Definition: Causes severe physiological effects.
  severe('severe'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const AllergyIntoleranceSeverity(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [AllergyIntoleranceSeverity] instances.
  static AllergyIntoleranceSeverity fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AllergyIntoleranceSeverity.elementOnly.withElement(
        element,
      );
    }
    return AllergyIntoleranceSeverity.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  AllergyIntoleranceSeverity withElement(Element? newElement) {
    return AllergyIntoleranceSeverity.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
