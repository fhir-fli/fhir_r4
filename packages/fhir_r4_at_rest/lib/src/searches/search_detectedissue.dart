// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [DetectedIssue] resource.
class SearchDetectedIssue extends SearchResource {
  /// a token search for [identifier] in the resource
  /// [DetectedIssue]
  SearchDetectedIssue identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a reference search for [patient] in the resource
  /// [DetectedIssue]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchDetectedIssue patient(FhirString value) {
    addParameterValue('patient', value.toString());
    return this;
  }

  /// a reference search for [author] in the resource
  /// [DetectedIssue]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchDetectedIssue author(FhirString value) {
    addParameterValue('author', value.toString());
    return this;
  }

  /// a token search for [code] in the resource
  /// [DetectedIssue]
  SearchDetectedIssue code(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('code', paramValue);
    return this;
  }

  /// a date search for [identified] in the resource
  /// [DetectedIssue]
  SearchDetectedIssue identified(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('identified', paramValue);
    return this;
  }

  /// a reference search for [implicated] in the resource
  /// [DetectedIssue]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchDetectedIssue implicated(FhirString value) {
    addParameterValue('implicated', value.toString());
    return this;
  }
}
