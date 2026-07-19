// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [OperationDefinition] resource.
class SearchOperationDefinition extends SearchResource {
  /// a token search for [context] in the resource
  /// [OperationDefinition]
  SearchOperationDefinition context(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('context', paramValue);
    return this;
  }

  /// a quantity search for [contextQuantity] in the resource
  /// [OperationDefinition]
  SearchOperationDefinition contextQuantity(
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
  /// [OperationDefinition]
  SearchOperationDefinition contextType(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('context-type', paramValue);
    return this;
  }

  /// a date search for [date] in the resource
  /// [OperationDefinition]
  SearchOperationDefinition date(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('date', paramValue);
    return this;
  }

  /// a string search for [description] in the resource
  /// [OperationDefinition]
  SearchOperationDefinition description(FhirString value) {
    addParameterValue('description', value.toString());
    return this;
  }

  /// a token search for [jurisdiction] in the resource
  /// [OperationDefinition]
  SearchOperationDefinition jurisdiction(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('jurisdiction', paramValue);
    return this;
  }

  /// a string search for [name] in the resource
  /// [OperationDefinition]
  SearchOperationDefinition name(FhirString value) {
    addParameterValue('name', value.toString());
    return this;
  }

  /// a string search for [publisher] in the resource
  /// [OperationDefinition]
  SearchOperationDefinition publisher(FhirString value) {
    addParameterValue('publisher', value.toString());
    return this;
  }

  /// a token search for [status] in the resource
  /// [OperationDefinition]
  SearchOperationDefinition status(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('status', paramValue);
    return this;
  }

  /// a string search for [title] in the resource
  /// [OperationDefinition]
  SearchOperationDefinition title(FhirString value) {
    addParameterValue('title', value.toString());
    return this;
  }

  /// a uri search for [url] in the resource
  /// [OperationDefinition]
  SearchOperationDefinition url(FhirUri value) {
    addParameterValue('url', value.toString());
    return this;
  }

  /// a token search for [version] in the resource
  /// [OperationDefinition]
  SearchOperationDefinition version(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('version', paramValue);
    return this;
  }

  /// a reference search for [base] in the resource
  /// [OperationDefinition]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchOperationDefinition base(FhirString value) {
    addParameterValue('base', value.toString());
    return this;
  }

  /// a token search for [code] in the resource
  /// [OperationDefinition]
  SearchOperationDefinition code(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('code', paramValue);
    return this;
  }

  /// a reference search for [inputProfile] in the resource
  /// [OperationDefinition]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchOperationDefinition inputProfile(FhirString value) {
    addParameterValue('input-profile', value.toString());
    return this;
  }

  /// a token search for [instance] in the resource
  /// [OperationDefinition]
  SearchOperationDefinition instance(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('instance', paramValue);
    return this;
  }

  /// a token search for [kind] in the resource
  /// [OperationDefinition]
  SearchOperationDefinition kind(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('kind', paramValue);
    return this;
  }

  /// a reference search for [outputProfile] in the resource
  /// [OperationDefinition]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchOperationDefinition outputProfile(FhirString value) {
    addParameterValue('output-profile', value.toString());
    return this;
  }

  /// a token search for [system] in the resource
  /// [OperationDefinition]
  SearchOperationDefinition system(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('system', paramValue);
    return this;
  }

  /// a token search for [type] in the resource
  /// [OperationDefinition]
  SearchOperationDefinition type(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('type', paramValue);
    return this;
  }
}
