// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';

class SearchCommunication {
  final Map<String, String> parameters = <String, String>{};
  SearchCommunication category(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}category'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchCommunication identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchCommunication instantiatesUri(FhirUri value,
      {SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}instantiates_uri'] =
        value.toString();
    return this;
  }

  SearchCommunication medium(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}medium'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchCommunication received(FhirDateTime value, {SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}received'] =
        value.toString();
    return this;
  }

  SearchCommunication sent(FhirDateTime value, {SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}sent'] = value.toString();
    return this;
  }

  SearchCommunication status(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchCommunication add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
