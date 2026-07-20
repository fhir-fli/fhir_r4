// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [EventDefinition] resource.
class SearchEventDefinition extends SearchResource {
  /// a reference search for [composedOf] in the resource
  /// [EventDefinition]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchEventDefinition composedOf(FhirString value) {
    addParameterValue('composed-of', value.toString());
    return this;
  }

  /// a token search for [context] in the resource
  /// [EventDefinition]
  SearchEventDefinition context(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('context', paramValue);
    return this;
  }

  /// a quantity search for [contextQuantity] in the resource
  /// [EventDefinition]
  SearchEventDefinition contextQuantity(
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
  /// [EventDefinition]
  SearchEventDefinition contextType(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('context-type', paramValue);
    return this;
  }

  /// a date search for [date] in the resource
  /// [EventDefinition]
  SearchEventDefinition date(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('date', paramValue);
    return this;
  }

  /// a reference search for [dependsOn] in the resource
  /// [EventDefinition]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchEventDefinition dependsOn(FhirString value) {
    addParameterValue('depends-on', value.toString());
    return this;
  }

  /// a reference search for [derivedFrom] in the resource
  /// [EventDefinition]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchEventDefinition derivedFrom(FhirString value) {
    addParameterValue('derived-from', value.toString());
    return this;
  }

  /// a string search for [description] in the resource
  /// [EventDefinition]
  SearchEventDefinition description(FhirString value) {
    addParameterValue('description', value.toString());
    return this;
  }

  /// a date search for [effective] in the resource
  /// [EventDefinition]
  SearchEventDefinition effective(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('effective', paramValue);
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [EventDefinition]
  SearchEventDefinition identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a token search for [jurisdiction] in the resource
  /// [EventDefinition]
  SearchEventDefinition jurisdiction(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('jurisdiction', paramValue);
    return this;
  }

  /// a string search for [name] in the resource
  /// [EventDefinition]
  SearchEventDefinition name(FhirString value) {
    addParameterValue('name', value.toString());
    return this;
  }

  /// a reference search for [predecessor] in the resource
  /// [EventDefinition]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchEventDefinition predecessor(FhirString value) {
    addParameterValue('predecessor', value.toString());
    return this;
  }

  /// a string search for [publisher] in the resource
  /// [EventDefinition]
  SearchEventDefinition publisher(FhirString value) {
    addParameterValue('publisher', value.toString());
    return this;
  }

  /// a token search for [status] in the resource
  /// [EventDefinition]
  SearchEventDefinition status(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('status', paramValue);
    return this;
  }

  /// a reference search for [successor] in the resource
  /// [EventDefinition]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchEventDefinition successor(FhirString value) {
    addParameterValue('successor', value.toString());
    return this;
  }

  /// a string search for [title] in the resource
  /// [EventDefinition]
  SearchEventDefinition title(FhirString value) {
    addParameterValue('title', value.toString());
    return this;
  }

  /// a token search for [topic] in the resource
  /// [EventDefinition]
  SearchEventDefinition topic(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('topic', paramValue);
    return this;
  }

  /// a uri search for [url] in the resource
  /// [EventDefinition]
  SearchEventDefinition url(FhirUri value) {
    addParameterValue('url', value.toString());
    return this;
  }

  /// a token search for [version] in the resource
  /// [EventDefinition]
  SearchEventDefinition version(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('version', paramValue);
    return this;
  }
}
