// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';
import '../enums/search_modifier.dart';

class GuidanceResponseSearch {
  final Map<String, String> parameters = <String, String>{};
  GuidanceResponseSearch identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  GuidanceResponseSearch request(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}request'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  GuidanceResponseSearch add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
