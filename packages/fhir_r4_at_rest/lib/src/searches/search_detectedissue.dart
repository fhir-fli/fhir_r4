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
    SearchModifier? modifier,
  }) {
    parameters['identifier'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [code] in the resource
  /// [DetectedIssue]
  SearchDetectedIssue code(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['code'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a date search for [identified] in the resource
  /// [DetectedIssue]
  SearchDetectedIssue identified(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['identified'] =
        (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }
}
