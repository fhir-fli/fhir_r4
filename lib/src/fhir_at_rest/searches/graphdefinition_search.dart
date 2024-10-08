// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';
import '../enums/search_modifier.dart';

class GraphDefinitionSearch {
  final Map<String, String> parameters = <String, String>{};
  GraphDefinitionSearch context(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}context'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  GraphDefinitionSearch contextQuantity(FhirDecimal value,
      {FhirString? unit, FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}context_quantity'] =
        '$value.toString()}|${system?.toString() ?? ''}|${unit?.toString() ?? ''}';
    return this;
  }

  GraphDefinitionSearch contextType(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}context_type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  GraphDefinitionSearch date(FhirDateTime value, {SearchModifier? modifier}) {
    parameters['${modifier}date'] = value.toString();
    return this;
  }

  GraphDefinitionSearch description(FhirString value,
      {SearchModifier? modifier}) {
    parameters['${modifier}description'] = value.toString();
    return this;
  }

  GraphDefinitionSearch jurisdiction(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}jurisdiction'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  GraphDefinitionSearch name(FhirString value, {SearchModifier? modifier}) {
    parameters['${modifier}name'] = value.toString();
    return this;
  }

  GraphDefinitionSearch publisher(FhirString value,
      {SearchModifier? modifier}) {
    parameters['${modifier}publisher'] = value.toString();
    return this;
  }

  GraphDefinitionSearch status(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  GraphDefinitionSearch url(FhirUri value, {SearchModifier? modifier}) {
    parameters['${modifier}url'] = value.toString();
    return this;
  }

  GraphDefinitionSearch version(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}version'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  GraphDefinitionSearch start(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}start'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  GraphDefinitionSearch add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
