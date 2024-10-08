// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';
import '../enums/search_modifier.dart';

class PersonSearch {
  final Map<String, String> parameters = <String, String>{};
  PersonSearch address(FhirString value, {SearchModifier? modifier}) {
    parameters['${modifier}address'] = value.toString();
    return this;
  }

  PersonSearch addressCity(FhirString value, {SearchModifier? modifier}) {
    parameters['${modifier}address_city'] = value.toString();
    return this;
  }

  PersonSearch addressCountry(FhirString value, {SearchModifier? modifier}) {
    parameters['${modifier}address_country'] = value.toString();
    return this;
  }

  PersonSearch addressPostalcode(FhirString value, {SearchModifier? modifier}) {
    parameters['${modifier}address_postalcode'] = value.toString();
    return this;
  }

  PersonSearch addressState(FhirString value, {SearchModifier? modifier}) {
    parameters['${modifier}address_state'] = value.toString();
    return this;
  }

  PersonSearch addressUse(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}address_use'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  PersonSearch birthdate(FhirDateTime value, {SearchModifier? modifier}) {
    parameters['${modifier}birthdate'] = value.toString();
    return this;
  }

  PersonSearch email(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}email'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  PersonSearch gender(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}gender'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  PersonSearch phone(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}phone'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  PersonSearch phonetic(FhirString value, {SearchModifier? modifier}) {
    parameters['${modifier}phonetic'] = value.toString();
    return this;
  }

  PersonSearch telecom(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}telecom'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  PersonSearch identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  PersonSearch name(FhirString value, {SearchModifier? modifier}) {
    parameters['${modifier}name'] = value.toString();
    return this;
  }

  PersonSearch add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
