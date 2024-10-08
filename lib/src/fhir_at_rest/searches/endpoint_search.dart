// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';
import '../enums/search_modifier.dart';

class EndpointSearch {
  final Map<String, String> parameters = <String, String>{};
  EndpointSearch connectionType(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}connection_type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  EndpointSearch identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  EndpointSearch name(FhirString value, {SearchModifier? modifier}) {
    parameters['${modifier}name'] = value.toString();
    return this;
  }

  EndpointSearch payloadType(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}payload_type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  EndpointSearch status(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  EndpointSearch add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
