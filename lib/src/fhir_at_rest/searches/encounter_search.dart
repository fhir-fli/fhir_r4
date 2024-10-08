// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';
import '../enums/search_modifier.dart';

class EncounterSearch {
  final Map<String, String> parameters = <String, String>{};
  EncounterSearch date(FhirDateTime value, {SearchModifier? modifier}) {
    parameters['${modifier}date'] = value.toString();
    return this;
  }

  EncounterSearch identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  EncounterSearch type(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  EncounterSearch class_(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}class'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  EncounterSearch length(FhirDecimal value,
      {FhirString? unit, FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}length'] =
        '$value.toString()}|${system?.toString() ?? ''}|${unit?.toString() ?? ''}';
    return this;
  }

  EncounterSearch locationPeriod(FhirDateTime value,
      {SearchModifier? modifier}) {
    parameters['${modifier}location_period'] = value.toString();
    return this;
  }

  EncounterSearch participantType(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}participant_type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  EncounterSearch reasonCode(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}reason_code'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  EncounterSearch specialArrangement(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}special_arrangement'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  EncounterSearch status(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  EncounterSearch add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
