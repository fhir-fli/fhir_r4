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
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ImmunizationRecommendationStatusCodes(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ImmunizationRecommendationStatusCodes fromJson(
      Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImmunizationRecommendationStatusCodes.elementOnly
          .withElement(element);
    }
    return ImmunizationRecommendationStatusCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ImmunizationRecommendationStatusCodes withElement(Element? newElement) {
    return ImmunizationRecommendationStatusCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
