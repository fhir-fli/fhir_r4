// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';
import '../enums/search_modifier.dart';

class RiskAssessmentSearch {
  final Map<String, String> parameters = <String, String>{};
  RiskAssessmentSearch date(FhirDateTime value, {SearchModifier? modifier}) {
    parameters['${modifier}date'] = value.toString();
    return this;
  }

  RiskAssessmentSearch identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  RiskAssessmentSearch method(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}method'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  RiskAssessmentSearch probability(FhirDecimal value,
      {SearchModifier? modifier}) {
    parameters['${modifier}probability'] = value.toString();
    return this;
  }

  RiskAssessmentSearch risk(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}risk'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  RiskAssessmentSearch add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
