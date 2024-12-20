part of 'population.dart';

/// The age of the specific population.
sealed class AgeXPopulationPopulation extends DataType {}

/// The age of the specific population.
class RangeAgePopulationPopulation extends Range
    implements AgeXPopulationPopulation {
  /// Factory constructor for super class
  factory RangeAgePopulationPopulation.fromJson(
    Map<String, dynamic> json,
  ) =>
      Range.fromJson(json) as RangeAgePopulationPopulation;
}

/// The age of the specific population.
class CodeableConceptAgePopulationPopulation extends CodeableConcept
    implements AgeXPopulationPopulation {
  /// Factory constructor for super class
  factory CodeableConceptAgePopulationPopulation.fromJson(
    Map<String, dynamic> json,
  ) =>
      CodeableConcept.fromJson(json) as CodeableConceptAgePopulationPopulation;
}
