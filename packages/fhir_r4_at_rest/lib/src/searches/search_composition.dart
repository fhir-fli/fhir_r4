// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [Composition] resource.
class SearchComposition extends SearchResource {
  /// a date search for [date] in the resource
  /// [Composition]
  SearchComposition date(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('date', paramValue);
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [Composition]
  SearchComposition identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a reference search for [patient] in the resource
  /// [Composition]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchComposition patient(FhirString value) {
    addParameterValue('patient', value.toString());
    return this;
  }

  /// a token search for [type] in the resource
  /// [Composition]
  SearchComposition type(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('type', paramValue);
    return this;
  }

  /// a reference search for [attester] in the resource
  /// [Composition]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchComposition attester(FhirString value) {
    addParameterValue('attester', value.toString());
    return this;
  }

  /// a reference search for [author] in the resource
  /// [Composition]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchComposition author(FhirString value) {
    addParameterValue('author', value.toString());
    return this;
  }

  /// a token search for [category] in the resource
  /// [Composition]
  SearchComposition category(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('category', paramValue);
    return this;
  }

  /// a token search for [confidentiality] in the resource
  /// [Composition]
  SearchComposition confidentiality(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('confidentiality', paramValue);
    return this;
  }

  /// a token search for [context] in the resource
  /// [Composition]
  SearchComposition context(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('context', paramValue);
    return this;
  }

  /// a reference search for [encounter] in the resource
  /// [Composition]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchComposition encounter(FhirString value) {
    addParameterValue('encounter', value.toString());
    return this;
  }

  /// a reference search for [entry] in the resource
  /// [Composition]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchComposition entry(FhirString value) {
    addParameterValue('entry', value.toString());
    return this;
  }

  /// a date search for [period] in the resource
  /// [Composition]
  SearchComposition period(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('period', paramValue);
    return this;
  }

  /// a token search for [relatedId] in the resource
  /// [Composition]
  SearchComposition relatedId(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('related-id', paramValue);
    return this;
  }

  /// a reference search for [relatedRef] in the resource
  /// [Composition]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchComposition relatedRef(FhirString value) {
    addParameterValue('related-ref', value.toString());
    return this;
  }

  /// a token search for [section] in the resource
  /// [Composition]
  SearchComposition section(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('section', paramValue);
    return this;
  }

  /// a token search for [status] in the resource
  /// [Composition]
  SearchComposition status(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('status', paramValue);
    return this;
  }

  /// a reference search for [subject] in the resource
  /// [Composition]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchComposition subject(FhirString value) {
    addParameterValue('subject', value.toString());
    return this;
  }

  /// a string search for [title] in the resource
  /// [Composition]
  SearchComposition title(FhirString value) {
    addParameterValue('title', value.toString());
    return this;
  }
}
