// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';
import '../enums/search_modifier.dart';

class MedicationAdministrationSearch {
  final Map<String, String> parameters = <String, String>{};
  MedicationAdministrationSearch code(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}code'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  MedicationAdministrationSearch identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  MedicationAdministrationSearch effectiveTime(FhirDateTime value,
      {SearchModifier? modifier}) {
    parameters['${modifier}effective_time'] = value.toString();
    return this;
  }

  MedicationAdministrationSearch reasonGiven(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}reason_given'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  MedicationAdministrationSearch reasonNotGiven(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}reason_not_given'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  MedicationAdministrationSearch status(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  MedicationAdministrationSearch add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
