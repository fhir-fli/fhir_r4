// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';
import '../enums/search_modifier.dart';

class InsurancePlanSearch {
  final Map<String, String> parameters = <String, String>{};
  InsurancePlanSearch address(FhirString value, {SearchModifier? modifier}) {
    parameters['${modifier}address'] = value.toString();
    return this;
  }

  InsurancePlanSearch addressCity(FhirString value,
      {SearchModifier? modifier}) {
    parameters['${modifier}address_city'] = value.toString();
    return this;
  }

  InsurancePlanSearch addressCountry(FhirString value,
      {SearchModifier? modifier}) {
    parameters['${modifier}address_country'] = value.toString();
    return this;
  }

  InsurancePlanSearch addressPostalcode(FhirString value,
      {SearchModifier? modifier}) {
    parameters['${modifier}address_postalcode'] = value.toString();
    return this;
  }

  InsurancePlanSearch addressState(FhirString value,
      {SearchModifier? modifier}) {
    parameters['${modifier}address_state'] = value.toString();
    return this;
  }

  InsurancePlanSearch addressUse(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}address_use'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  InsurancePlanSearch identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  InsurancePlanSearch name(FhirString value, {SearchModifier? modifier}) {
    parameters['${modifier}name'] = value.toString();
    return this;
  }

  InsurancePlanSearch phonetic(FhirString value, {SearchModifier? modifier}) {
    parameters['${modifier}phonetic'] = value.toString();
    return this;
  }

  InsurancePlanSearch status(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  InsurancePlanSearch type(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  InsurancePlanSearch add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
