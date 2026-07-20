// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [ImmunizationEvaluation] resource.
class SearchImmunizationEvaluation extends SearchResource {
  /// a date search for [date] in the resource
  /// [ImmunizationEvaluation]
  SearchImmunizationEvaluation date(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('date', paramValue);
    return this;
  }

  /// a token search for [doseStatus] in the resource
  /// [ImmunizationEvaluation]
  SearchImmunizationEvaluation doseStatus(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('dose-status', paramValue);
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [ImmunizationEvaluation]
  SearchImmunizationEvaluation identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a reference search for [immunizationEvent] in the resource
  /// [ImmunizationEvaluation]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchImmunizationEvaluation immunizationEvent(FhirString value) {
    addParameterValue('immunization-event', value.toString());
    return this;
  }

  /// a reference search for [patient] in the resource
  /// [ImmunizationEvaluation]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchImmunizationEvaluation patient(FhirString value) {
    addParameterValue('patient', value.toString());
    return this;
  }

  /// a token search for [status] in the resource
  /// [ImmunizationEvaluation]
  SearchImmunizationEvaluation status(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('status', paramValue);
    return this;
  }

  /// a token search for [targetDisease] in the resource
  /// [ImmunizationEvaluation]
  SearchImmunizationEvaluation targetDisease(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('target-disease', paramValue);
    return this;
  }
}
