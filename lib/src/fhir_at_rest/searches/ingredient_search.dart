// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';
import '../enums/search_modifier.dart';

class IngredientSearch {
  final Map<String, String> parameters = <String, String>{};
  IngredientSearch function(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}function'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  IngredientSearch identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  IngredientSearch role(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}role'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  IngredientSearch substanceCode(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}substance_code'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  IngredientSearch add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
