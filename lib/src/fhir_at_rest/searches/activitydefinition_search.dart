// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';
import '../enums/search_modifier.dart';

class ActivityDefinitionSearch {
  final Map<String, String> parameters = <String, String>{};
  ActivityDefinitionSearch context(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}context'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ActivityDefinitionSearch contextQuantity(FhirDecimal value,
      {FhirString? unit, FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}context_quantity'] =
        '$value.toString()}|${system?.toString() ?? ''}|${unit?.toString() ?? ''}';
    return this;
  }

  ActivityDefinitionSearch contextType(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}context_type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ActivityDefinitionSearch date(FhirDateTime value,
      {SearchModifier? modifier}) {
    parameters['${modifier}date'] = value.toString();
    return this;
  }

  ActivityDefinitionSearch description(FhirString value,
      {SearchModifier? modifier}) {
    parameters['${modifier}description'] = value.toString();
    return this;
  }

  ActivityDefinitionSearch effective(FhirDateTime value,
      {SearchModifier? modifier}) {
    parameters['${modifier}effective'] = value.toString();
    return this;
  }

  ActivityDefinitionSearch identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ActivityDefinitionSearch jurisdiction(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}jurisdiction'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ActivityDefinitionSearch name(FhirString value, {SearchModifier? modifier}) {
    parameters['${modifier}name'] = value.toString();
    return this;
  }

  ActivityDefinitionSearch publisher(FhirString value,
      {SearchModifier? modifier}) {
    parameters['${modifier}publisher'] = value.toString();
    return this;
  }

  ActivityDefinitionSearch status(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ActivityDefinitionSearch title(FhirString value, {SearchModifier? modifier}) {
    parameters['${modifier}title'] = value.toString();
    return this;
  }

  ActivityDefinitionSearch topic(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}topic'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ActivityDefinitionSearch url(FhirUri value, {SearchModifier? modifier}) {
    parameters['${modifier}url'] = value.toString();
    return this;
  }

  ActivityDefinitionSearch version(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}version'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ActivityDefinitionSearch add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
