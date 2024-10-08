// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';
import '../enums/search_modifier.dart';

class RelatedPersonSearch {
  final Map<String, String> parameters = <String, String>{};
  RelatedPersonSearch address(FhirString value, {SearchModifier? modifier}) {
    parameters['${modifier}address'] = value.toString();
    return this;
  }

  RelatedPersonSearch addressCity(FhirString value,
      {SearchModifier? modifier}) {
    parameters['${modifier}address_city'] = value.toString();
    return this;
  }

  RelatedPersonSearch addressCountry(FhirString value,
      {SearchModifier? modifier}) {
    parameters['${modifier}address_country'] = value.toString();
    return this;
  }

  RelatedPersonSearch addressPostalcode(FhirString value,
      {SearchModifier? modifier}) {
    parameters['${modifier}address_postalcode'] = value.toString();
    return this;
  }

  RelatedPersonSearch addressState(FhirString value,
      {SearchModifier? modifier}) {
    parameters['${modifier}address_state'] = value.toString();
    return this;
  }

  RelatedPersonSearch addressUse(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}address_use'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  RelatedPersonSearch birthdate(FhirDateTime value,
      {SearchModifier? modifier}) {
    parameters['${modifier}birthdate'] = value.toString();
    return this;
  }

  RelatedPersonSearch email(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}email'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  RelatedPersonSearch gender(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}gender'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  RelatedPersonSearch phone(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}phone'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  RelatedPersonSearch phonetic(FhirString value, {SearchModifier? modifier}) {
    parameters['${modifier}phonetic'] = value.toString();
    return this;
  }

  RelatedPersonSearch telecom(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}telecom'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  RelatedPersonSearch active(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}active'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  RelatedPersonSearch identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  RelatedPersonSearch name(FhirString value, {SearchModifier? modifier}) {
    parameters['${modifier}name'] = value.toString();
    return this;
  }

  RelatedPersonSearch relationship(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}relationship'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  RelatedPersonSearch add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
