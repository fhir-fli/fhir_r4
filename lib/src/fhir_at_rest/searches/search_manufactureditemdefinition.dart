// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';

class SearchManufacturedItemDefinition {
  final Map<String, String> parameters = <String, String>{};
  SearchManufacturedItemDefinition doseForm(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}dose_form'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchManufacturedItemDefinition identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchManufacturedItemDefinition ingredient(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}ingredient'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchManufacturedItemDefinition add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
