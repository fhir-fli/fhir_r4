// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';

class SearchPackagedProductDefinition {
  final Map<String, String> parameters = <String, String>{};
  SearchPackagedProductDefinition identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchPackagedProductDefinition name(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}name'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchPackagedProductDefinition status(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchPackagedProductDefinition add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
