// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';
import '../enums/search_modifier.dart';

class LocationSearch {
  final Map<String, String> parameters = <String, String>{};
  LocationSearch address(FhirString value, {SearchModifier? modifier}) {
    parameters['${modifier}address'] = value.toString();
    return this;
  }

  LocationSearch addressCity(FhirString value, {SearchModifier? modifier}) {
    parameters['${modifier}address_city'] = value.toString();
    return this;
  }

  LocationSearch addressCountry(FhirString value, {SearchModifier? modifier}) {
    parameters['${modifier}address_country'] = value.toString();
    return this;
  }

  LocationSearch addressPostalcode(FhirString value,
      {SearchModifier? modifier}) {
    parameters['${modifier}address_postalcode'] = value.toString();
    return this;
  }

  LocationSearch addressState(FhirString value, {SearchModifier? modifier}) {
    parameters['${modifier}address_state'] = value.toString();
    return this;
  }

  LocationSearch addressUse(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}address_use'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  LocationSearch identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  LocationSearch name(FhirString value, {SearchModifier? modifier}) {
    parameters['${modifier}name'] = value.toString();
    return this;
  }

  LocationSearch operationalStatus(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}operational_status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  LocationSearch status(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  LocationSearch type(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  LocationSearch add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
