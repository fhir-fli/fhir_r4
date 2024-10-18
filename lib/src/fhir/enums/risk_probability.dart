// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Codes representing the likelihood of a particular outcome in a risk assessment.
enum RiskProbability {
  /// Display: Negligible likelihood
  /// Definition: The specified outcome is exceptionally unlikely.
  negligible('negligible'),

  /// Display: Low likelihood
  /// Definition: The specified outcome is possible but unlikely.
  low('low'),

  /// Display: Moderate likelihood
  /// Definition: The specified outcome has a reasonable likelihood of occurrence.
  moderate('moderate'),

  /// Display: High likelihood
  /// Definition: The specified outcome is more likely to occur than not.
  high('high'),

  /// Display: Certain
  /// Definition: The specified outcome is effectively guaranteed.
  certain('certain'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const RiskProbability(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [RiskProbability] instances.
  static RiskProbability fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RiskProbability.elementOnly.withElement(element);
    }
    return RiskProbability.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  RiskProbability withElement(Element? newElement) {
    return RiskProbability.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
