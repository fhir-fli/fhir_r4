// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';
import '../enums/search_modifier.dart';

class ImmunizationSearch {
  final Map<String, String> parameters = <String, String>{};
  ImmunizationSearch date(FhirDateTime value, {SearchModifier? modifier}) {
    parameters['${modifier}date'] = value.toString();
    return this;
  }

  ImmunizationSearch identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ImmunizationSearch lotNumber(FhirString value, {SearchModifier? modifier}) {
    parameters['${modifier}lot_number'] = value.toString();
    return this;
  }

  ImmunizationSearch reactionDate(FhirDateTime value,
      {SearchModifier? modifier}) {
    parameters['${modifier}reaction_date'] = value.toString();
    return this;
  }

  ImmunizationSearch reasonCode(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}reason_code'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ImmunizationSearch series(FhirString value, {SearchModifier? modifier}) {
    parameters['${modifier}series'] = value.toString();
    return this;
  }

  ImmunizationSearch status(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ImmunizationSearch statusReason(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}status_reason'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ImmunizationSearch targetDisease(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}target_disease'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ImmunizationSearch vaccineCode(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}vaccine_code'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ImmunizationSearch add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
