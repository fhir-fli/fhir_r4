// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [Provenance] resource.
class SearchProvenance extends SearchResource {
  /// a reference search for [agent] in the resource
  /// [Provenance]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchProvenance agent(FhirString value) {
    addParameterValue('agent', value.toString());
    return this;
  }

  /// a token search for [agentRole] in the resource
  /// [Provenance]
  SearchProvenance agentRole(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('agent-role', paramValue);
    return this;
  }

  /// a token search for [agentType] in the resource
  /// [Provenance]
  SearchProvenance agentType(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('agent-type', paramValue);
    return this;
  }

  /// a reference search for [entity] in the resource
  /// [Provenance]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchProvenance entity(FhirString value) {
    addParameterValue('entity', value.toString());
    return this;
  }

  /// a reference search for [location] in the resource
  /// [Provenance]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchProvenance location(FhirString value) {
    addParameterValue('location', value.toString());
    return this;
  }

  /// a reference search for [patient] in the resource
  /// [Provenance]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchProvenance patient(FhirString value) {
    addParameterValue('patient', value.toString());
    return this;
  }

  /// a date search for [recorded] in the resource
  /// [Provenance]
  SearchProvenance recorded(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('recorded', paramValue);
    return this;
  }

  /// a token search for [signatureType] in the resource
  /// [Provenance]
  SearchProvenance signatureType(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('signature-type', paramValue);
    return this;
  }

  /// a reference search for [target] in the resource
  /// [Provenance]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchProvenance target(FhirString value) {
    addParameterValue('target', value.toString());
    return this;
  }

  /// a date search for [when] in the resource
  /// [Provenance]
  SearchProvenance when(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('when', paramValue);
    return this;
  }
}
