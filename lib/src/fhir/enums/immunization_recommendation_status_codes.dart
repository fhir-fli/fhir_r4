// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support describing the status of the patient towards perceived immunity against a vaccine preventable disease. This value set is provided as a suggestive example.
enum ImmunizationRecommendationStatusCodes {
  /// Display: Due
  /// Definition: The patient is due for their next vaccination.
  due('due'),

  /// Display: Overdue
  /// Definition: The patient is considered overdue for their next vaccination.
  overdue('overdue'),

  /// Display: Immune
  /// Definition: The patient is immune to the target disease and further immunization against the disease is not likely to provide benefit.
  immune('immune'),

  /// Display: Contraindicated
  /// Definition: The patient is contraindicated for futher doses.
  contraindicated('contraindicated'),

  /// Display: Complete
  /// Definition: The patient is fully protected and no further doses are recommended.
  complete('complete'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ImmunizationRecommendationStatusCodes(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ImmunizationRecommendationStatusCodes] instances.
  static ImmunizationRecommendationStatusCodes fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImmunizationRecommendationStatusCodes.elementOnly
          .withElement(element);
    }
    return ImmunizationRecommendationStatusCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  ImmunizationRecommendationStatusCodes withElement(Element? newElement) {
    return ImmunizationRecommendationStatusCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
