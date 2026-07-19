// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [Procedure] resource.
class SearchProcedure extends SearchResource {
  /// a token search for [code] in the resource
  /// [Procedure]
  SearchProcedure code(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('code', paramValue);
    return this;
  }

  /// a date search for [date] in the resource
  /// [Procedure]
  SearchProcedure date(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('date', paramValue);
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [Procedure]
  SearchProcedure identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a reference search for [patient] in the resource
  /// [Procedure]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchProcedure patient(FhirString value) {
    addParameterValue('patient', value.toString());
    return this;
  }

  /// a reference search for [encounter] in the resource
  /// [Procedure]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchProcedure encounter(FhirString value) {
    addParameterValue('encounter', value.toString());
    return this;
  }

  /// a reference search for [basedOn] in the resource
  /// [Procedure]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchProcedure basedOn(FhirString value) {
    addParameterValue('based-on', value.toString());
    return this;
  }

  /// a token search for [category] in the resource
  /// [Procedure]
  SearchProcedure category(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('category', paramValue);
    return this;
  }

  /// a reference search for [instantiatesCanonical] in the resource
  /// [Procedure]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchProcedure instantiatesCanonical(FhirString value) {
    addParameterValue('instantiates-canonical', value.toString());
    return this;
  }

  /// a uri search for [instantiatesUri] in the resource
  /// [Procedure]
  SearchProcedure instantiatesUri(FhirUri value) {
    addParameterValue('instantiates-uri', value.toString());
    return this;
  }

  /// a reference search for [location] in the resource
  /// [Procedure]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchProcedure location(FhirString value) {
    addParameterValue('location', value.toString());
    return this;
  }

  /// a reference search for [partOf] in the resource
  /// [Procedure]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchProcedure partOf(FhirString value) {
    addParameterValue('part-of', value.toString());
    return this;
  }

  /// a reference search for [performer] in the resource
  /// [Procedure]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchProcedure performer(FhirString value) {
    addParameterValue('performer', value.toString());
    return this;
  }

  /// a token search for [reasonCode] in the resource
  /// [Procedure]
  SearchProcedure reasonCode(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('reason-code', paramValue);
    return this;
  }

  /// a reference search for [reasonReference] in the resource
  /// [Procedure]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchProcedure reasonReference(FhirString value) {
    addParameterValue('reason-reference', value.toString());
    return this;
  }

  /// a token search for [status] in the resource
  /// [Procedure]
  SearchProcedure status(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('status', paramValue);
    return this;
  }

  /// a reference search for [subject] in the resource
  /// [Procedure]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchProcedure subject(FhirString value) {
    addParameterValue('subject', value.toString());
    return this;
  }
}
