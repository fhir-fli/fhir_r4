// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';

class SearchIngredient extends SearchResource {
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
}
