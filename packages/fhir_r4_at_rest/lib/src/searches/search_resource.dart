// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [Resource] resource.
class SearchResource extends RestfulParameters {
  /// a string search for [content] in the resource
  /// [Resource]
  SearchResource content(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['${modifier != null ? '$modifier' : ''}_content'] =
        value.toString();
    return this;
  }

  /// a token search for [filter] in the resource
  /// [Resource]
  SearchResource filter(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}_filter'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a string search for [has] in the resource
  /// [Resource]
  SearchResource has(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['${modifier != null ? '$modifier' : ''}_has'] = value.toString();
    return this;
  }

  /// a token search for [id] in the resource
  /// [Resource]
  SearchResource id(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}_id'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a date search for [lastUpdated] in the resource
  /// [Resource]
  SearchResource lastUpdated(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}_lastUpdated'] =
        value.toString();
    return this;
  }

  /// a string search for [list] in the resource
  /// [Resource]
  SearchResource list(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['${modifier != null ? '$modifier' : ''}_list'] =
        value.toString();
    return this;
  }

  /// a uri search for [profile] in the resource
  /// [Resource]
  SearchResource profile(
    FhirUri value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}_profile'] =
        value.toString();
    return this;
  }

  /// a token search for [query] in the resource
  /// [Resource]
  SearchResource query(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}_query'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [security] in the resource
  /// [Resource]
  SearchResource security(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}_security'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a uri search for [resourceSource] in the resource
  /// [Resource]
  SearchResource resourceSource(
    FhirUri value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}_source'] =
        value.toString();
    return this;
  }

  /// a token search for [tag] in the resource
  /// [Resource]
  SearchResource tag(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}_tag'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a string search for [text] in the resource
  /// [Resource]
  SearchResource text(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['${modifier != null ? '$modifier' : ''}_text'] =
        value.toString();
    return this;
  }

  /// a token search for [resourceType] in the resource
  /// [Resource]
  SearchResource resourceType(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}_type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }
}
