// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';

class SearchRegulatedAuthorization extends SearchResource {
  SearchRegulatedAuthorization case_(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}case'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchRegulatedAuthorization caseType(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}case_type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchRegulatedAuthorization identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchRegulatedAuthorization region(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}region'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchRegulatedAuthorization status(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }
}
