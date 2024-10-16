import 'package:fhir_r4/fhir_r4.dart';

/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support describing the validity of a dose relative to a particular recommended schedule. This value set is provided as a suggestive example.
enum ImmunizationEvaluationDoseStatusCodes {
  /// Display: Valid
  /// Definition: The dose counts toward fulfilling a path to immunity for a patient, providing protection against the target disease.
  valid('valid'),

  /// Display: Not valid
  /// Definition: The dose does not count toward fulfilling a path to immunity for a patient.
  notvalid('notvalid'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ImmunizationEvaluationDoseStatusCodes(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ImmunizationEvaluationDoseStatusCodes fromJson(
      Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImmunizationEvaluationDoseStatusCodes.elementOnly
          .withElement(element);
    }
    return ImmunizationEvaluationDoseStatusCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ImmunizationEvaluationDoseStatusCodes withElement(Element? newElement) {
    return ImmunizationEvaluationDoseStatusCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
