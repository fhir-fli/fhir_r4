// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';

/// A class to build query parameters for RESTful requests for
/// the [CommunicationRequest] resource.
class SearchCommunicationRequest extends SearchResource {
  /// a date search for [authored] in the resource
  /// [CommunicationRequest]
  SearchCommunicationRequest authored(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}authored'] =
        value.toString();
    return this;
  }

  /// a token search for [category] in the resource
  /// [CommunicationRequest]
  SearchCommunicationRequest category(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}category'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [groupIdentifier] in the resource
  /// [CommunicationRequest]
  SearchCommunicationRequest groupIdentifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}group_identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [CommunicationRequest]
  SearchCommunicationRequest identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [medium] in the resource
  /// [CommunicationRequest]
  SearchCommunicationRequest medium(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}medium'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a date search for [occurrence] in the resource
  /// [CommunicationRequest]
  SearchCommunicationRequest occurrence(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}occurrence'] =
        value.toString();
    return this;
  }

  /// a token search for [priority] in the resource
  /// [CommunicationRequest]
  SearchCommunicationRequest priority(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}priority'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [status] in the resource
  /// [CommunicationRequest]
  SearchCommunicationRequest status(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }
}
