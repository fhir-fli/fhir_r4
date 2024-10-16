import 'package:fhir_r4/fhir_r4.dart';

/// Evidence focus characteristic code.
enum FocusCharacteristicCode {
  /// Display: Citation
  /// Definition: Used to reference a specific article.
  citation('citation'),

  /// Display: Observed outcomes are clinical outcomes
  /// Definition: Used to denote a focus on clinical outcomes, ie evidence variable in role of outcome (measured variable) as observed is considered a "clinical outcome" (patient-important outcome such as mortality, symptoms, function or quality of life).
  clinical_outcomes_observed('clinical-outcomes-observed'),

  /// Display: Population
  /// Definition: The population of interest.
  population('population'),

  /// Display: Exposure
  /// Definition: The exposure of interest, such as an intervention.
  exposure('exposure'),

  /// Display: Comparator
  /// Definition: The comparator (intervention or control state) of interest.
  comparator('comparator'),

  /// Display: Outcome
  /// Definition: the outcome of interest.
  outcome('outcome'),

  /// Display: Medication exposures
  /// Definition: Any medication exposures. A subset of exposures or interventions that are medications.
  medication_exposures('medication-exposures'),

  /// Display: Study type
  /// Definition: Type of research study, such as randomized trial or case-control study.
  study_type('study-type'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const FocusCharacteristicCode(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static FocusCharacteristicCode fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FocusCharacteristicCode.elementOnly.withElement(element);
    }
    return FocusCharacteristicCode.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  FocusCharacteristicCode withElement(Element? newElement) {
    return FocusCharacteristicCode.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
