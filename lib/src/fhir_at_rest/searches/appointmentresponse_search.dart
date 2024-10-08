// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';
import '../enums/search_modifier.dart';

class AppointmentResponseSearch {
  final Map<String, String> parameters = <String, String>{};
  AppointmentResponseSearch identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  AppointmentResponseSearch partStatus(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}part_status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  AppointmentResponseSearch add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
