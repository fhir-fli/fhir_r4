// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';
import '../enums/search_modifier.dart';

class ProvenanceSearch {
  final Map<String, String> parameters = <String, String>{};
  ProvenanceSearch agentRole(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}agent_role'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ProvenanceSearch agentType(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}agent_type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ProvenanceSearch recorded(FhirDateTime value, {SearchModifier? modifier}) {
    parameters['${modifier}recorded'] = value.toString();
    return this;
  }

  ProvenanceSearch signatureType(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}signature_type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ProvenanceSearch when(FhirDateTime value, {SearchModifier? modifier}) {
    parameters['${modifier}when'] = value.toString();
    return this;
  }

  ProvenanceSearch add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
