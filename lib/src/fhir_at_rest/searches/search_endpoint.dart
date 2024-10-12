// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';

class SearchEndpoint extends SearchResource {
  SearchEndpoint connectionType(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}connection_type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchEndpoint identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchEndpoint name(FhirString value, {SearchModifier? modifier}) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['${modifier != null ? '$modifier' : ''}name'] = value.toString();
    return this;
  }

  SearchEndpoint payloadType(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}payload_type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchEndpoint status(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }
}
