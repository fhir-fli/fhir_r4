// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';
import '../enums/search_modifier.dart';

class PatientSearch {
  final Map<String, String> parameters = <String, String>{};
  PatientSearch active(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}active'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  PatientSearch address(FhirString value, {SearchModifier? modifier}) {
    parameters['${modifier}address'] = value.toString();
    return this;
  }

  PatientSearch addressCity(FhirString value, {SearchModifier? modifier}) {
    parameters['${modifier}address_city'] = value.toString();
    return this;
  }

  PatientSearch addressCountry(FhirString value, {SearchModifier? modifier}) {
    parameters['${modifier}address_country'] = value.toString();
    return this;
  }

  PatientSearch addressPostalcode(FhirString value,
      {SearchModifier? modifier}) {
    parameters['${modifier}address_postalcode'] = value.toString();
    return this;
  }

  PatientSearch addressState(FhirString value, {SearchModifier? modifier}) {
    parameters['${modifier}address_state'] = value.toString();
    return this;
  }

  PatientSearch addressUse(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}address_use'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  PatientSearch birthdate(FhirDateTime value, {SearchModifier? modifier}) {
    parameters['${modifier}birthdate'] = value.toString();
    return this;
  }

  PatientSearch deathDate(FhirDateTime value, {SearchModifier? modifier}) {
    parameters['${modifier}death_date'] = value.toString();
    return this;
  }

  PatientSearch deceased(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}deceased'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  PatientSearch email(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}email'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  PatientSearch family(FhirString value, {SearchModifier? modifier}) {
    parameters['${modifier}family'] = value.toString();
    return this;
  }

  PatientSearch gender(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}gender'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  PatientSearch given(FhirString value, {SearchModifier? modifier}) {
    parameters['${modifier}given'] = value.toString();
    return this;
  }

  PatientSearch identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  PatientSearch language(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}language'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  PatientSearch name(FhirString value, {SearchModifier? modifier}) {
    parameters['${modifier}name'] = value.toString();
    return this;
  }

  PatientSearch phone(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}phone'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  PatientSearch phonetic(FhirString value, {SearchModifier? modifier}) {
    parameters['${modifier}phonetic'] = value.toString();
    return this;
  }

  PatientSearch telecom(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}telecom'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  PatientSearch add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
