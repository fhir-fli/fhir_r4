// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';
import '../enums/search_modifier.dart';

class EventDefinitionSearch {
  final Map<String, String> parameters = <String, String>{};
  EventDefinitionSearch context(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}context'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  EventDefinitionSearch contextQuantity(FhirDecimal value,
      {FhirString? unit, FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}context_quantity'] =
        '$value.toString()}|${system?.toString() ?? ''}|${unit?.toString() ?? ''}';
    return this;
  }

  EventDefinitionSearch contextType(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}context_type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  EventDefinitionSearch date(FhirDateTime value, {SearchModifier? modifier}) {
    parameters['${modifier}date'] = value.toString();
    return this;
  }

  EventDefinitionSearch description(FhirString value,
      {SearchModifier? modifier}) {
    parameters['${modifier}description'] = value.toString();
    return this;
  }

  EventDefinitionSearch effective(FhirDateTime value,
      {SearchModifier? modifier}) {
    parameters['${modifier}effective'] = value.toString();
    return this;
  }

  EventDefinitionSearch identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  EventDefinitionSearch jurisdiction(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}jurisdiction'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  EventDefinitionSearch name(FhirString value, {SearchModifier? modifier}) {
    parameters['${modifier}name'] = value.toString();
    return this;
  }

  EventDefinitionSearch publisher(FhirString value,
      {SearchModifier? modifier}) {
    parameters['${modifier}publisher'] = value.toString();
    return this;
  }

  EventDefinitionSearch status(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  EventDefinitionSearch title(FhirString value, {SearchModifier? modifier}) {
    parameters['${modifier}title'] = value.toString();
    return this;
  }

  EventDefinitionSearch topic(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}topic'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  EventDefinitionSearch url(FhirUri value, {SearchModifier? modifier}) {
    parameters['${modifier}url'] = value.toString();
    return this;
  }

  EventDefinitionSearch version(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}version'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  EventDefinitionSearch add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}