// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support describing the reasons why a given recommendation status is assigned. This value set is provided as a suggestive example and includes SNOMED CT concepts.
enum ImmunizationRecommendationReasonCodes {
  /// Display:
  /// Definition:
  value77176002('77176002'),

  /// Display:
  /// Definition:
  value77386006('77386006'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ImmunizationRecommendationReasonCodes(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ImmunizationRecommendationReasonCodes] instances.
  static ImmunizationRecommendationReasonCodes fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImmunizationRecommendationReasonCodes.elementOnly
          .withElement(element);
    }
    return ImmunizationRecommendationReasonCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  ImmunizationRecommendationReasonCodes withElement(Element? newElement) {
    return ImmunizationRecommendationReasonCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
