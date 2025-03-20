// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [RegulatedAuthorization] resource.
class SearchRegulatedAuthorization extends SearchResource {
  /// a token search for [case_] in the resource
  /// [RegulatedAuthorization]
  SearchRegulatedAuthorization case_(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}case'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [caseType] in the resource
  /// [RegulatedAuthorization]
  SearchRegulatedAuthorization caseType(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}case_type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [RegulatedAuthorization]
  SearchRegulatedAuthorization identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [region] in the resource
  /// [RegulatedAuthorization]
  SearchRegulatedAuthorization region(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}region'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [status] in the resource
  /// [RegulatedAuthorization]
  SearchRegulatedAuthorization status(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }
}
