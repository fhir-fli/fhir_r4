// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';

/// A class to build query parameters for RESTful requests for the AuditEvent resource.
class SearchAuditEvent extends SearchResource {
  /// a token search for [action] in the reosurce AuditEvent
  SearchAuditEvent action(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}action'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a string search for [address] in the reosurce AuditEvent
  SearchAuditEvent address(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['${modifier != null ? '$modifier' : ''}address'] =
        value.toString();
    return this;
  }

  /// a string search for [agentName] in the reosurce AuditEvent
  SearchAuditEvent agentName(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['${modifier != null ? '$modifier' : ''}agent_name'] =
        value.toString();
    return this;
  }

  /// a token search for [agentRole] in the reosurce AuditEvent
  SearchAuditEvent agentRole(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}agent_role'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [altid] in the reosurce AuditEvent
  SearchAuditEvent altid(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}altid'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a date search for [date] in the reosurce AuditEvent
  SearchAuditEvent date(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}date'] = value.toString();
    return this;
  }

  /// a string search for [entityName] in the reosurce AuditEvent
  SearchAuditEvent entityName(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['${modifier != null ? '$modifier' : ''}entity_name'] =
        value.toString();
    return this;
  }

  /// a token search for [entityRole] in the reosurce AuditEvent
  SearchAuditEvent entityRole(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}entity_role'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [entityType] in the reosurce AuditEvent
  SearchAuditEvent entityType(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}entity_type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [outcome] in the reosurce AuditEvent
  SearchAuditEvent outcome(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}outcome'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a uri search for [policy] in the reosurce AuditEvent
  SearchAuditEvent policy(FhirUri value, {SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}policy'] =
        value.toString();
    return this;
  }

  /// a token search for [site] in the reosurce AuditEvent
  SearchAuditEvent site(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}site'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [subtype] in the reosurce AuditEvent
  SearchAuditEvent subtype(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}subtype'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [type] in the reosurce AuditEvent
  SearchAuditEvent type(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }
}
