// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';
import '../enums/search_modifier.dart';

class RequestGroupSearch {
  final Map<String, String> parameters = <String, String>{};
  RequestGroupSearch authored(FhirDateTime value, {SearchModifier? modifier}) {
    parameters['${modifier}authored'] = value.toString();
    return this;
  }

  RequestGroupSearch code(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}code'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  RequestGroupSearch groupIdentifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}group_identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  RequestGroupSearch identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  RequestGroupSearch instantiatesUri(FhirUri value,
      {SearchModifier? modifier}) {
    parameters['${modifier}instantiates_uri'] = value.toString();
    return this;
  }

  RequestGroupSearch intent(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}intent'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  RequestGroupSearch priority(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}priority'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  RequestGroupSearch status(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  RequestGroupSearch add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
