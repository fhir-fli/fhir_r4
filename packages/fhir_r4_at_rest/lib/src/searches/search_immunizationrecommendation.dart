// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';

/// A class to build query parameters for RESTful requests for
/// the [ImmunizationRecommendation] resource.
class SearchImmunizationRecommendation extends SearchResource {
  /// a date search for [date] in the resource
  /// [ImmunizationRecommendation]
  SearchImmunizationRecommendation date(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}date'] = value.toString();
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [ImmunizationRecommendation]
  SearchImmunizationRecommendation identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [status] in the resource
  /// [ImmunizationRecommendation]
  SearchImmunizationRecommendation status(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [targetDisease] in the resource
  /// [ImmunizationRecommendation]
  SearchImmunizationRecommendation targetDisease(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}target_disease'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [vaccineType] in the resource
  /// [ImmunizationRecommendation]
  SearchImmunizationRecommendation vaccineType(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}vaccine_type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }
}
