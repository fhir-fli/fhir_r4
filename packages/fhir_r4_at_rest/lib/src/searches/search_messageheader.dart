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
    parameters['${modifier != null ? '$modifier' : ''}code'] =
        system != null ? '$system|$value' : '$value';
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
    parameters['${modifier != null ? '$modifier' : ''}destination'] =
        value.toString();
    return this;
  }

  /// a uri search for [destinationUri] in the resource
  /// [MessageHeader]
  SearchMessageHeader destinationUri(
    FhirUri value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}destination_uri'] =
        value.toString();
    return this;
  }

  /// a token search for [event] in the resource
  /// [MessageHeader]
  SearchMessageHeader event(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}event'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [responseId] in the resource
  /// [MessageHeader]
  SearchMessageHeader responseId(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}response_id'] =
        system != null ? '$system|$value' : '$value';
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
    parameters['${modifier != null ? '$modifier' : ''}source'] =
        value.toString();
    return this;
  }

  /// a uri search for [sourceUri] in the resource
  /// [MessageHeader]
  SearchMessageHeader sourceUri(
    FhirUri value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}source_uri'] =
        value.toString();
    return this;
  }
}
