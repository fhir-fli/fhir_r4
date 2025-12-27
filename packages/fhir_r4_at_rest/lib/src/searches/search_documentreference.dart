// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [DocumentReference] resource.
class SearchDocumentReference extends SearchResource {
  /// a token search for [identifier] in the resource
  /// [DocumentReference]
  SearchDocumentReference identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['identifier'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a token search for [type] in the resource
  /// [DocumentReference]
  SearchDocumentReference type(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['type'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a token search for [category] in the resource
  /// [DocumentReference]
  SearchDocumentReference category(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['category'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a token search for [contenttype] in the resource
  /// [DocumentReference]
  SearchDocumentReference contenttype(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['contenttype'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a date search for [date] in the resource
  /// [DocumentReference]
  SearchDocumentReference date(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['date'] =
        (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a string search for [description] in the resource
  /// [DocumentReference]
  SearchDocumentReference description(
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

  /// a token search for [event] in the resource
  /// [DocumentReference]
  SearchDocumentReference event(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['event'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a token search for [facility] in the resource
  /// [DocumentReference]
  SearchDocumentReference facility(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['facility'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a token search for [format] in the resource
  /// [DocumentReference]
  SearchDocumentReference format(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['format'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a token search for [language] in the resource
  /// [DocumentReference]
  SearchDocumentReference language(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['language'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a uri search for [location] in the resource
  /// [DocumentReference]
  SearchDocumentReference location(
    FhirUri value, {
    SearchModifier? modifier,
  }) {
    parameters['location'] =
        (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a date search for [period] in the resource
  /// [DocumentReference]
  SearchDocumentReference period(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['period'] =
        (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a token search for [relation] in the resource
  /// [DocumentReference]
  SearchDocumentReference relation(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['relation'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a token search for [securityLabel] in the resource
  /// [DocumentReference]
  SearchDocumentReference securityLabel(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['security_label'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a token search for [setting] in the resource
  /// [DocumentReference]
  SearchDocumentReference setting(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['setting'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a token search for [status] in the resource
  /// [DocumentReference]
  SearchDocumentReference status(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['status'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }
}
