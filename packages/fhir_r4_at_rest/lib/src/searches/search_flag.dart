// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [Flag] resource.
class SearchFlag extends SearchResource {
  /// a date search for [date] in the resource
  /// [Flag]
  SearchFlag date(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('date', paramValue);
    return this;
  }

  /// a reference search for [patient] in the resource
  /// [Flag]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchFlag patient(FhirString value) {
    addParameterValue('patient', value.toString());
    return this;
  }

  /// a reference search for [encounter] in the resource
  /// [Flag]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchFlag encounter(FhirString value) {
    addParameterValue('encounter', value.toString());
    return this;
  }

  /// a reference search for [author] in the resource
  /// [Flag]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchFlag author(FhirString value) {
    addParameterValue('author', value.toString());
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [Flag]
  SearchFlag identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a reference search for [subject] in the resource
  /// [Flag]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchFlag subject(FhirString value) {
    addParameterValue('subject', value.toString());
    return this;
  }
}
