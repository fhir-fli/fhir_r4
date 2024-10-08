// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';
import '../enums/search_modifier.dart';

class ImmunizationEvaluationSearch {
  final Map<String, String> parameters = <String, String>{};
  ImmunizationEvaluationSearch date(FhirDateTime value,
      {SearchModifier? modifier}) {
    parameters['${modifier}date'] = value.toString();
    return this;
  }

  ImmunizationEvaluationSearch doseStatus(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}dose_status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ImmunizationEvaluationSearch identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ImmunizationEvaluationSearch status(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ImmunizationEvaluationSearch targetDisease(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}target_disease'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ImmunizationEvaluationSearch add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
