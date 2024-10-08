// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';

class SearchIngredient {
  final Map<String, String> parameters = <String, String>{};
  SearchIngredient function(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}function'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchIngredient identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchIngredient role(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}role'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchIngredient substanceCode(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}substance_code'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchIngredient add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
