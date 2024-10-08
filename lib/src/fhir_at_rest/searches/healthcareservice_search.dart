// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';
import '../enums/search_modifier.dart';

class HealthcareServiceSearch {
  final Map<String, String> parameters = <String, String>{};
  HealthcareServiceSearch active(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}active'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  HealthcareServiceSearch characteristic(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}characteristic'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  HealthcareServiceSearch identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  HealthcareServiceSearch name(FhirString value, {SearchModifier? modifier}) {
    parameters['${modifier}name'] = value.toString();
    return this;
  }

  HealthcareServiceSearch program(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}program'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  HealthcareServiceSearch serviceCategory(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}service_category'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  HealthcareServiceSearch serviceType(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}service_type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  HealthcareServiceSearch specialty(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}specialty'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  HealthcareServiceSearch add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
