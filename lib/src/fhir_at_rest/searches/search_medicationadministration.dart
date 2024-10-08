// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';

class SearchMedicationAdministration extends SearchResource {
  SearchMedicationAdministration code(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}code'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchMedicationAdministration identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchMedicationAdministration effectiveTime(FhirDateTime value,
      {SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}effective_time'] =
        value.toString();
    return this;
  }

  SearchMedicationAdministration reasonGiven(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}reason_given'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchMedicationAdministration reasonNotGiven(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}reason_not_given'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchMedicationAdministration status(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }
}
