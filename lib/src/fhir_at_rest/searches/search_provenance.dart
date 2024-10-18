// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';

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
    parameters['${modifier != null ? '$modifier' : ''}agent_role'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [agentType] in the resource
  /// [Provenance]
  SearchProvenance agentType(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}agent_type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a date search for [recorded] in the resource
  /// [Provenance]
  SearchProvenance recorded(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}recorded'] =
        value.toString();
    return this;
  }

  /// a token search for [signatureType] in the resource
  /// [Provenance]
  SearchProvenance signatureType(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}signature_type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a date search for [when] in the resource
  /// [Provenance]
  SearchProvenance when(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}when'] = value.toString();
    return this;
  }
}
