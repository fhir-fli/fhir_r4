// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';
import '../enums/search_modifier.dart';

class ScheduleSearch {
  final Map<String, String> parameters = <String, String>{};
  ScheduleSearch active(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}active'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ScheduleSearch date(FhirDateTime value, {SearchModifier? modifier}) {
    parameters['${modifier}date'] = value.toString();
    return this;
  }

  ScheduleSearch identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ScheduleSearch serviceCategory(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}service_category'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ScheduleSearch serviceType(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}service_type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ScheduleSearch specialty(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}specialty'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ScheduleSearch add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
