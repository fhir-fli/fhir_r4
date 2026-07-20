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
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a reference search for [patient] in the resource
  /// [DocumentReference]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchDocumentReference patient(FhirString value) {
    addParameterValue('patient', value.toString());
    return this;
  }

  /// a token search for [type] in the resource
  /// [DocumentReference]
  SearchDocumentReference type(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('type', paramValue);
    return this;
  }

  /// a reference search for [encounter] in the resource
  /// [DocumentReference]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchDocumentReference encounter(FhirString value) {
    addParameterValue('encounter', value.toString());
    return this;
  }

  /// a reference search for [authenticator] in the resource
  /// [DocumentReference]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchDocumentReference authenticator(FhirString value) {
    addParameterValue('authenticator', value.toString());
    return this;
  }

  /// a reference search for [author] in the resource
  /// [DocumentReference]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchDocumentReference author(FhirString value) {
    addParameterValue('author', value.toString());
    return this;
  }

  /// a token search for [category] in the resource
  /// [DocumentReference]
  SearchDocumentReference category(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('category', paramValue);
    return this;
  }

  /// a token search for [contenttype] in the resource
  /// [DocumentReference]
  SearchDocumentReference contenttype(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('contenttype', paramValue);
    return this;
  }

  /// a reference search for [custodian] in the resource
  /// [DocumentReference]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchDocumentReference custodian(FhirString value) {
    addParameterValue('custodian', value.toString());
    return this;
  }

  /// a date search for [date] in the resource
  /// [DocumentReference]
  SearchDocumentReference date(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('date', paramValue);
    return this;
  }

  /// a string search for [description] in the resource
  /// [DocumentReference]
  SearchDocumentReference description(FhirString value) {
    addParameterValue('description', value.toString());
    return this;
  }

  /// a token search for [event] in the resource
  /// [DocumentReference]
  SearchDocumentReference event(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('event', paramValue);
    return this;
  }

  /// a token search for [facility] in the resource
  /// [DocumentReference]
  SearchDocumentReference facility(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('facility', paramValue);
    return this;
  }

  /// a token search for [format] in the resource
  /// [DocumentReference]
  SearchDocumentReference format(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('format', paramValue);
    return this;
  }

  /// a token search for [language] in the resource
  /// [DocumentReference]
  SearchDocumentReference language(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('language', paramValue);
    return this;
  }

  /// a uri search for [location] in the resource
  /// [DocumentReference]
  SearchDocumentReference location(FhirUri value) {
    addParameterValue('location', value.toString());
    return this;
  }

  /// a date search for [period] in the resource
  /// [DocumentReference]
  SearchDocumentReference period(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('period', paramValue);
    return this;
  }

  /// a reference search for [related] in the resource
  /// [DocumentReference]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchDocumentReference related(FhirString value) {
    addParameterValue('related', value.toString());
    return this;
  }

  /// a reference search for [relatesto] in the resource
  /// [DocumentReference]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchDocumentReference relatesto(FhirString value) {
    addParameterValue('relatesto', value.toString());
    return this;
  }

  /// a token search for [relation] in the resource
  /// [DocumentReference]
  SearchDocumentReference relation(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('relation', paramValue);
    return this;
  }

  /// a token search for [securityLabel] in the resource
  /// [DocumentReference]
  SearchDocumentReference securityLabel(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('security-label', paramValue);
    return this;
  }

  /// a token search for [setting] in the resource
  /// [DocumentReference]
  SearchDocumentReference setting(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('setting', paramValue);
    return this;
  }

  /// a token search for [status] in the resource
  /// [DocumentReference]
  SearchDocumentReference status(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('status', paramValue);
    return this;
  }

  /// a reference search for [subject] in the resource
  /// [DocumentReference]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchDocumentReference subject(FhirString value) {
    addParameterValue('subject', value.toString());
    return this;
  }
}
