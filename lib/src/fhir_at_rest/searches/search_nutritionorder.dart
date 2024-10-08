// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';

class SearchNutritionOrder extends SearchResource {
  SearchNutritionOrder identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchNutritionOrder additive(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}additive'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchNutritionOrder datetime(FhirDateTime value,
      {SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}datetime'] =
        value.toString();
    return this;
  }

  SearchNutritionOrder formula(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}formula'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchNutritionOrder instantiatesUri(FhirUri value,
      {SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}instantiates_uri'] =
        value.toString();
    return this;
  }

  SearchNutritionOrder oraldiet(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}oraldiet'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchNutritionOrder status(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchNutritionOrder supplement(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}supplement'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }
}
