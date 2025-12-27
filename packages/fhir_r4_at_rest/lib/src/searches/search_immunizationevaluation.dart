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
    parameters['date'] =
        (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a token search for [doseStatus] in the resource
  /// [ImmunizationEvaluation]
  SearchImmunizationEvaluation doseStatus(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['dose_status'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [ImmunizationEvaluation]
  SearchImmunizationEvaluation identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['identifier'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a token search for [status] in the resource
  /// [ImmunizationEvaluation]
  SearchImmunizationEvaluation status(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['status'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a token search for [targetDisease] in the resource
  /// [ImmunizationEvaluation]
  SearchImmunizationEvaluation targetDisease(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['target_disease'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }
}
