// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';
import '../enums/search_modifier.dart';

class CommunicationSearch {
  final Map<String, String> parameters = <String, String>{};
  CommunicationSearch category(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}category'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  CommunicationSearch identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  CommunicationSearch instantiatesUri(FhirUri value,
      {SearchModifier? modifier}) {
    parameters['${modifier}instantiates_uri'] = value.toString();
    return this;
  }

  CommunicationSearch medium(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}medium'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  CommunicationSearch received(FhirDateTime value, {SearchModifier? modifier}) {
    parameters['${modifier}received'] = value.toString();
    return this;
  }

  CommunicationSearch sent(FhirDateTime value, {SearchModifier? modifier}) {
    parameters['${modifier}sent'] = value.toString();
    return this;
  }

  CommunicationSearch status(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  CommunicationSearch add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
