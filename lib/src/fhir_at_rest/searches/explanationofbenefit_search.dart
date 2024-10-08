// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';
import '../enums/search_modifier.dart';

class ExplanationOfBenefitSearch {
  final Map<String, String> parameters = <String, String>{};
  ExplanationOfBenefitSearch created(FhirDateTime value,
      {SearchModifier? modifier}) {
    parameters['${modifier}created'] = value.toString();
    return this;
  }

  ExplanationOfBenefitSearch disposition(FhirString value,
      {SearchModifier? modifier}) {
    parameters['${modifier}disposition'] = value.toString();
    return this;
  }

  ExplanationOfBenefitSearch identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ExplanationOfBenefitSearch status(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ExplanationOfBenefitSearch add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
