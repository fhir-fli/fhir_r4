// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support describing the disease targeted by a vaccination recommendation. This value set is provided as a suggestive example and includes the SNOMED CT concepts from the 64572001 (Disease) hierarchy.
enum ImmunizationRecommendationTargetDiseaseCodes {
  /// Display:
  /// Definition:
  value1857005('1857005'),

  /// Display:
  /// Definition:
  value397430003('397430003'),

  /// Display:
  /// Definition:
  value14189004('14189004'),

  /// Display:
  /// Definition:
  value36989005('36989005'),

  /// Display:
  /// Definition:
  value36653000('36653000'),

  /// Display:
  /// Definition:
  value76902006('76902006'),

  /// Display:
  /// Definition:
  value709410003('709410003'),

  /// Display:
  /// Definition:
  value27836007('27836007'),

  /// Display:
  /// Definition:
  value398102009('398102009'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ImmunizationRecommendationTargetDiseaseCodes(this.fhirCode,
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

  /// Converts a list of JSON values to a list of [ImmunizationRecommendationTargetDiseaseCodes] instances.
  static ImmunizationRecommendationTargetDiseaseCodes fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImmunizationRecommendationTargetDiseaseCodes.elementOnly
          .withElement(
        element,
      );
    }
    return ImmunizationRecommendationTargetDiseaseCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  ImmunizationRecommendationTargetDiseaseCodes withElement(
      Element? newElement) {
    return ImmunizationRecommendationTargetDiseaseCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
