// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [RequestGroup] resource.
class SearchRequestGroup extends SearchResource {
  /// a reference search for [author] in the resource
  /// [RequestGroup]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchRequestGroup author(FhirString value) {
    addParameterValue('author', value.toString());
    return this;
  }

  /// a date search for [authored] in the resource
  /// [RequestGroup]
  SearchRequestGroup authored(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('authored', paramValue);
    return this;
  }

  /// a token search for [code] in the resource
  /// [RequestGroup]
  SearchRequestGroup code(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('code', paramValue);
    return this;
  }

  /// a reference search for [encounter] in the resource
  /// [RequestGroup]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchRequestGroup encounter(FhirString value) {
    addParameterValue('encounter', value.toString());
    return this;
  }

  /// a token search for [groupIdentifier] in the resource
  /// [RequestGroup]
  SearchRequestGroup groupIdentifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('group-identifier', paramValue);
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [RequestGroup]
  SearchRequestGroup identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a reference search for [instantiatesCanonical] in the resource
  /// [RequestGroup]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchRequestGroup instantiatesCanonical(FhirString value) {
    addParameterValue('instantiates-canonical', value.toString());
    return this;
  }

  /// a uri search for [instantiatesUri] in the resource
  /// [RequestGroup]
  SearchRequestGroup instantiatesUri(FhirUri value) {
    addParameterValue('instantiates-uri', value.toString());
    return this;
  }

  /// a token search for [intent] in the resource
  /// [RequestGroup]
  SearchRequestGroup intent(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('intent', paramValue);
    return this;
  }

  /// a reference search for [participant] in the resource
  /// [RequestGroup]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchRequestGroup participant(FhirString value) {
    addParameterValue('participant', value.toString());
    return this;
  }

  /// a reference search for [patient] in the resource
  /// [RequestGroup]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchRequestGroup patient(FhirString value) {
    addParameterValue('patient', value.toString());
    return this;
  }

  /// a token search for [priority] in the resource
  /// [RequestGroup]
  SearchRequestGroup priority(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('priority', paramValue);
    return this;
  }

  /// a token search for [status] in the resource
  /// [RequestGroup]
  SearchRequestGroup status(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('status', paramValue);
    return this;
  }

  /// a reference search for [subject] in the resource
  /// [RequestGroup]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchRequestGroup subject(FhirString value) {
    addParameterValue('subject', value.toString());
    return this;
  }
}
