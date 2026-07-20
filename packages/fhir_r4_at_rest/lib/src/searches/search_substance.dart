// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [Substance] resource.
class SearchSubstance extends SearchResource {
  /// a token search for [category] in the resource
  /// [Substance]
  SearchSubstance category(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('category', paramValue);
    return this;
  }

  /// a token search for [code] in the resource
  /// [Substance]
  SearchSubstance code(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('code', paramValue);
    return this;
  }

  /// a token search for [containerIdentifier] in the resource
  /// [Substance]
  SearchSubstance containerIdentifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('container-identifier', paramValue);
    return this;
  }

  /// a date search for [expiry] in the resource
  /// [Substance]
  SearchSubstance expiry(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('expiry', paramValue);
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [Substance]
  SearchSubstance identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a quantity search for [quantity] in the resource
  /// [Substance]
  SearchSubstance quantity(
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
    addParameterValue('quantity', paramValue);
    return this;
  }

  /// a token search for [status] in the resource
  /// [Substance]
  SearchSubstance status(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('status', paramValue);
    return this;
  }

  /// a reference search for [substanceReference] in the resource
  /// [Substance]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchSubstance substanceReference(FhirString value) {
    addParameterValue('substance-reference', value.toString());
    return this;
  }
}
