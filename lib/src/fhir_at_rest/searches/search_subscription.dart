// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';

class SearchSubscription {
  final Map<String, String> parameters = <String, String>{};
  SearchSubscription contact(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}contact'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchSubscription criteria(FhirString value, {SearchModifier? modifier}) {
    if (modifier != null &&
        !<String>['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['${modifier != null ? '$modifier' : ''}criteria'] =
        value.toString();
    return this;
  }

  SearchSubscription payload(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}payload'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchSubscription status(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchSubscription type(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchSubscription url(FhirUri value, {SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}url'] = value.toString();
    return this;
  }

  SearchSubscription add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
