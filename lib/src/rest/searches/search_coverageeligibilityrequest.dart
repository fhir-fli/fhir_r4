// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';

/// A class to build query parameters for RESTful requests for
/// the [CoverageEligibilityRequest] resource.
class SearchCoverageEligibilityRequest extends SearchResource {
  /// a date search for [created] in the resource
  /// [CoverageEligibilityRequest]
  SearchCoverageEligibilityRequest created(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}created'] =
        value.toString();
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [CoverageEligibilityRequest]
  SearchCoverageEligibilityRequest identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [status] in the resource
  /// [CoverageEligibilityRequest]
  SearchCoverageEligibilityRequest status(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }
}
