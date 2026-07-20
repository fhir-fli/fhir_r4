// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [RiskAssessment] resource.
class SearchRiskAssessment extends SearchResource {
  /// a date search for [date] in the resource
  /// [RiskAssessment]
  SearchRiskAssessment date(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('date', paramValue);
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [RiskAssessment]
  SearchRiskAssessment identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a reference search for [patient] in the resource
  /// [RiskAssessment]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchRiskAssessment patient(FhirString value) {
    addParameterValue('patient', value.toString());
    return this;
  }

  /// a reference search for [encounter] in the resource
  /// [RiskAssessment]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchRiskAssessment encounter(FhirString value) {
    addParameterValue('encounter', value.toString());
    return this;
  }

  /// a reference search for [condition] in the resource
  /// [RiskAssessment]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchRiskAssessment condition(FhirString value) {
    addParameterValue('condition', value.toString());
    return this;
  }

  /// a token search for [method] in the resource
  /// [RiskAssessment]
  SearchRiskAssessment method(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('method', paramValue);
    return this;
  }

  /// a reference search for [performer] in the resource
  /// [RiskAssessment]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchRiskAssessment performer(FhirString value) {
    addParameterValue('performer', value.toString());
    return this;
  }

  /// a numerical search for [probability] in the resource
  /// [RiskAssessment]
  SearchRiskAssessment probability(
    FhirDecimal value, {
    SearchModifier? modifier,
  }) {
    final paramValue = modifier != null ? '$modifier$value' : value.toString();
    addParameterValue('probability', paramValue);
    return this;
  }

  /// a token search for [risk] in the resource
  /// [RiskAssessment]
  SearchRiskAssessment risk(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('risk', paramValue);
    return this;
  }

  /// a reference search for [subject] in the resource
  /// [RiskAssessment]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchRiskAssessment subject(FhirString value) {
    addParameterValue('subject', value.toString());
    return this;
  }
}
