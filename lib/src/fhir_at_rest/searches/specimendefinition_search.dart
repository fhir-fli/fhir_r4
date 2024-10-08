// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';
import '../enums/search_modifier.dart';

class SpecimenDefinitionSearch {
  final Map<String, String> parameters = <String, String>{};
  SpecimenDefinitionSearch container(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}container'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SpecimenDefinitionSearch identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SpecimenDefinitionSearch type(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SpecimenDefinitionSearch add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
