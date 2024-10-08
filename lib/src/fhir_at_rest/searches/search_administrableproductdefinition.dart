// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';

class SearchAdministrableProductDefinition extends SearchResource {
  SearchAdministrableProductDefinition doseForm(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}dose_form'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchAdministrableProductDefinition identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchAdministrableProductDefinition ingredient(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}ingredient'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchAdministrableProductDefinition route(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}route'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchAdministrableProductDefinition targetSpecies(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}target_species'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }
}
