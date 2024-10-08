// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';

class SearchLocation {
  final Map<String, String> parameters = <String, String>{};
  SearchLocation address(FhirString value, {SearchModifier? modifier}) {
    if (modifier != null &&
        !<String>['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['${modifier != null ? '$modifier' : ''}address'] =
        value.toString();
    return this;
  }

  SearchLocation addressCity(FhirString value, {SearchModifier? modifier}) {
    if (modifier != null &&
        !<String>['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['${modifier != null ? '$modifier' : ''}address_city'] =
        value.toString();
    return this;
  }

  SearchLocation addressCountry(FhirString value, {SearchModifier? modifier}) {
    if (modifier != null &&
        !<String>['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['${modifier != null ? '$modifier' : ''}address_country'] =
        value.toString();
    return this;
  }

  SearchLocation addressPostalcode(FhirString value,
      {SearchModifier? modifier}) {
    if (modifier != null &&
        !<String>['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['${modifier != null ? '$modifier' : ''}address_postalcode'] =
        value.toString();
    return this;
  }

  SearchLocation addressState(FhirString value, {SearchModifier? modifier}) {
    if (modifier != null &&
        !<String>['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['${modifier != null ? '$modifier' : ''}address_state'] =
        value.toString();
    return this;
  }

  SearchLocation addressUse(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}address_use'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchLocation identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchLocation name(FhirString value, {SearchModifier? modifier}) {
    if (modifier != null &&
        !<String>['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['${modifier != null ? '$modifier' : ''}name'] = value.toString();
    return this;
  }

  SearchLocation operationalStatus(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}operational_status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchLocation status(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchLocation type(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchLocation add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
