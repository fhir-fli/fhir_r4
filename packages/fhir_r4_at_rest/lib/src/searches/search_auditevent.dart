// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [AuditEvent] resource.
class SearchAuditEvent extends SearchResource {
  /// a token search for [action] in the resource
  /// [AuditEvent]
  SearchAuditEvent action(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('action', paramValue);
    return this;
  }

  /// a string search for [address] in the resource
  /// [AuditEvent]
  SearchAuditEvent address(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('address', paramValue);
    return this;
  }

  /// a string search for [agentName] in the resource
  /// [AuditEvent]
  SearchAuditEvent agentName(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('agent_name', paramValue);
    return this;
  }

  /// a token search for [agentRole] in the resource
  /// [AuditEvent]
  SearchAuditEvent agentRole(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('agent_role', paramValue);
    return this;
  }

  /// a token search for [altid] in the resource
  /// [AuditEvent]
  SearchAuditEvent altid(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('altid', paramValue);
    return this;
  }

  /// a date search for [date] in the resource
  /// [AuditEvent]
  SearchAuditEvent date(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('date', paramValue);
    return this;
  }

  /// a string search for [entityName] in the resource
  /// [AuditEvent]
  SearchAuditEvent entityName(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('entity_name', paramValue);
    return this;
  }

  /// a token search for [entityRole] in the resource
  /// [AuditEvent]
  SearchAuditEvent entityRole(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('entity_role', paramValue);
    return this;
  }

  /// a token search for [entityType] in the resource
  /// [AuditEvent]
  SearchAuditEvent entityType(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('entity_type', paramValue);
    return this;
  }

  /// a token search for [outcome] in the resource
  /// [AuditEvent]
  SearchAuditEvent outcome(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('outcome', paramValue);
    return this;
  }

  /// a uri search for [policy] in the resource
  /// [AuditEvent]
  SearchAuditEvent policy(
    FhirUri value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('policy', paramValue);
    return this;
  }

  /// a token search for [site] in the resource
  /// [AuditEvent]
  SearchAuditEvent site(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('site', paramValue);
    return this;
  }

  /// a token search for [subtype] in the resource
  /// [AuditEvent]
  SearchAuditEvent subtype(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('subtype', paramValue);
    return this;
  }

  /// a token search for [type] in the resource
  /// [AuditEvent]
  SearchAuditEvent type(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('type', paramValue);
    return this;
  }
}
