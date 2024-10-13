// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';

/// A class to build query parameters for RESTful requests for the RiskAssessment resource.
class SearchRiskAssessment extends SearchResource {
  /// a date search for [date] in the reosurce RiskAssessment
  SearchRiskAssessment date(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}date'] = value.toString();
    return this;
  }

  /// a token search for [identifier] in the reosurce RiskAssessment
  SearchRiskAssessment identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [method] in the reosurce RiskAssessment
  SearchRiskAssessment method(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}method'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a numerical search for [probability] in the reosurce RiskAssessment
  SearchRiskAssessment probability(
    FhirDecimal value, {
    FhirString? unit,
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    if (modifier != null &&
        !['gt', 'lt', 'ge', 'le', 'ap'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for number type');
    }
    parameters['${modifier != null ? '$modifier' : ''}probability'] =
        '$value|${system?.toString() ?? ''}|${unit?.toString() ?? ''}';
    return this;
  }

  /// a token search for [risk] in the reosurce RiskAssessment
  SearchRiskAssessment risk(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}risk'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }
}
