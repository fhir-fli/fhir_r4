// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [MeasureReport] resource.
class SearchMeasureReport extends SearchResource {
  /// a date search for [date] in the resource
  /// [MeasureReport]
  SearchMeasureReport date(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('date', paramValue);
    return this;
  }

  /// a reference search for [evaluatedResource] in the resource
  /// [MeasureReport]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchMeasureReport evaluatedResource(FhirString value) {
    addParameterValue('evaluated-resource', value.toString());
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [MeasureReport]
  SearchMeasureReport identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a reference search for [measure] in the resource
  /// [MeasureReport]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchMeasureReport measure(FhirString value) {
    addParameterValue('measure', value.toString());
    return this;
  }

  /// a reference search for [patient] in the resource
  /// [MeasureReport]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchMeasureReport patient(FhirString value) {
    addParameterValue('patient', value.toString());
    return this;
  }

  /// a date search for [period] in the resource
  /// [MeasureReport]
  SearchMeasureReport period(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('period', paramValue);
    return this;
  }

  /// a reference search for [reporter] in the resource
  /// [MeasureReport]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchMeasureReport reporter(FhirString value) {
    addParameterValue('reporter', value.toString());
    return this;
  }

  /// a token search for [status] in the resource
  /// [MeasureReport]
  SearchMeasureReport status(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('status', paramValue);
    return this;
  }

  /// a reference search for [subject] in the resource
  /// [MeasureReport]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchMeasureReport subject(FhirString value) {
    addParameterValue('subject', value.toString());
    return this;
  }
}
