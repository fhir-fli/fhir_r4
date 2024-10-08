// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';
import '../enums/search_modifier.dart';

class DocumentManifestSearch {
  final Map<String, String> parameters = <String, String>{};
  DocumentManifestSearch identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  DocumentManifestSearch type(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  DocumentManifestSearch created(FhirDateTime value,
      {SearchModifier? modifier}) {
    parameters['${modifier}created'] = value.toString();
    return this;
  }

  DocumentManifestSearch description(FhirString value,
      {SearchModifier? modifier}) {
    parameters['${modifier}description'] = value.toString();
    return this;
  }

  DocumentManifestSearch relatedId(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}related_id'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  DocumentManifestSearch source(FhirUri value, {SearchModifier? modifier}) {
    parameters['${modifier}source'] = value.toString();
    return this;
  }

  DocumentManifestSearch status(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  DocumentManifestSearch add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
