// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [Provenance] resource.
class SearchProvenance extends SearchResource {
  /// a token search for [agentRole] in the resource
  /// [Provenance]
  SearchProvenance agentRole(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['agent_role'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [agentType] in the resource
  /// [Provenance]
  SearchProvenance agentType(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['agent_type'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a date search for [recorded] in the resource
  /// [Provenance]
  SearchProvenance recorded(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['recorded'] =
        (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [signatureType] in the resource
  /// [Provenance]
  SearchProvenance signatureType(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['signature_type'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a date search for [when] in the resource
  /// [Provenance]
  SearchProvenance when(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['when'] =
        (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }
}
