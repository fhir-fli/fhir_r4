// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';

class SearchBodyStructure extends SearchResource {
  SearchBodyStructure identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchBodyStructure location(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}location'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchBodyStructure morphology(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}morphology'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }
}
