// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';

class SearchResource {
  final Map<String, String> parameters = <String, String>{};
  SearchResource content(FhirString value, {SearchModifier? modifier}) {
    if (modifier != null &&
        !<String>['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['${modifier != null ? '$modifier' : ''}_content'] =
        value.toString();
    return this;
  }

  SearchResource filter(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}_filter'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchResource has(FhirString value, {SearchModifier? modifier}) {
    if (modifier != null &&
        !<String>['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['${modifier != null ? '$modifier' : ''}_has'] = value.toString();
    return this;
  }

  SearchResource id(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}_id'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchResource lastUpdated(FhirDateTime value, {SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}_lastUpdated'] =
        value.toString();
    return this;
  }

  SearchResource list(FhirString value, {SearchModifier? modifier}) {
    if (modifier != null &&
        !<String>['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['${modifier != null ? '$modifier' : ''}_list'] =
        value.toString();
    return this;
  }

  SearchResource profile(FhirUri value, {SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}_profile'] =
        value.toString();
    return this;
  }

  SearchResource query(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}_query'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchResource security(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}_security'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchResource source(FhirUri value, {SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}_source'] =
        value.toString();
    return this;
  }

  SearchResource tag(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}_tag'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchResource text(FhirString value, {SearchModifier? modifier}) {
    if (modifier != null &&
        !<String>['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['${modifier != null ? '$modifier' : ''}_text'] =
        value.toString();
    return this;
  }

  SearchResource type(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}_type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchResource add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
