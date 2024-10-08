// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';
import '../enums/search_modifier.dart';

class DocumentReferenceSearch {
  final Map<String, String> parameters = <String, String>{};
  DocumentReferenceSearch identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  DocumentReferenceSearch type(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  DocumentReferenceSearch category(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}category'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  DocumentReferenceSearch contenttype(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}contenttype'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  DocumentReferenceSearch date(FhirDateTime value, {SearchModifier? modifier}) {
    parameters['${modifier}date'] = value.toString();
    return this;
  }

  DocumentReferenceSearch description(FhirString value,
      {SearchModifier? modifier}) {
    parameters['${modifier}description'] = value.toString();
    return this;
  }

  DocumentReferenceSearch event(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}event'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  DocumentReferenceSearch facility(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}facility'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  DocumentReferenceSearch format(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}format'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  DocumentReferenceSearch language(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}language'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  DocumentReferenceSearch location(FhirUri value, {SearchModifier? modifier}) {
    parameters['${modifier}location'] = value.toString();
    return this;
  }

  DocumentReferenceSearch period(FhirDateTime value,
      {SearchModifier? modifier}) {
    parameters['${modifier}period'] = value.toString();
    return this;
  }

  DocumentReferenceSearch relation(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}relation'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  DocumentReferenceSearch securityLabel(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}security_label'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  DocumentReferenceSearch setting(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}setting'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  DocumentReferenceSearch status(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  DocumentReferenceSearch add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
