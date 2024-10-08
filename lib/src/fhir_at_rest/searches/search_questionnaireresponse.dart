// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';

class SearchQuestionnaireResponse {
  final Map<String, String> parameters = <String, String>{};
  SearchQuestionnaireResponse authored(FhirDateTime value,
      {SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}authored'] =
        value.toString();
    return this;
  }

  SearchQuestionnaireResponse identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchQuestionnaireResponse status(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchQuestionnaireResponse add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
