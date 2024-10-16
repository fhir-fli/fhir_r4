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
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const AllergyIntoleranceCriticality(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static AllergyIntoleranceCriticality fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AllergyIntoleranceCriticality.elementOnly.withElement(element);
    }
    return AllergyIntoleranceCriticality.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  AllergyIntoleranceCriticality withElement(Element? newElement) {
    return AllergyIntoleranceCriticality.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
