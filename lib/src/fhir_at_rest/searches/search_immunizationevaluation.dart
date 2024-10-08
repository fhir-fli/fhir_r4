// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';

class SearchImmunizationEvaluation {
  final Map<String, String> parameters = <String, String>{};
  SearchImmunizationEvaluation date(FhirDateTime value,
      {SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}date'] = value.toString();
    return this;
  }

  SearchImmunizationEvaluation doseStatus(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}dose_status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchImmunizationEvaluation identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchImmunizationEvaluation status(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchImmunizationEvaluation targetDisease(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}target_disease'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchImmunizationEvaluation add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
