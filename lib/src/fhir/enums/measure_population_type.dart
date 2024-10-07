import 'package:json_annotation/json_annotation.dart';

/// The type of population.
enum MeasurePopulationType {
  /// Display: Initial Population
  /// Definition: The initial population refers to all patients or events to be evaluated by a quality measure involving patients who share a common set of specified characterstics. All patients or events counted (for example, as numerator, as denominator) are drawn from the initial population.
  @JsonValue('initial-population')
  initial_population,
  /// Display: Numerator
  /// Definition: The upper portion of a fraction used to calculate a rate, proportion, or ratio. Also called the measure focus, it is the target process, condition, event, or outcome. Numerator criteria are the processes or outcomes expected for each patient, or event defined in the denominator. A numerator statement describes the clinical action that satisfies the conditions of the measure.
  @JsonValue('numerator')
  numerator,
  /// Display: Numerator Exclusion
  /// Definition: Numerator exclusion criteria define patients or events to be removed from the numerator. Numerator exclusions are used in proportion and ratio measures to help narrow the numerator (for inverted measures).
  @JsonValue('numerator-exclusion')
  numerator_exclusion,
  /// Display: Denominator
  /// Definition: The lower portion of a fraction used to calculate a rate, proportion, or ratio. The denominator can be the same as the initial population, or a subset of the initial population to further constrain the population for the purpose of the measure.
  @JsonValue('denominator')
  denominator,
  /// Display: Denominator Exclusion
  /// Definition: Denominator exclusion criteria define patients or events that should be removed from the denominator before determining if numerator criteria are met. Denominator exclusions are used in proportion and ratio measures to help narrow the denominator. For example, patients with bilateral lower extremity amputations would be listed as a denominator exclusion for a measure requiring foot exams.
  @JsonValue('denominator-exclusion')
  denominator_exclusion,
  /// Display: Denominator Exception
  /// Definition: Denominator exceptions are conditions that should remove a patient or event from the denominator of a measure only if the numerator criteria are not met. Denominator exception allows for adjustment of the calculated score for those providers with higher risk populations. Denominator exception criteria are only used in proportion measures.
  @JsonValue('denominator-exception')
  denominator_exception,
  /// Display: Measure Population
  /// Definition: Measure population criteria define the patients or events for which the individual observation for the measure should be taken. Measure populations are used for continuous variable measures rather than numerator and denominator criteria.
  @JsonValue('measure-population')
  measure_population,
  /// Display: Measure Population Exclusion
  /// Definition: Measure population criteria define the patients or events that should be removed from the measure population before determining the outcome of one or more continuous variables defined for the measure observation. Measure population exclusion criteria are used within continuous variable measures to help narrow the measure population.
  @JsonValue('measure-population-exclusion')
  measure_population_exclusion,
  /// Display: Measure Observation
  /// Definition: Defines the individual observation to be performed for each patient or event in the measure population. Measure observations for each case in the population are aggregated to determine the overall measure score for the population.
  @JsonValue('measure-observation')
  measure_observation,
;

@override
  String toString() {
      switch(this) {
        case initial_population: return 'initial-population';
        case numerator: return 'numerator';
        case numerator_exclusion: return 'numerator-exclusion';
        case denominator: return 'denominator';
        case denominator_exclusion: return 'denominator-exclusion';
        case denominator_exception: return 'denominator-exception';
        case measure_population: return 'measure-population';
        case measure_population_exclusion: return 'measure-population-exclusion';
        case measure_observation: return 'measure-observation';
      }
      }
String toJson() => toString();
  MeasurePopulationType fromString(String str) {
    switch(str) {
      case 'initial-population': return MeasurePopulationType.initial_population;
      case 'numerator': return MeasurePopulationType.numerator;
      case 'numerator-exclusion': return MeasurePopulationType.numerator_exclusion;
      case 'denominator': return MeasurePopulationType.denominator;
      case 'denominator-exclusion': return MeasurePopulationType.denominator_exclusion;
      case 'denominator-exception': return MeasurePopulationType.denominator_exception;
      case 'measure-population': return MeasurePopulationType.measure_population;
      case 'measure-population-exclusion': return MeasurePopulationType.measure_population_exclusion;
      case 'measure-observation': return MeasurePopulationType.measure_observation;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 MeasurePopulationType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

