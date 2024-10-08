// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';
import '../enums/search_modifier.dart';

class QuestionnaireResponseSearch {
  final Map<String, String> parameters = <String, String>{};
  QuestionnaireResponseSearch authored(FhirDateTime value,
      {SearchModifier? modifier}) {
    parameters['${modifier}authored'] = value.toString();
    return this;
  }

  QuestionnaireResponseSearch identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  QuestionnaireResponseSearch status(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  QuestionnaireResponseSearch add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
