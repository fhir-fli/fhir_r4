// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';

class SearchMessageHeader {
  final Map<String, String> parameters = <String, String>{};
  SearchMessageHeader code(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}code'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchMessageHeader destination(FhirString value,
      {SearchModifier? modifier}) {
    if (modifier != null &&
        !<String>['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['${modifier != null ? '$modifier' : ''}destination'] =
        value.toString();
    return this;
  }

  SearchMessageHeader destinationUri(FhirUri value,
      {SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}destination_uri'] =
        value.toString();
    return this;
  }

  SearchMessageHeader event(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}event'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchMessageHeader responseId(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}response_id'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchMessageHeader source(FhirString value, {SearchModifier? modifier}) {
    if (modifier != null &&
        !<String>['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['${modifier != null ? '$modifier' : ''}source'] =
        value.toString();
    return this;
  }

  SearchMessageHeader sourceUri(FhirUri value, {SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}source_uri'] =
        value.toString();
    return this;
  }

  SearchMessageHeader add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
