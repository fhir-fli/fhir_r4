// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [List] resource.
class SearchList extends SearchResource {
  /// a token search for [code] in the resource
  /// [List]
  SearchList code(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('code', paramValue);
    return this;
  }

  /// a date search for [date] in the resource
  /// [List]
  SearchList date(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('date', paramValue);
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [List]
  SearchList identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a reference search for [patient] in the resource
  /// [List]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchList patient(FhirString value) {
    addParameterValue('patient', value.toString());
    return this;
  }

  /// a reference search for [encounter] in the resource
  /// [List]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchList encounter(FhirString value) {
    addParameterValue('encounter', value.toString());
    return this;
  }

  /// a token search for [emptyReason] in the resource
  /// [List]
  SearchList emptyReason(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('empty-reason', paramValue);
    return this;
  }

  /// a reference search for [item] in the resource
  /// [List]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchList item(FhirString value) {
    addParameterValue('item', value.toString());
    return this;
  }

  /// a string search for [notes] in the resource
  /// [List]
  SearchList notes(FhirString value) {
    addParameterValue('notes', value.toString());
    return this;
  }

  /// a reference search for [source] in the resource
  /// [List]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchList source(FhirString value) {
    addParameterValue('source', value.toString());
    return this;
  }

  /// a token search for [status] in the resource
  /// [List]
  SearchList status(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('status', paramValue);
    return this;
  }

  /// a reference search for [subject] in the resource
  /// [List]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchList subject(FhirString value) {
    addParameterValue('subject', value.toString());
    return this;
  }

  /// a string search for [title] in the resource
  /// [List]
  SearchList title(FhirString value) {
    addParameterValue('title', value.toString());
    return this;
  }
}
