// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';

class SearchAppointmentResponse {
  final Map<String, String> parameters = <String, String>{};
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

  SearchAppointmentResponse add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
