// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';

class SearchGuidanceResponse extends SearchResource {
  SearchGuidanceResponse identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchGuidanceResponse request(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}request'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }
}
