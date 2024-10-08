// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';
import '../enums/search_modifier.dart';

class MedicationKnowledgeSearch {
  final Map<String, String> parameters = <String, String>{};
  MedicationKnowledgeSearch classification(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}classification'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  MedicationKnowledgeSearch classificationType(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}classification_type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  MedicationKnowledgeSearch code(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}code'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  MedicationKnowledgeSearch doseform(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}doseform'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  MedicationKnowledgeSearch ingredientCode(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}ingredient_code'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  MedicationKnowledgeSearch monitoringProgramName(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}monitoring_program_name'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  MedicationKnowledgeSearch monitoringProgramType(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}monitoring_program_type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  MedicationKnowledgeSearch monographType(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}monograph_type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  MedicationKnowledgeSearch sourceCost(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}source_cost'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  MedicationKnowledgeSearch status(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  MedicationKnowledgeSearch add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
