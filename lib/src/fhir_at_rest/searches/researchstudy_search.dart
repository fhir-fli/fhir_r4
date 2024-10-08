// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';
import '../enums/search_modifier.dart';

class ResearchStudySearch {
  final Map<String, String> parameters = <String, String>{};
  ResearchStudySearch category(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}category'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ResearchStudySearch date(FhirDateTime value, {SearchModifier? modifier}) {
    parameters['${modifier}date'] = value.toString();
    return this;
  }

  ResearchStudySearch focus(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}focus'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ResearchStudySearch identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ResearchStudySearch keyword(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}keyword'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ResearchStudySearch location(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}location'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ResearchStudySearch status(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ResearchStudySearch title(FhirString value, {SearchModifier? modifier}) {
    parameters['${modifier}title'] = value.toString();
    return this;
  }

  ResearchStudySearch add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
