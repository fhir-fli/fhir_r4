// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';

class SearchGoal extends SearchResource {
  SearchGoal identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchGoal achievementStatus(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}achievement_status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchGoal category(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}category'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchGoal lifecycleStatus(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}lifecycle_status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchGoal startDate(FhirDateTime value, {SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}start_date'] =
        value.toString();
    return this;
  }

  SearchGoal targetDate(FhirDateTime value, {SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}target_date'] =
        value.toString();
    return this;
  }
}