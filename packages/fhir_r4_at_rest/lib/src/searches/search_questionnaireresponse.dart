// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [QuestionnaireResponse] resource.
class SearchQuestionnaireResponse extends SearchResource {
  /// a reference search for [author] in the resource
  /// [QuestionnaireResponse]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchQuestionnaireResponse author(FhirString value) {
    addParameterValue('author', value.toString());
    return this;
  }

  /// a date search for [authored] in the resource
  /// [QuestionnaireResponse]
  SearchQuestionnaireResponse authored(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('authored', paramValue);
    return this;
  }

  /// a reference search for [basedOn] in the resource
  /// [QuestionnaireResponse]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchQuestionnaireResponse basedOn(FhirString value) {
    addParameterValue('based-on', value.toString());
    return this;
  }

  /// a reference search for [encounter] in the resource
  /// [QuestionnaireResponse]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchQuestionnaireResponse encounter(FhirString value) {
    addParameterValue('encounter', value.toString());
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [QuestionnaireResponse]
  SearchQuestionnaireResponse identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a reference search for [partOf] in the resource
  /// [QuestionnaireResponse]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchQuestionnaireResponse partOf(FhirString value) {
    addParameterValue('part-of', value.toString());
    return this;
  }

  /// a reference search for [patient] in the resource
  /// [QuestionnaireResponse]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchQuestionnaireResponse patient(FhirString value) {
    addParameterValue('patient', value.toString());
    return this;
  }

  /// a reference search for [questionnaire] in the resource
  /// [QuestionnaireResponse]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchQuestionnaireResponse questionnaire(FhirString value) {
    addParameterValue('questionnaire', value.toString());
    return this;
  }

  /// a reference search for [source] in the resource
  /// [QuestionnaireResponse]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchQuestionnaireResponse source(FhirString value) {
    addParameterValue('source', value.toString());
    return this;
  }

  /// a token search for [status] in the resource
  /// [QuestionnaireResponse]
  SearchQuestionnaireResponse status(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('status', paramValue);
    return this;
  }

  /// a reference search for [subject] in the resource
  /// [QuestionnaireResponse]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchQuestionnaireResponse subject(FhirString value) {
    addParameterValue('subject', value.toString());
    return this;
  }
}
