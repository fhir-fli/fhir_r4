import 'package:json_annotation/json_annotation.dart';

/// Evidence focus characteristic code.
enum FocusCharacteristicCode {
  /// Display: Citation
  /// Definition: Used to reference a specific article.
  @JsonValue('citation')
  citation,
  /// Display: Observed outcomes are clinical outcomes
  /// Definition: Used to denote a focus on clinical outcomes, ie evidence variable in role of outcome (measured variable) as observed is considered a "clinical outcome" (patient-important outcome such as mortality, symptoms, function or quality of life).
  @JsonValue('clinical-outcomes-observed')
  clinical_outcomes_observed,
  /// Display: Population
  /// Definition: The population of interest.
  @JsonValue('population')
  population,
  /// Display: Exposure
  /// Definition: The exposure of interest, such as an intervention.
  @JsonValue('exposure')
  exposure,
  /// Display: Comparator
  /// Definition: The comparator (intervention or control state) of interest.
  @JsonValue('comparator')
  comparator,
  /// Display: Outcome
  /// Definition: the outcome of interest.
  @JsonValue('outcome')
  outcome,
  /// Display: Medication exposures
  /// Definition: Any medication exposures. A subset of exposures or interventions that are medications.
  @JsonValue('medication-exposures')
  medication_exposures,
  /// Display: Study type
  /// Definition: Type of research study, such as randomized trial or case-control study.
  @JsonValue('study-type')
  study_type,
;

@override
  String toString() {
      switch(this) {
        case citation: return 'citation';
        case clinical_outcomes_observed: return 'clinical-outcomes-observed';
        case population: return 'population';
        case exposure: return 'exposure';
        case comparator: return 'comparator';
        case outcome: return 'outcome';
        case medication_exposures: return 'medication-exposures';
        case study_type: return 'study-type';
      }
      }
String toJson() => toString();
  FocusCharacteristicCode fromString(String str) {
    switch(str) {
      case 'citation': return FocusCharacteristicCode.citation;
      case 'clinical-outcomes-observed': return FocusCharacteristicCode.clinical_outcomes_observed;
      case 'population': return FocusCharacteristicCode.population;
      case 'exposure': return FocusCharacteristicCode.exposure;
      case 'comparator': return FocusCharacteristicCode.comparator;
      case 'outcome': return FocusCharacteristicCode.outcome;
      case 'medication-exposures': return FocusCharacteristicCode.medication_exposures;
      case 'study-type': return FocusCharacteristicCode.study_type;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 FocusCharacteristicCode fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}
