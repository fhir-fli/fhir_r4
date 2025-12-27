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
    SearchModifier? modifier,
  }) {
    parameters['context'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
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
    if (modifier != null &&
        !['gt', 'lt', 'ge', 'le', 'ap'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for quantity type');
    }
    parameters['context_quantity'] = (modifier != null
        ? '$modifier$value|${system?.toString() ?? ''}|${unit?.toString() ?? ''}'
        : '$value|${system?.toString() ?? ''}|${unit?.toString() ?? ''}');
    return this;
  }

  /// a token search for [contextType] in the resource
  /// [EvidenceReport]
  SearchEvidenceReport contextType(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['context_type'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [EvidenceReport]
  SearchEvidenceReport identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['identifier'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a string search for [publisher] in the resource
  /// [EvidenceReport]
  SearchEvidenceReport publisher(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['publisher'] =
        (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a token search for [status] in the resource
  /// [EvidenceReport]
  SearchEvidenceReport status(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['status'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a uri search for [url] in the resource
  /// [EvidenceReport]
  SearchEvidenceReport url(
    FhirUri value, {
    SearchModifier? modifier,
  }) {
    parameters['url'] =
        (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }
}
