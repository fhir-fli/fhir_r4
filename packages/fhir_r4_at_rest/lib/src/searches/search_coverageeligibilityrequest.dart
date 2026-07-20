// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [CoverageEligibilityRequest] resource.
class SearchCoverageEligibilityRequest extends SearchResource {
  /// a date search for [created] in the resource
  /// [CoverageEligibilityRequest]
  SearchCoverageEligibilityRequest created(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('created', paramValue);
    return this;
  }

  /// a reference search for [enterer] in the resource
  /// [CoverageEligibilityRequest]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchCoverageEligibilityRequest enterer(FhirString value) {
    addParameterValue('enterer', value.toString());
    return this;
  }

  /// a reference search for [facility] in the resource
  /// [CoverageEligibilityRequest]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchCoverageEligibilityRequest facility(FhirString value) {
    addParameterValue('facility', value.toString());
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [CoverageEligibilityRequest]
  SearchCoverageEligibilityRequest identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a reference search for [patient] in the resource
  /// [CoverageEligibilityRequest]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchCoverageEligibilityRequest patient(FhirString value) {
    addParameterValue('patient', value.toString());
    return this;
  }

  /// a reference search for [provider] in the resource
  /// [CoverageEligibilityRequest]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchCoverageEligibilityRequest provider(FhirString value) {
    addParameterValue('provider', value.toString());
    return this;
  }

  /// a token search for [status] in the resource
  /// [CoverageEligibilityRequest]
  SearchCoverageEligibilityRequest status(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('status', paramValue);
    return this;
  }
}
