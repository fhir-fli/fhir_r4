import 'package:json_annotation/json_annotation.dart';

/// The role that the assertion variable plays.
enum EvidenceVariableRole {
  /// Display: population
  /// Definition: variable represents a population.
  @JsonValue('population')
  population,
  /// Display: subpopulation
  /// Definition: variable represents a subpopulation.
  @JsonValue('subpopulation')
  subpopulation,
  /// Display: exposure
  /// Definition: variable represents an exposure.
  @JsonValue('exposure')
  exposure,
  /// Display: reference exposure
  /// Definition: variable represents a reference exposure.
  @JsonValue('referenceExposure')
  referenceExposure,
  /// Display: measured variable
  /// Definition: variable represents a measured variable.
  @JsonValue('measuredVariable')
  measuredVariable,
  /// Display: confounder
  /// Definition: variable represents a confounder.
  @JsonValue('confounder')
  confounder,
;

@override
  String toString() {
      switch(this) {
        case population: return 'population';
        case subpopulation: return 'subpopulation';
        case exposure: return 'exposure';
        case referenceExposure: return 'referenceExposure';
        case measuredVariable: return 'measuredVariable';
        case confounder: return 'confounder';
      }
      }
String toJson() => toString();
  EvidenceVariableRole fromString(String str) {
    switch(str) {
      case 'population': return EvidenceVariableRole.population;
      case 'subpopulation': return EvidenceVariableRole.subpopulation;
      case 'exposure': return EvidenceVariableRole.exposure;
      case 'referenceExposure': return EvidenceVariableRole.referenceExposure;
      case 'measuredVariable': return EvidenceVariableRole.measuredVariable;
      case 'confounder': return EvidenceVariableRole.confounder;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 EvidenceVariableRole fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

