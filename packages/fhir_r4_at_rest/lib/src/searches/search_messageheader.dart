// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [MessageHeader] resource.
class SearchMessageHeader extends SearchResource {
  /// a reference search for [author] in the resource
  /// [MessageHeader]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchMessageHeader author(FhirString value) {
    addParameterValue('author', value.toString());
    return this;
  }

  /// a token search for [code] in the resource
  /// [MessageHeader]
  SearchMessageHeader code(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('code', paramValue);
    return this;
  }

  /// a string search for [destination] in the resource
  /// [MessageHeader]
  SearchMessageHeader destination(FhirString value) {
    addParameterValue('destination', value.toString());
    return this;
  }

  /// a uri search for [destinationUri] in the resource
  /// [MessageHeader]
  SearchMessageHeader destinationUri(FhirUri value) {
    addParameterValue('destination-uri', value.toString());
    return this;
  }

  /// a reference search for [enterer] in the resource
  /// [MessageHeader]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchMessageHeader enterer(FhirString value) {
    addParameterValue('enterer', value.toString());
    return this;
  }

  /// a token search for [event] in the resource
  /// [MessageHeader]
  SearchMessageHeader event(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('event', paramValue);
    return this;
  }

  /// a reference search for [focus] in the resource
  /// [MessageHeader]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchMessageHeader focus(FhirString value) {
    addParameterValue('focus', value.toString());
    return this;
  }

  /// a reference search for [receiver] in the resource
  /// [MessageHeader]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchMessageHeader receiver(FhirString value) {
    addParameterValue('receiver', value.toString());
    return this;
  }

  /// a token search for [responseId] in the resource
  /// [MessageHeader]
  SearchMessageHeader responseId(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('response-id', paramValue);
    return this;
  }

  /// a reference search for [responsible] in the resource
  /// [MessageHeader]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchMessageHeader responsible(FhirString value) {
    addParameterValue('responsible', value.toString());
    return this;
  }

  /// a reference search for [sender] in the resource
  /// [MessageHeader]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchMessageHeader sender(FhirString value) {
    addParameterValue('sender', value.toString());
    return this;
  }

  /// a string search for [source] in the resource
  /// [MessageHeader]
  SearchMessageHeader source(FhirString value) {
    addParameterValue('source', value.toString());
    return this;
  }

  /// a uri search for [sourceUri] in the resource
  /// [MessageHeader]
  SearchMessageHeader sourceUri(FhirUri value) {
    addParameterValue('source-uri', value.toString());
    return this;
  }

  /// a reference search for [target] in the resource
  /// [MessageHeader]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchMessageHeader target(FhirString value) {
    addParameterValue('target', value.toString());
    return this;
  }
}
