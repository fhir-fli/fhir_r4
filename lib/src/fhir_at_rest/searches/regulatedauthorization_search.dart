// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';
import '../enums/search_modifier.dart';

class RegulatedAuthorizationSearch {
  final Map<String, String> parameters = <String, String>{};
  RegulatedAuthorizationSearch case_(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}case'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  RegulatedAuthorizationSearch caseType(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}case_type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  RegulatedAuthorizationSearch identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  RegulatedAuthorizationSearch region(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}region'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  RegulatedAuthorizationSearch status(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  RegulatedAuthorizationSearch add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
