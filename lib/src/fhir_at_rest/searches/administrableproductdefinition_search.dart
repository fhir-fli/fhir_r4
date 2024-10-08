// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';
import '../enums/search_modifier.dart';

class AdministrableProductDefinitionSearch {
  final Map<String, String> parameters = <String, String>{};
  AdministrableProductDefinitionSearch doseForm(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}dose_form'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  AdministrableProductDefinitionSearch identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  AdministrableProductDefinitionSearch ingredient(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}ingredient'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  AdministrableProductDefinitionSearch route(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}route'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  AdministrableProductDefinitionSearch targetSpecies(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}target_species'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  AdministrableProductDefinitionSearch add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
