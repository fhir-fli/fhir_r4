// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';
import '../enums/search_modifier.dart';

class SpecimenSearch {
  final Map<String, String> parameters = <String, String>{};
  SpecimenSearch accession(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}accession'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SpecimenSearch bodysite(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}bodysite'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SpecimenSearch collected(FhirDateTime value, {SearchModifier? modifier}) {
    parameters['${modifier}collected'] = value.toString();
    return this;
  }

  SpecimenSearch container(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}container'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SpecimenSearch containerId(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}container_id'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SpecimenSearch identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SpecimenSearch status(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SpecimenSearch type(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SpecimenSearch add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
