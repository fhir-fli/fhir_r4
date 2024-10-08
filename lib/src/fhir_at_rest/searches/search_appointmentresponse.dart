// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';

class SearchAppointmentResponse extends SearchResource {
  SearchAppointmentResponse identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchAppointmentResponse partStatus(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}part_status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }
}
