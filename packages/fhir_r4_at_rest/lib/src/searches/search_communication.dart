// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [Communication] resource.
class SearchCommunication extends SearchResource {
  /// a token search for [category] in the resource
  /// [Communication]
  SearchCommunication category(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['category'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [Communication]
  SearchCommunication identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['identifier'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a uri search for [instantiatesUri] in the resource
  /// [Communication]
  SearchCommunication instantiatesUri(
    FhirUri value, {
    SearchModifier? modifier,
  }) {
    parameters['instantiates_uri'] =
        (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a token search for [medium] in the resource
  /// [Communication]
  SearchCommunication medium(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['medium'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a date search for [received] in the resource
  /// [Communication]
  SearchCommunication received(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['received'] =
        (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a date search for [sent] in the resource
  /// [Communication]
  SearchCommunication sent(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['sent'] =
        (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a token search for [status] in the resource
  /// [Communication]
  SearchCommunication status(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['status'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }
}
