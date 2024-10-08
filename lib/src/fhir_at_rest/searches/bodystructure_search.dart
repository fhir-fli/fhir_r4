// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';
import '../enums/search_modifier.dart';

class BodyStructureSearch {
  final Map<String, String> parameters = <String, String>{};
  BodyStructureSearch identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  BodyStructureSearch location(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}location'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  BodyStructureSearch morphology(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}morphology'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  BodyStructureSearch add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
