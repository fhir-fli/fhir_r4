// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';

class SearchMedicationKnowledge extends SearchResource {
  SearchMedicationKnowledge classification(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}classification'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchMedicationKnowledge classificationType(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}classification_type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchMedicationKnowledge code(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}code'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchMedicationKnowledge doseform(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}doseform'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchMedicationKnowledge ingredientCode(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}ingredient_code'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchMedicationKnowledge monitoringProgramName(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters[
            '${modifier != null ? '$modifier' : ''}monitoring_program_name'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchMedicationKnowledge monitoringProgramType(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters[
            '${modifier != null ? '$modifier' : ''}monitoring_program_type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchMedicationKnowledge monographType(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}monograph_type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchMedicationKnowledge sourceCost(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}source_cost'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchMedicationKnowledge status(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }
}
