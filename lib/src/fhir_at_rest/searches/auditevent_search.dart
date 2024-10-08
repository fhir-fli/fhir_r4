// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';
import '../enums/search_modifier.dart';

class AuditEventSearch {
  final Map<String, String> parameters = <String, String>{};
  AuditEventSearch action(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}action'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  AuditEventSearch address(FhirString value, {SearchModifier? modifier}) {
    parameters['${modifier}address'] = value.toString();
    return this;
  }

  AuditEventSearch agentName(FhirString value, {SearchModifier? modifier}) {
    parameters['${modifier}agent_name'] = value.toString();
    return this;
  }

  AuditEventSearch agentRole(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}agent_role'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  AuditEventSearch altid(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}altid'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  AuditEventSearch date(FhirDateTime value, {SearchModifier? modifier}) {
    parameters['${modifier}date'] = value.toString();
    return this;
  }

  AuditEventSearch entityName(FhirString value, {SearchModifier? modifier}) {
    parameters['${modifier}entity_name'] = value.toString();
    return this;
  }

  AuditEventSearch entityRole(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}entity_role'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  AuditEventSearch entityType(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}entity_type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  AuditEventSearch outcome(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}outcome'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  AuditEventSearch policy(FhirUri value, {SearchModifier? modifier}) {
    parameters['${modifier}policy'] = value.toString();
    return this;
  }

  AuditEventSearch site(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}site'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  AuditEventSearch subtype(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}subtype'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  AuditEventSearch type(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  AuditEventSearch add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
