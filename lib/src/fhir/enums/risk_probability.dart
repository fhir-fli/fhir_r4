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
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const RiskProbability(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static RiskProbability fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RiskProbability.elementOnly.withElement(element);
    }
    return RiskProbability.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  RiskProbability withElement(Element? newElement) {
    return RiskProbability.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
