// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';
import '../enums/search_modifier.dart';

class ResourceSearch {
  final Map<String, String> parameters = <String, String>{};
  ResourceSearch content(FhirString value, {SearchModifier? modifier}) {
    parameters['${modifier}_content'] = value.toString();
    return this;
  }

  ResourceSearch filter(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}_filter'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ResourceSearch has(FhirString value, {SearchModifier? modifier}) {
    parameters['${modifier}_has'] = value.toString();
    return this;
  }

  ResourceSearch id(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}_id'] = system != null ? '$system|$value' : '$value';
    return this;
  }

  ResourceSearch lastUpdated(FhirDateTime value, {SearchModifier? modifier}) {
    parameters['${modifier}_lastUpdated'] = value.toString();
    return this;
  }

  ResourceSearch list(FhirString value, {SearchModifier? modifier}) {
    parameters['${modifier}_list'] = value.toString();
    return this;
  }

  ResourceSearch profile(FhirUri value, {SearchModifier? modifier}) {
    parameters['${modifier}_profile'] = value.toString();
    return this;
  }

  ResourceSearch query(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}_query'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ResourceSearch security(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}_security'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ResourceSearch source(FhirUri value, {SearchModifier? modifier}) {
    parameters['${modifier}_source'] = value.toString();
    return this;
  }

  ResourceSearch tag(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}_tag'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ResourceSearch text(FhirString value, {SearchModifier? modifier}) {
    parameters['${modifier}_text'] = value.toString();
    return this;
  }

  ResourceSearch type(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}_type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ResourceSearch add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
