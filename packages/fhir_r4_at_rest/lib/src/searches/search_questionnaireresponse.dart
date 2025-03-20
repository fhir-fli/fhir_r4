// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [QuestionnaireResponse] resource.
class SearchQuestionnaireResponse extends SearchResource {
  /// a date search for [authored] in the resource
  /// [QuestionnaireResponse]
  SearchQuestionnaireResponse authored(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}authored'] =
        value.toString();
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [QuestionnaireResponse]
  SearchQuestionnaireResponse identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [status] in the resource
  /// [QuestionnaireResponse]
  SearchQuestionnaireResponse status(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }
}
