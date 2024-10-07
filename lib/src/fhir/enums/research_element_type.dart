import 'package:json_annotation/json_annotation.dart';

/// The possible types of research elements (E.g. Population, Exposure, Outcome).
enum ResearchElementType {
  /// Display: Population
  /// Definition: The element defines the population that forms the basis for research.
  @JsonValue('population')
  population,
  /// Display: Exposure
  /// Definition: The element defines an exposure within the population that is being researched.
  @JsonValue('exposure')
  exposure,
  /// Display: Outcome
  /// Definition: The element defines an outcome within the population that is being researched.
  @JsonValue('outcome')
  outcome,
;

@override
  String toString() {
      switch(this) {
        case population: return 'population';
        case exposure: return 'exposure';
        case outcome: return 'outcome';
      }
      }
String toJson() => toString();
  ResearchElementType fromString(String str) {
    switch(str) {
      case 'population': return ResearchElementType.population;
      case 'exposure': return ResearchElementType.exposure;
      case 'outcome': return ResearchElementType.outcome;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 ResearchElementType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

