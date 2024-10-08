// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';
import '../enums/search_modifier.dart';

class OrganizationSearch {
  final Map<String, String> parameters = <String, String>{};
  OrganizationSearch active(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}active'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  OrganizationSearch address(FhirString value, {SearchModifier? modifier}) {
    parameters['${modifier}address'] = value.toString();
    return this;
  }

  OrganizationSearch addressCity(FhirString value, {SearchModifier? modifier}) {
    parameters['${modifier}address_city'] = value.toString();
    return this;
  }

  OrganizationSearch addressCountry(FhirString value,
      {SearchModifier? modifier}) {
    parameters['${modifier}address_country'] = value.toString();
    return this;
  }

  OrganizationSearch addressPostalcode(FhirString value,
      {SearchModifier? modifier}) {
    parameters['${modifier}address_postalcode'] = value.toString();
    return this;
  }

  OrganizationSearch addressState(FhirString value,
      {SearchModifier? modifier}) {
    parameters['${modifier}address_state'] = value.toString();
    return this;
  }

  OrganizationSearch addressUse(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}address_use'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  OrganizationSearch identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  OrganizationSearch name(FhirString value, {SearchModifier? modifier}) {
    parameters['${modifier}name'] = value.toString();
    return this;
  }

  OrganizationSearch phonetic(FhirString value, {SearchModifier? modifier}) {
    parameters['${modifier}phonetic'] = value.toString();
    return this;
  }

  OrganizationSearch type(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  OrganizationSearch add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
