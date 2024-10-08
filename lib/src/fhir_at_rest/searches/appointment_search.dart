// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';
import '../enums/search_modifier.dart';

class AppointmentSearch {
  final Map<String, String> parameters = <String, String>{};
  AppointmentSearch appointmentType(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}appointment_type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  AppointmentSearch date(FhirDateTime value, {SearchModifier? modifier}) {
    parameters['${modifier}date'] = value.toString();
    return this;
  }

  AppointmentSearch identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  AppointmentSearch partStatus(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}part_status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  AppointmentSearch reasonCode(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}reason_code'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  AppointmentSearch serviceCategory(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}service_category'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  AppointmentSearch serviceType(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}service_type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  AppointmentSearch specialty(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}specialty'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  AppointmentSearch status(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  AppointmentSearch add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
