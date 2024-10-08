// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';

class SearchImmunizationRecommendation {
  final Map<String, String> parameters = <String, String>{};
  SearchImmunizationRecommendation date(FhirDateTime value,
      {SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}date'] = value.toString();
    return this;
  }

  SearchImmunizationRecommendation identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchImmunizationRecommendation status(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchImmunizationRecommendation targetDisease(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}target_disease'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchImmunizationRecommendation vaccineType(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}vaccine_type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchImmunizationRecommendation add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
