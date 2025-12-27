// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [ImplementationGuide] resource.
class SearchImplementationGuide extends SearchResource {
  /// a token search for [context] in the resource
  /// [ImplementationGuide]
  SearchImplementationGuide context(
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
  /// [ImplementationGuide]
  SearchImplementationGuide contextQuantity(
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
  /// [ImplementationGuide]
  SearchImplementationGuide contextType(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['context_type'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a date search for [date] in the resource
  /// [ImplementationGuide]
  SearchImplementationGuide date(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['date'] =
        (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a string search for [description] in the resource
  /// [ImplementationGuide]
  SearchImplementationGuide description(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['description'] =
        (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a token search for [jurisdiction] in the resource
  /// [ImplementationGuide]
  SearchImplementationGuide jurisdiction(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['jurisdiction'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a string search for [name] in the resource
  /// [ImplementationGuide]
  SearchImplementationGuide name(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['name'] =
        (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a string search for [publisher] in the resource
  /// [ImplementationGuide]
  SearchImplementationGuide publisher(
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
  /// [ImplementationGuide]
  SearchImplementationGuide status(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['status'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a string search for [title] in the resource
  /// [ImplementationGuide]
  SearchImplementationGuide title(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['title'] =
        (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a uri search for [url] in the resource
  /// [ImplementationGuide]
  SearchImplementationGuide url(
    FhirUri value, {
    SearchModifier? modifier,
  }) {
    parameters['url'] =
        (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a token search for [version] in the resource
  /// [ImplementationGuide]
  SearchImplementationGuide version(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['version'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a token search for [experimental] in the resource
  /// [ImplementationGuide]
  SearchImplementationGuide experimental(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['experimental'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }
}
