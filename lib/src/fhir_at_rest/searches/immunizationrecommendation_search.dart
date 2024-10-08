// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';
import '../enums/search_modifier.dart';

class ImmunizationRecommendationSearch {
  final Map<String, String> parameters = <String, String>{};
  ImmunizationRecommendationSearch date(FhirDateTime value,
      {SearchModifier? modifier}) {
    parameters['${modifier}date'] = value.toString();
    return this;
  }

  ImmunizationRecommendationSearch identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ImmunizationRecommendationSearch status(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ImmunizationRecommendationSearch targetDisease(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}target_disease'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ImmunizationRecommendationSearch vaccineType(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}vaccine_type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ImmunizationRecommendationSearch add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
