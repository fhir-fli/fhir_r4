// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

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

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const FocusCharacteristicCode(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [FocusCharacteristicCode] instances.
  static FocusCharacteristicCode fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FocusCharacteristicCode.elementOnly.withElement(element);
    }
    return FocusCharacteristicCode.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  FocusCharacteristicCode withElement(Element? newElement) {
    return FocusCharacteristicCode.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
