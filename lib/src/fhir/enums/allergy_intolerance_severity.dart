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
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const AllergyIntoleranceSeverity(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static AllergyIntoleranceSeverity fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AllergyIntoleranceSeverity.elementOnly.withElement(element);
    }
    return AllergyIntoleranceSeverity.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  AllergyIntoleranceSeverity withElement(Element? newElement) {
    return AllergyIntoleranceSeverity.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
