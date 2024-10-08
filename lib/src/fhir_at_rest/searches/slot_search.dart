// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';
import '../enums/search_modifier.dart';

class SlotSearch {
  final Map<String, String> parameters = <String, String>{};
  SlotSearch appointmentType(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}appointment_type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SlotSearch identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SlotSearch serviceCategory(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}service_category'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SlotSearch serviceType(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}service_type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SlotSearch specialty(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}specialty'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SlotSearch start(FhirDateTime value, {SearchModifier? modifier}) {
    parameters['${modifier}start'] = value.toString();
    return this;
  }

  SlotSearch status(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SlotSearch add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
