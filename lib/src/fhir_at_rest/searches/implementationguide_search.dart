// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';
import '../enums/search_modifier.dart';

class ImplementationGuideSearch {
  final Map<String, String> parameters = <String, String>{};
  ImplementationGuideSearch context(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}context'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ImplementationGuideSearch contextQuantity(FhirDecimal value,
      {FhirString? unit, FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}context_quantity'] =
        '$value.toString()}|${system?.toString() ?? ''}|${unit?.toString() ?? ''}';
    return this;
  }

  ImplementationGuideSearch contextType(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}context_type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ImplementationGuideSearch date(FhirDateTime value,
      {SearchModifier? modifier}) {
    parameters['${modifier}date'] = value.toString();
    return this;
  }

  ImplementationGuideSearch description(FhirString value,
      {SearchModifier? modifier}) {
    parameters['${modifier}description'] = value.toString();
    return this;
  }

  ImplementationGuideSearch jurisdiction(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}jurisdiction'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ImplementationGuideSearch name(FhirString value, {SearchModifier? modifier}) {
    parameters['${modifier}name'] = value.toString();
    return this;
  }

  ImplementationGuideSearch publisher(FhirString value,
      {SearchModifier? modifier}) {
    parameters['${modifier}publisher'] = value.toString();
    return this;
  }

  ImplementationGuideSearch status(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ImplementationGuideSearch title(FhirString value,
      {SearchModifier? modifier}) {
    parameters['${modifier}title'] = value.toString();
    return this;
  }

  ImplementationGuideSearch url(FhirUri value, {SearchModifier? modifier}) {
    parameters['${modifier}url'] = value.toString();
    return this;
  }

  ImplementationGuideSearch version(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}version'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ImplementationGuideSearch experimental(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}experimental'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ImplementationGuideSearch add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
