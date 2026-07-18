// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [ValueSet] resource.
class SearchValueSet extends SearchResource {
  /// a token search for [context] in the resource
  /// [ValueSet]
  SearchValueSet context(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('context', paramValue);
    return this;
  }

  /// a quantity search for [contextQuantity] in the resource
  /// [ValueSet]
  SearchValueSet contextQuantity(
    FhirDecimal value, {
    FhirString? unit,
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = modifier != null
        ? '$modifier$value|${system?.toString() ?? ''}|'
            '${unit?.toString() ?? ''}'
        : '$value|${system?.toString() ?? ''}|'
            '${unit?.toString() ?? ''}';
    addParameterValue('context-quantity', paramValue);
    return this;
  }

  /// a token search for [contextType] in the resource
  /// [ValueSet]
  SearchValueSet contextType(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('context-type', paramValue);
    return this;
  }

  /// a date search for [date] in the resource
  /// [ValueSet]
  SearchValueSet date(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('date', paramValue);
    return this;
  }

  /// a string search for [description] in the resource
  /// [ValueSet]
  SearchValueSet description(FhirString value) {
    addParameterValue('description', value.toString());
    return this;
  }

  /// a token search for [jurisdiction] in the resource
  /// [ValueSet]
  SearchValueSet jurisdiction(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('jurisdiction', paramValue);
    return this;
  }

  /// a string search for [name] in the resource
  /// [ValueSet]
  SearchValueSet name(FhirString value) {
    addParameterValue('name', value.toString());
    return this;
  }

  /// a string search for [publisher] in the resource
  /// [ValueSet]
  SearchValueSet publisher(FhirString value) {
    addParameterValue('publisher', value.toString());
    return this;
  }

  /// a token search for [status] in the resource
  /// [ValueSet]
  SearchValueSet status(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('status', paramValue);
    return this;
  }

  /// a string search for [title] in the resource
  /// [ValueSet]
  SearchValueSet title(FhirString value) {
    addParameterValue('title', value.toString());
    return this;
  }

  /// a uri search for [url] in the resource
  /// [ValueSet]
  SearchValueSet url(FhirUri value) {
    addParameterValue('url', value.toString());
    return this;
  }

  /// a token search for [version] in the resource
  /// [ValueSet]
  SearchValueSet version(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('version', paramValue);
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [ValueSet]
  SearchValueSet identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a token search for [code] in the resource
  /// [ValueSet]
  SearchValueSet code(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('code', paramValue);
    return this;
  }

  /// a uri search for [expansion] in the resource
  /// [ValueSet]
  SearchValueSet expansion(FhirUri value) {
    addParameterValue('expansion', value.toString());
    return this;
  }

  /// a uri search for [reference] in the resource
  /// [ValueSet]
  SearchValueSet reference(FhirUri value) {
    addParameterValue('reference', value.toString());
    return this;
  }
}
