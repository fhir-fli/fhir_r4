// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';
import '../enums/search_modifier.dart';

class NutritionOrderSearch {
  final Map<String, String> parameters = <String, String>{};
  NutritionOrderSearch identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  NutritionOrderSearch additive(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}additive'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  NutritionOrderSearch datetime(FhirDateTime value,
      {SearchModifier? modifier}) {
    parameters['${modifier}datetime'] = value.toString();
    return this;
  }

  NutritionOrderSearch formula(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}formula'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  NutritionOrderSearch instantiatesUri(FhirUri value,
      {SearchModifier? modifier}) {
    parameters['${modifier}instantiates_uri'] = value.toString();
    return this;
  }

  NutritionOrderSearch oraldiet(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}oraldiet'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  NutritionOrderSearch status(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  NutritionOrderSearch supplement(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}supplement'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  NutritionOrderSearch add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
