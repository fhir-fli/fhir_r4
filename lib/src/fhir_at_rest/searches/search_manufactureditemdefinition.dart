// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';

class SearchManufacturedItemDefinition extends SearchResource {
  SearchManufacturedItemDefinition doseForm(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}dose_form'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchManufacturedItemDefinition identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchManufacturedItemDefinition ingredient(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}ingredient'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }
}
