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
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ImmunizationRecommendationDateCriterionCodes(this.fhirCode,
      [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ImmunizationRecommendationDateCriterionCodes fromJson(
      Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImmunizationRecommendationDateCriterionCodes.elementOnly
          .withElement(element);
    }
    return ImmunizationRecommendationDateCriterionCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ImmunizationRecommendationDateCriterionCodes withElement(
      Element? newElement) {
    return ImmunizationRecommendationDateCriterionCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
