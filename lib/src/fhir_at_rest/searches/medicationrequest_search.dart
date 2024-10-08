// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';
import '../enums/search_modifier.dart';

class MedicationRequestSearch {
  final Map<String, String> parameters = <String, String>{};
  MedicationRequestSearch code(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}code'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  MedicationRequestSearch identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  MedicationRequestSearch status(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  MedicationRequestSearch authoredon(FhirDateTime value,
      {SearchModifier? modifier}) {
    parameters['${modifier}authoredon'] = value.toString();
    return this;
  }

  MedicationRequestSearch category(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}category'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  MedicationRequestSearch date(FhirDateTime value, {SearchModifier? modifier}) {
    parameters['${modifier}date'] = value.toString();
    return this;
  }

  MedicationRequestSearch intendedPerformertype(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}intended_performertype'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  MedicationRequestSearch intent(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}intent'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  MedicationRequestSearch priority(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}priority'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  MedicationRequestSearch add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
