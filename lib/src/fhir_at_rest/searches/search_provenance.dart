// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';

class SearchProvenance {
  final Map<String, String> parameters = <String, String>{};
  SearchProvenance agentRole(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}agent_role'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchProvenance agentType(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}agent_type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchProvenance recorded(FhirDateTime value, {SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}recorded'] =
        value.toString();
    return this;
  }

  SearchProvenance signatureType(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}signature_type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchProvenance when(FhirDateTime value, {SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}when'] = value.toString();
    return this;
  }

  SearchProvenance add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
