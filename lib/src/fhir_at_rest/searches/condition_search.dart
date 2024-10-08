// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';
import '../enums/search_modifier.dart';

class ConditionSearch {
  final Map<String, String> parameters = <String, String>{};
  ConditionSearch code(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}code'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ConditionSearch identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ConditionSearch abatementAge(FhirDecimal value,
      {FhirString? unit, FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}abatement_age'] =
        '$value.toString()}|${system?.toString() ?? ''}|${unit?.toString() ?? ''}';
    return this;
  }

  ConditionSearch abatementDate(FhirDateTime value,
      {SearchModifier? modifier}) {
    parameters['${modifier}abatement_date'] = value.toString();
    return this;
  }

  ConditionSearch abatementString(FhirString value,
      {SearchModifier? modifier}) {
    parameters['${modifier}abatement_string'] = value.toString();
    return this;
  }

  ConditionSearch bodySite(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}body_site'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ConditionSearch category(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}category'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ConditionSearch clinicalStatus(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}clinical_status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ConditionSearch evidence(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}evidence'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ConditionSearch onsetAge(FhirDecimal value,
      {FhirString? unit, FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}onset_age'] =
        '$value.toString()}|${system?.toString() ?? ''}|${unit?.toString() ?? ''}';
    return this;
  }

  ConditionSearch onsetDate(FhirDateTime value, {SearchModifier? modifier}) {
    parameters['${modifier}onset_date'] = value.toString();
    return this;
  }

  ConditionSearch onsetInfo(FhirString value, {SearchModifier? modifier}) {
    parameters['${modifier}onset_info'] = value.toString();
    return this;
  }

  ConditionSearch recordedDate(FhirDateTime value, {SearchModifier? modifier}) {
    parameters['${modifier}recorded_date'] = value.toString();
    return this;
  }

  ConditionSearch severity(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}severity'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ConditionSearch stage(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}stage'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ConditionSearch verificationStatus(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}verification_status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ConditionSearch add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
