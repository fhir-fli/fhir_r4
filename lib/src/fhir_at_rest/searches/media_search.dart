// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';
import '../enums/search_modifier.dart';

class MediaSearch {
  final Map<String, String> parameters = <String, String>{};
  MediaSearch created(FhirDateTime value, {SearchModifier? modifier}) {
    parameters['${modifier}created'] = value.toString();
    return this;
  }

  MediaSearch identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  MediaSearch modality(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}modality'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  MediaSearch site(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}site'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  MediaSearch status(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  MediaSearch type(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  MediaSearch view(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}view'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  MediaSearch add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
