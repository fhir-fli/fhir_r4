// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [Contract] resource.
class SearchContract extends SearchResource {
  /// a reference search for [authority] in the resource
  /// [Contract]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchContract authority(FhirString value) {
    addParameterValue('authority', value.toString());
    return this;
  }

  /// a reference search for [domain] in the resource
  /// [Contract]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchContract domain(FhirString value) {
    addParameterValue('domain', value.toString());
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [Contract]
  SearchContract identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a uri search for [instantiates] in the resource
  /// [Contract]
  SearchContract instantiates(FhirUri value) {
    addParameterValue('instantiates', value.toString());
    return this;
  }

  /// a date search for [issued] in the resource
  /// [Contract]
  SearchContract issued(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('issued', paramValue);
    return this;
  }

  /// a reference search for [patient] in the resource
  /// [Contract]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchContract patient(FhirString value) {
    addParameterValue('patient', value.toString());
    return this;
  }

  /// a reference search for [signer] in the resource
  /// [Contract]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchContract signer(FhirString value) {
    addParameterValue('signer', value.toString());
    return this;
  }

  /// a token search for [status] in the resource
  /// [Contract]
  SearchContract status(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('status', paramValue);
    return this;
  }

  /// a reference search for [subject] in the resource
  /// [Contract]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchContract subject(FhirString value) {
    addParameterValue('subject', value.toString());
    return this;
  }

  /// a uri search for [url] in the resource
  /// [Contract]
  SearchContract url(FhirUri value) {
    addParameterValue('url', value.toString());
    return this;
  }
}
