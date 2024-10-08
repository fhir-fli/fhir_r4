// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';
import '../enums/search_modifier.dart';

class CapabilityStatementSearch {
  final Map<String, String> parameters = <String, String>{};
  CapabilityStatementSearch context(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}context'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  CapabilityStatementSearch contextQuantity(FhirDecimal value,
      {FhirString? unit, FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}context_quantity'] =
        '$value.toString()}|${system?.toString() ?? ''}|${unit?.toString() ?? ''}';
    return this;
  }

  CapabilityStatementSearch contextType(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}context_type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  CapabilityStatementSearch date(FhirDateTime value,
      {SearchModifier? modifier}) {
    parameters['${modifier}date'] = value.toString();
    return this;
  }

  CapabilityStatementSearch description(FhirString value,
      {SearchModifier? modifier}) {
    parameters['${modifier}description'] = value.toString();
    return this;
  }

  CapabilityStatementSearch fhirversion(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}fhirversion'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  CapabilityStatementSearch format(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}format'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  CapabilityStatementSearch jurisdiction(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}jurisdiction'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  CapabilityStatementSearch mode(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}mode'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  CapabilityStatementSearch name(FhirString value, {SearchModifier? modifier}) {
    parameters['${modifier}name'] = value.toString();
    return this;
  }

  CapabilityStatementSearch publisher(FhirString value,
      {SearchModifier? modifier}) {
    parameters['${modifier}publisher'] = value.toString();
    return this;
  }

  CapabilityStatementSearch resource(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}resource'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  CapabilityStatementSearch securityService(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}security_service'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  CapabilityStatementSearch software(FhirString value,
      {SearchModifier? modifier}) {
    parameters['${modifier}software'] = value.toString();
    return this;
  }

  CapabilityStatementSearch status(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  CapabilityStatementSearch title(FhirString value,
      {SearchModifier? modifier}) {
    parameters['${modifier}title'] = value.toString();
    return this;
  }

  CapabilityStatementSearch url(FhirUri value, {SearchModifier? modifier}) {
    parameters['${modifier}url'] = value.toString();
    return this;
  }

  CapabilityStatementSearch version(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}version'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  CapabilityStatementSearch add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
