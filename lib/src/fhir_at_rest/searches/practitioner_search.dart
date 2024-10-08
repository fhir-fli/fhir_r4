// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';
import '../enums/search_modifier.dart';

class PractitionerSearch {
  final Map<String, String> parameters = <String, String>{};
  PractitionerSearch address(FhirString value, {SearchModifier? modifier}) {
    parameters['${modifier}address'] = value.toString();
    return this;
  }

  PractitionerSearch addressCity(FhirString value, {SearchModifier? modifier}) {
    parameters['${modifier}address_city'] = value.toString();
    return this;
  }

  PractitionerSearch addressCountry(FhirString value,
      {SearchModifier? modifier}) {
    parameters['${modifier}address_country'] = value.toString();
    return this;
  }

  PractitionerSearch addressPostalcode(FhirString value,
      {SearchModifier? modifier}) {
    parameters['${modifier}address_postalcode'] = value.toString();
    return this;
  }

  PractitionerSearch addressState(FhirString value,
      {SearchModifier? modifier}) {
    parameters['${modifier}address_state'] = value.toString();
    return this;
  }

  PractitionerSearch addressUse(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}address_use'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  PractitionerSearch email(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}email'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  PractitionerSearch family(FhirString value, {SearchModifier? modifier}) {
    parameters['${modifier}family'] = value.toString();
    return this;
  }

  PractitionerSearch gender(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}gender'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  PractitionerSearch given(FhirString value, {SearchModifier? modifier}) {
    parameters['${modifier}given'] = value.toString();
    return this;
  }

  PractitionerSearch phone(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}phone'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  PractitionerSearch phonetic(FhirString value, {SearchModifier? modifier}) {
    parameters['${modifier}phonetic'] = value.toString();
    return this;
  }

  PractitionerSearch telecom(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}telecom'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  PractitionerSearch active(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}active'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  PractitionerSearch communication(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}communication'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  PractitionerSearch identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  PractitionerSearch name(FhirString value, {SearchModifier? modifier}) {
    parameters['${modifier}name'] = value.toString();
    return this;
  }

  PractitionerSearch add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
