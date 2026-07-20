// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [EvidenceReport] resource.
class SearchEvidenceReport extends SearchResource {
  /// a token search for [context] in the resource
  /// [EvidenceReport]
  SearchEvidenceReport context(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('context', paramValue);
    return this;
  }

  /// a quantity search for [contextQuantity] in the resource
  /// [EvidenceReport]
  SearchEvidenceReport contextQuantity(
    FhirDecimal value, {
    FhirString? unit,
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final numberPart = modifier != null ? '$modifier$value' : value.toString();
    final paramValue = (system == null && unit == null)
        ? numberPart
        : '$numberPart|${system?.toString() ?? ''}|'
            '${unit?.toString() ?? ''}';
    addParameterValue('context-quantity', paramValue);
    return this;
  }

  /// a token search for [contextType] in the resource
  /// [EvidenceReport]
  SearchEvidenceReport contextType(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('context-type', paramValue);
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [EvidenceReport]
  SearchEvidenceReport identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a string search for [publisher] in the resource
  /// [EvidenceReport]
  SearchEvidenceReport publisher(FhirString value) {
    addParameterValue('publisher', value.toString());
    return this;
  }

  /// a token search for [status] in the resource
  /// [EvidenceReport]
  SearchEvidenceReport status(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('status', paramValue);
    return this;
  }

  /// a uri search for [url] in the resource
  /// [EvidenceReport]
  SearchEvidenceReport url(FhirUri value) {
    addParameterValue('url', value.toString());
    return this;
  }
}
