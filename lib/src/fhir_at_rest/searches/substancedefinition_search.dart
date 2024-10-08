// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';
import '../enums/search_modifier.dart';

class SubstanceDefinitionSearch {
  final Map<String, String> parameters = <String, String>{};
  SubstanceDefinitionSearch classification(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}classification'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SubstanceDefinitionSearch code(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}code'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SubstanceDefinitionSearch domain(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}domain'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SubstanceDefinitionSearch identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SubstanceDefinitionSearch name(FhirString value, {SearchModifier? modifier}) {
    parameters['${modifier}name'] = value.toString();
    return this;
  }

  SubstanceDefinitionSearch add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
