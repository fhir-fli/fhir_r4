// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The type of population.
enum MeasurePopulationType {
  /// Display: Initial Population
  /// Definition: The initial population refers to all patients or events to be evaluated by a quality measure involving patients who share a common set of specified characterstics. All patients or events counted (for example, as numerator, as denominator) are drawn from the initial population.
  initial_population('initial-population'),

  /// Display: Numerator
  /// Definition: The upper portion of a fraction used to calculate a rate, proportion, or ratio. Also called the measure focus, it is the target process, condition, event, or outcome. Numerator criteria are the processes or outcomes expected for each patient, or event defined in the denominator. A numerator statement describes the clinical action that satisfies the conditions of the measure.
  numerator('numerator'),

  /// Display: Numerator Exclusion
  /// Definition: Numerator exclusion criteria define patients or events to be removed from the numerator. Numerator exclusions are used in proportion and ratio measures to help narrow the numerator (for inverted measures).
  numerator_exclusion('numerator-exclusion'),

  /// Display: Denominator
  /// Definition: The lower portion of a fraction used to calculate a rate, proportion, or ratio. The denominator can be the same as the initial population, or a subset of the initial population to further constrain the population for the purpose of the measure.
  denominator('denominator'),

  /// Display: Denominator Exclusion
  /// Definition: Denominator exclusion criteria define patients or events that should be removed from the denominator before determining if numerator criteria are met. Denominator exclusions are used in proportion and ratio measures to help narrow the denominator. For example, patients with bilateral lower extremity amputations would be listed as a denominator exclusion for a measure requiring foot exams.
  denominator_exclusion('denominator-exclusion'),

  /// Display: Denominator Exception
  /// Definition: Denominator exceptions are conditions that should remove a patient or event from the denominator of a measure only if the numerator criteria are not met. Denominator exception allows for adjustment of the calculated score for those providers with higher risk populations. Denominator exception criteria are only used in proportion measures.
  denominator_exception('denominator-exception'),

  /// Display: Measure Population
  /// Definition: Measure population criteria define the patients or events for which the individual observation for the measure should be taken. Measure populations are used for continuous variable measures rather than numerator and denominator criteria.
  measure_population('measure-population'),

  /// Display: Measure Population Exclusion
  /// Definition: Measure population criteria define the patients or events that should be removed from the measure population before determining the outcome of one or more continuous variables defined for the measure observation. Measure population exclusion criteria are used within continuous variable measures to help narrow the measure population.
  measure_population_exclusion('measure-population-exclusion'),

  /// Display: Measure Observation
  /// Definition: Defines the individual observation to be performed for each patient or event in the measure population. Measure observations for each case in the population are aggregated to determine the overall measure score for the population.
  measure_observation('measure-observation'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const MeasurePopulationType(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [MeasurePopulationType] instances.
  static MeasurePopulationType fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MeasurePopulationType.elementOnly.withElement(
        element,
      );
    }
    return MeasurePopulationType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  MeasurePopulationType withElement(Element? newElement) {
    return MeasurePopulationType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
