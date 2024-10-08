// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';

class SearchSpecimen {
  final Map<String, String> parameters = <String, String>{};
  SearchSpecimen accession(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}accession'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchSpecimen bodysite(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}bodysite'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchSpecimen collected(FhirDateTime value, {SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}collected'] =
        value.toString();
    return this;
  }

  SearchSpecimen container(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}container'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchSpecimen containerId(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}container_id'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchSpecimen identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchSpecimen status(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchSpecimen type(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchSpecimen add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
