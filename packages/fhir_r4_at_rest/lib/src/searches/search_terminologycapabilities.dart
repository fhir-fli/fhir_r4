// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [TerminologyCapabilities] resource.
class SearchTerminologyCapabilities extends SearchResource {
  /// a token search for [context] in the resource
  /// [TerminologyCapabilities]
  SearchTerminologyCapabilities context(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('context', paramValue);
    return this;
  }

  /// a quantity search for [contextQuantity] in the resource
  /// [TerminologyCapabilities]
  SearchTerminologyCapabilities contextQuantity(
    FhirDecimal value, {
    FhirString? unit,
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    if (modifier != null &&
        !['gt', 'lt', 'ge', 'le', 'ap'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for quantity type');
    }
    final paramValue = (modifier != null
        ? '$modifier$value|${system?.toString() ?? ''}|${unit?.toString() ?? ''}'
        : '$value|${system?.toString() ?? ''}|${unit?.toString() ?? ''}');
    addParameterValue('context_quantity', paramValue);
    return this;
  }

  /// a token search for [contextType] in the resource
  /// [TerminologyCapabilities]
  SearchTerminologyCapabilities contextType(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('context_type', paramValue);
    return this;
  }

  /// a date search for [date] in the resource
  /// [TerminologyCapabilities]
  SearchTerminologyCapabilities date(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('date', paramValue);
    return this;
  }

  /// a string search for [description] in the resource
  /// [TerminologyCapabilities]
  SearchTerminologyCapabilities description(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('description', paramValue);
    return this;
  }

  /// a token search for [jurisdiction] in the resource
  /// [TerminologyCapabilities]
  SearchTerminologyCapabilities jurisdiction(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('jurisdiction', paramValue);
    return this;
  }

  /// a string search for [name] in the resource
  /// [TerminologyCapabilities]
  SearchTerminologyCapabilities name(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('name', paramValue);
    return this;
  }

  /// a string search for [publisher] in the resource
  /// [TerminologyCapabilities]
  SearchTerminologyCapabilities publisher(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('publisher', paramValue);
    return this;
  }

  /// a token search for [status] in the resource
  /// [TerminologyCapabilities]
  SearchTerminologyCapabilities status(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('status', paramValue);
    return this;
  }

  /// a string search for [title] in the resource
  /// [TerminologyCapabilities]
  SearchTerminologyCapabilities title(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('title', paramValue);
    return this;
  }

  /// a uri search for [url] in the resource
  /// [TerminologyCapabilities]
  SearchTerminologyCapabilities url(
    FhirUri value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('url', paramValue);
    return this;
  }

  /// a token search for [version] in the resource
  /// [TerminologyCapabilities]
  SearchTerminologyCapabilities version(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('version', paramValue);
    return this;
  }
}
