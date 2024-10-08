// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';

class SearchClinicalUseDefinition extends SearchResource {
  SearchClinicalUseDefinition contraindication(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}contraindication'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchClinicalUseDefinition effect(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}effect'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchClinicalUseDefinition identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchClinicalUseDefinition indication(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}indication'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchClinicalUseDefinition interaction(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}interaction'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchClinicalUseDefinition type(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }
}
