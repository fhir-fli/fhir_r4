// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';
import '../enums/search_modifier.dart';

class ConceptMapSearch {
  final Map<String, String> parameters = <String, String>{};
  ConceptMapSearch context(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}context'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ConceptMapSearch contextQuantity(FhirDecimal value,
      {FhirString? unit, FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}context_quantity'] =
        '$value.toString()}|${system?.toString() ?? ''}|${unit?.toString() ?? ''}';
    return this;
  }

  ConceptMapSearch contextType(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}context_type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ConceptMapSearch date(FhirDateTime value, {SearchModifier? modifier}) {
    parameters['${modifier}date'] = value.toString();
    return this;
  }

  ConceptMapSearch description(FhirString value, {SearchModifier? modifier}) {
    parameters['${modifier}description'] = value.toString();
    return this;
  }

  ConceptMapSearch jurisdiction(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}jurisdiction'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ConceptMapSearch name(FhirString value, {SearchModifier? modifier}) {
    parameters['${modifier}name'] = value.toString();
    return this;
  }

  ConceptMapSearch publisher(FhirString value, {SearchModifier? modifier}) {
    parameters['${modifier}publisher'] = value.toString();
    return this;
  }

  ConceptMapSearch status(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ConceptMapSearch title(FhirString value, {SearchModifier? modifier}) {
    parameters['${modifier}title'] = value.toString();
    return this;
  }

  ConceptMapSearch url(FhirUri value, {SearchModifier? modifier}) {
    parameters['${modifier}url'] = value.toString();
    return this;
  }

  ConceptMapSearch version(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}version'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ConceptMapSearch identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ConceptMapSearch dependson(FhirUri value, {SearchModifier? modifier}) {
    parameters['${modifier}dependson'] = value.toString();
    return this;
  }

  ConceptMapSearch product(FhirUri value, {SearchModifier? modifier}) {
    parameters['${modifier}product'] = value.toString();
    return this;
  }

  ConceptMapSearch sourceCode(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}source_code'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ConceptMapSearch sourceSystem(FhirUri value, {SearchModifier? modifier}) {
    parameters['${modifier}source_system'] = value.toString();
    return this;
  }

  ConceptMapSearch targetCode(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}target_code'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ConceptMapSearch targetSystem(FhirUri value, {SearchModifier? modifier}) {
    parameters['${modifier}target_system'] = value.toString();
    return this;
  }

  ConceptMapSearch add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
