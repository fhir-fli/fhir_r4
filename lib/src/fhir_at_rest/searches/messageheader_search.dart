// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';
import '../enums/search_modifier.dart';

class MessageHeaderSearch {
  final Map<String, String> parameters = <String, String>{};
  MessageHeaderSearch code(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}code'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  MessageHeaderSearch destination(FhirString value,
      {SearchModifier? modifier}) {
    parameters['${modifier}destination'] = value.toString();
    return this;
  }

  MessageHeaderSearch destinationUri(FhirUri value,
      {SearchModifier? modifier}) {
    parameters['${modifier}destination_uri'] = value.toString();
    return this;
  }

  MessageHeaderSearch event(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}event'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  MessageHeaderSearch responseId(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}response_id'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  MessageHeaderSearch source(FhirString value, {SearchModifier? modifier}) {
    parameters['${modifier}source'] = value.toString();
    return this;
  }

  MessageHeaderSearch sourceUri(FhirUri value, {SearchModifier? modifier}) {
    parameters['${modifier}source_uri'] = value.toString();
    return this;
  }

  MessageHeaderSearch add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
