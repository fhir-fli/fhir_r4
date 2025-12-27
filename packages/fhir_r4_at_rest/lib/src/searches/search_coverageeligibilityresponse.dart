// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [CoverageEligibilityResponse] resource.
class SearchCoverageEligibilityResponse extends SearchResource {
  /// a date search for [created] in the resource
  /// [CoverageEligibilityResponse]
  SearchCoverageEligibilityResponse created(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['created'] =
        (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a string search for [disposition] in the resource
  /// [CoverageEligibilityResponse]
  SearchCoverageEligibilityResponse disposition(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['disposition'] =
        (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [CoverageEligibilityResponse]
  SearchCoverageEligibilityResponse identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['identifier'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a token search for [outcome] in the resource
  /// [CoverageEligibilityResponse]
  SearchCoverageEligibilityResponse outcome(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['outcome'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a token search for [status] in the resource
  /// [CoverageEligibilityResponse]
  SearchCoverageEligibilityResponse status(
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
