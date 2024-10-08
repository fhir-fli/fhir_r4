// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';
import '../enums/search_modifier.dart';

class GoalSearch {
  final Map<String, String> parameters = <String, String>{};
  GoalSearch identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  GoalSearch achievementStatus(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}achievement_status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  GoalSearch category(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}category'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  GoalSearch lifecycleStatus(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}lifecycle_status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  GoalSearch startDate(FhirDateTime value, {SearchModifier? modifier}) {
    parameters['${modifier}start_date'] = value.toString();
    return this;
  }

  GoalSearch targetDate(FhirDateTime value, {SearchModifier? modifier}) {
    parameters['${modifier}target_date'] = value.toString();
    return this;
  }

  GoalSearch add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
