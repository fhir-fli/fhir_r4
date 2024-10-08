// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';
import '../enums/search_modifier.dart';

class ClinicalUseDefinitionSearch {
  final Map<String, String> parameters = <String, String>{};
  ClinicalUseDefinitionSearch contraindication(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}contraindication'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ClinicalUseDefinitionSearch effect(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}effect'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ClinicalUseDefinitionSearch identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ClinicalUseDefinitionSearch indication(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}indication'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ClinicalUseDefinitionSearch interaction(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}interaction'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ClinicalUseDefinitionSearch type(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ClinicalUseDefinitionSearch add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
