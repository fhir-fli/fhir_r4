// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support the definition of dates relevant to recommendations for future doses of vaccines. This value set is provided as a suggestive example.
enum ImmunizationRecommendationDateCriterionCodes {
  /// Display:
  /// Definition:
  value30981_5('30981-5'),

  /// Display:
  /// Definition:
  value30980_7('30980-7'),

  /// Display:
  /// Definition:
  value59777_3('59777-3'),

  /// Display:
  /// Definition:
  value59778_1('59778-1'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ImmunizationRecommendationDateCriterionCodes(this.fhirCode,
      [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ImmunizationRecommendationDateCriterionCodes] instances.
  static ImmunizationRecommendationDateCriterionCodes fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImmunizationRecommendationDateCriterionCodes.elementOnly
          .withElement(element);
    }
    return ImmunizationRecommendationDateCriterionCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  ImmunizationRecommendationDateCriterionCodes withElement(
      Element? newElement) {
    return ImmunizationRecommendationDateCriterionCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
