// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [Basic] resource.
class SearchBasic extends SearchResource {
  /// a reference search for [author] in the resource
  /// [Basic]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchBasic author(FhirString value) {
    addParameterValue('author', value.toString());
    return this;
  }

  /// a token search for [code] in the resource
  /// [Basic]
  SearchBasic code(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('code', paramValue);
    return this;
  }

  /// a date search for [created] in the resource
  /// [Basic]
  SearchBasic created(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('created', paramValue);
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [Basic]
  SearchBasic identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a reference search for [patient] in the resource
  /// [Basic]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchBasic patient(FhirString value) {
    addParameterValue('patient', value.toString());
    return this;
  }

  /// a reference search for [subject] in the resource
  /// [Basic]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchBasic subject(FhirString value) {
    addParameterValue('subject', value.toString());
    return this;
  }
}
