// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';
import '../enums/search_modifier.dart';

class StructureDefinitionSearch {
  final Map<String, String> parameters = <String, String>{};
  StructureDefinitionSearch context(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}context'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  StructureDefinitionSearch contextQuantity(FhirDecimal value,
      {FhirString? unit, FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}context_quantity'] =
        '$value.toString()}|${system?.toString() ?? ''}|${unit?.toString() ?? ''}';
    return this;
  }

  StructureDefinitionSearch contextType(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}context_type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  StructureDefinitionSearch date(FhirDateTime value,
      {SearchModifier? modifier}) {
    parameters['${modifier}date'] = value.toString();
    return this;
  }

  StructureDefinitionSearch description(FhirString value,
      {SearchModifier? modifier}) {
    parameters['${modifier}description'] = value.toString();
    return this;
  }

  StructureDefinitionSearch jurisdiction(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}jurisdiction'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  StructureDefinitionSearch name(FhirString value, {SearchModifier? modifier}) {
    parameters['${modifier}name'] = value.toString();
    return this;
  }

  StructureDefinitionSearch publisher(FhirString value,
      {SearchModifier? modifier}) {
    parameters['${modifier}publisher'] = value.toString();
    return this;
  }

  StructureDefinitionSearch status(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  StructureDefinitionSearch title(FhirString value,
      {SearchModifier? modifier}) {
    parameters['${modifier}title'] = value.toString();
    return this;
  }

  StructureDefinitionSearch url(FhirUri value, {SearchModifier? modifier}) {
    parameters['${modifier}url'] = value.toString();
    return this;
  }

  StructureDefinitionSearch version(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}version'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  StructureDefinitionSearch identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  StructureDefinitionSearch abstract(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}abstract'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  StructureDefinitionSearch basePath(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}base_path'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  StructureDefinitionSearch derivation(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}derivation'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  StructureDefinitionSearch experimental(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}experimental'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  StructureDefinitionSearch extContext(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}ext_context'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  StructureDefinitionSearch keyword(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}keyword'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  StructureDefinitionSearch kind(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}kind'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  StructureDefinitionSearch path(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}path'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  StructureDefinitionSearch type(FhirUri value, {SearchModifier? modifier}) {
    parameters['${modifier}type'] = value.toString();
    return this;
  }

  StructureDefinitionSearch add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
