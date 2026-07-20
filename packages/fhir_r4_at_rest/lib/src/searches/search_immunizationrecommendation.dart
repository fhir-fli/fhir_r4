// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [ImmunizationRecommendation] resource.
class SearchImmunizationRecommendation extends SearchResource {
  /// a date search for [date] in the resource
  /// [ImmunizationRecommendation]
  SearchImmunizationRecommendation date(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('date', paramValue);
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [ImmunizationRecommendation]
  SearchImmunizationRecommendation identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a reference search for [information] in the resource
  /// [ImmunizationRecommendation]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchImmunizationRecommendation information(FhirString value) {
    addParameterValue('information', value.toString());
    return this;
  }

  /// a reference search for [patient] in the resource
  /// [ImmunizationRecommendation]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchImmunizationRecommendation patient(FhirString value) {
    addParameterValue('patient', value.toString());
    return this;
  }

  /// a token search for [status] in the resource
  /// [ImmunizationRecommendation]
  SearchImmunizationRecommendation status(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('status', paramValue);
    return this;
  }

  /// a reference search for [support] in the resource
  /// [ImmunizationRecommendation]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchImmunizationRecommendation support(FhirString value) {
    addParameterValue('support', value.toString());
    return this;
  }

  /// a token search for [targetDisease] in the resource
  /// [ImmunizationRecommendation]
  SearchImmunizationRecommendation targetDisease(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('target-disease', paramValue);
    return this;
  }

  /// a token search for [vaccineType] in the resource
  /// [ImmunizationRecommendation]
  SearchImmunizationRecommendation vaccineType(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('vaccine-type', paramValue);
    return this;
  }
}
