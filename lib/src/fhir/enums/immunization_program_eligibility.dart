import 'package:fhir_r4/fhir_r4.dart';

/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support describing the patient's eligibility for a vaccination program. This value set is provided as a suggestive example.
enum ImmunizationProgramEligibility {
  /// Display: Not Eligible
  /// Definition: The patient is not eligible for the funding program.
  ineligible('ineligible'),

  /// Display: Uninsured
  /// Definition: The patient is eligible for the funding program because they are uninsured.
  uninsured('uninsured'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ImmunizationProgramEligibility(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ImmunizationProgramEligibility fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImmunizationProgramEligibility.elementOnly.withElement(element);
    }
    return ImmunizationProgramEligibility.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ImmunizationProgramEligibility withElement(Element? newElement) {
    return ImmunizationProgramEligibility.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
