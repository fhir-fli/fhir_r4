// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [ExplanationOfBenefit] resource.
class SearchExplanationOfBenefit extends SearchResource {
  /// a date search for [created] in the resource
  /// [ExplanationOfBenefit]
  SearchExplanationOfBenefit created(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('created', paramValue);
    return this;
  }

  /// a string search for [disposition] in the resource
  /// [ExplanationOfBenefit]
  SearchExplanationOfBenefit disposition(FhirString value) {
    addParameterValue('disposition', value.toString());
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [ExplanationOfBenefit]
  SearchExplanationOfBenefit identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a token search for [status] in the resource
  /// [ExplanationOfBenefit]
  SearchExplanationOfBenefit status(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('status', paramValue);
    return this;
  }
}
