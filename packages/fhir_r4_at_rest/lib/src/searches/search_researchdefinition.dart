// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [ResearchDefinition] resource.
class SearchResearchDefinition extends SearchResource {
  /// a token search for [context] in the resource
  /// [ResearchDefinition]
  SearchResearchDefinition context(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('context', paramValue);
    return this;
  }

  /// a quantity search for [contextQuantity] in the resource
  /// [ResearchDefinition]
  SearchResearchDefinition contextQuantity(
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
  /// [ResearchDefinition]
  SearchResearchDefinition contextType(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('context-type', paramValue);
    return this;
  }

  /// a date search for [date] in the resource
  /// [ResearchDefinition]
  SearchResearchDefinition date(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('date', paramValue);
    return this;
  }

  /// a string search for [description] in the resource
  /// [ResearchDefinition]
  SearchResearchDefinition description(FhirString value) {
    addParameterValue('description', value.toString());
    return this;
  }

  /// a date search for [effective] in the resource
  /// [ResearchDefinition]
  SearchResearchDefinition effective(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('effective', paramValue);
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [ResearchDefinition]
  SearchResearchDefinition identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a token search for [jurisdiction] in the resource
  /// [ResearchDefinition]
  SearchResearchDefinition jurisdiction(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('jurisdiction', paramValue);
    return this;
  }

  /// a string search for [name] in the resource
  /// [ResearchDefinition]
  SearchResearchDefinition name(FhirString value) {
    addParameterValue('name', value.toString());
    return this;
  }

  /// a string search for [publisher] in the resource
  /// [ResearchDefinition]
  SearchResearchDefinition publisher(FhirString value) {
    addParameterValue('publisher', value.toString());
    return this;
  }

  /// a token search for [status] in the resource
  /// [ResearchDefinition]
  SearchResearchDefinition status(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('status', paramValue);
    return this;
  }

  /// a string search for [title] in the resource
  /// [ResearchDefinition]
  SearchResearchDefinition title(FhirString value) {
    addParameterValue('title', value.toString());
    return this;
  }

  /// a token search for [topic] in the resource
  /// [ResearchDefinition]
  SearchResearchDefinition topic(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('topic', paramValue);
    return this;
  }

  /// a uri search for [url] in the resource
  /// [ResearchDefinition]
  SearchResearchDefinition url(FhirUri value) {
    addParameterValue('url', value.toString());
    return this;
  }

  /// a token search for [version] in the resource
  /// [ResearchDefinition]
  SearchResearchDefinition version(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('version', paramValue);
    return this;
  }
}
