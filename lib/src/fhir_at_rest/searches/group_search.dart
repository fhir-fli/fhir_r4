// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';
import '../enums/search_modifier.dart';

class GroupSearch {
  final Map<String, String> parameters = <String, String>{};
  GroupSearch actual(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}actual'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  GroupSearch characteristic(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}characteristic'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  GroupSearch code(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}code'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  GroupSearch exclude(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}exclude'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  GroupSearch identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  GroupSearch type(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  GroupSearch value(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}value'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  GroupSearch add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
