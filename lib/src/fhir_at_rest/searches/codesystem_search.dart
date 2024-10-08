// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';
import '../enums/search_modifier.dart';

class CodeSystemSearch {
  final Map<String, String> parameters = <String, String>{};
  CodeSystemSearch context(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}context'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  CodeSystemSearch contextQuantity(FhirDecimal value,
      {FhirString? unit, FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}context_quantity'] =
        '$value.toString()}|${system?.toString() ?? ''}|${unit?.toString() ?? ''}';
    return this;
  }

  CodeSystemSearch contextType(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}context_type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  CodeSystemSearch date(FhirDateTime value, {SearchModifier? modifier}) {
    parameters['${modifier}date'] = value.toString();
    return this;
  }

  CodeSystemSearch description(FhirString value, {SearchModifier? modifier}) {
    parameters['${modifier}description'] = value.toString();
    return this;
  }

  CodeSystemSearch jurisdiction(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}jurisdiction'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  CodeSystemSearch name(FhirString value, {SearchModifier? modifier}) {
    parameters['${modifier}name'] = value.toString();
    return this;
  }

  CodeSystemSearch publisher(FhirString value, {SearchModifier? modifier}) {
    parameters['${modifier}publisher'] = value.toString();
    return this;
  }

  CodeSystemSearch status(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  CodeSystemSearch title(FhirString value, {SearchModifier? modifier}) {
    parameters['${modifier}title'] = value.toString();
    return this;
  }

  CodeSystemSearch url(FhirUri value, {SearchModifier? modifier}) {
    parameters['${modifier}url'] = value.toString();
    return this;
  }

  CodeSystemSearch version(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}version'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  CodeSystemSearch code(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}code'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  CodeSystemSearch contentMode(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}content_mode'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  CodeSystemSearch identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  CodeSystemSearch language(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}language'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  CodeSystemSearch system(FhirUri value, {SearchModifier? modifier}) {
    parameters['${modifier}system'] = value.toString();
    return this;
  }

  CodeSystemSearch add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
