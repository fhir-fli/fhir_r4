// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [MessageHeader] resource.
class SearchMessageHeader extends SearchResource {
  /// a token search for [code] in the resource
  /// [MessageHeader]
  SearchMessageHeader code(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('code', paramValue);
    return this;
  }

  /// a string search for [destination] in the resource
  /// [MessageHeader]
  SearchMessageHeader destination(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('destination', paramValue);
    return this;
  }

  /// a uri search for [destinationUri] in the resource
  /// [MessageHeader]
  SearchMessageHeader destinationUri(
    FhirUri value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('destination_uri', paramValue);
    return this;
  }

  /// a token search for [event] in the resource
  /// [MessageHeader]
  SearchMessageHeader event(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('event', paramValue);
    return this;
  }

  /// a token search for [responseId] in the resource
  /// [MessageHeader]
  SearchMessageHeader responseId(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('response_id', paramValue);
    return this;
  }

  /// a string search for [source] in the resource
  /// [MessageHeader]
  SearchMessageHeader source(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('source', paramValue);
    return this;
  }

  /// a uri search for [sourceUri] in the resource
  /// [MessageHeader]
  SearchMessageHeader sourceUri(
    FhirUri value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('source_uri', paramValue);
    return this;
  }
}
