// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';
import '../enums/search_modifier.dart';

class MedicationDispenseSearch {
  final Map<String, String> parameters = <String, String>{};
  MedicationDispenseSearch code(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}code'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  MedicationDispenseSearch identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  MedicationDispenseSearch status(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  MedicationDispenseSearch type(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  MedicationDispenseSearch whenhandedover(FhirDateTime value,
      {SearchModifier? modifier}) {
    parameters['${modifier}whenhandedover'] = value.toString();
    return this;
  }

  MedicationDispenseSearch whenprepared(FhirDateTime value,
      {SearchModifier? modifier}) {
    parameters['${modifier}whenprepared'] = value.toString();
    return this;
  }

  MedicationDispenseSearch add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
