// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [CommunicationRequest] resource.
class SearchCommunicationRequest extends SearchResource {
  /// a date search for [authored] in the resource
  /// [CommunicationRequest]
  SearchCommunicationRequest authored(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['authored'] =
        (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a token search for [category] in the resource
  /// [CommunicationRequest]
  SearchCommunicationRequest category(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['category'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a token search for [groupIdentifier] in the resource
  /// [CommunicationRequest]
  SearchCommunicationRequest groupIdentifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['group_identifier'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [CommunicationRequest]
  SearchCommunicationRequest identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['identifier'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a token search for [medium] in the resource
  /// [CommunicationRequest]
  SearchCommunicationRequest medium(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['medium'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a date search for [occurrence] in the resource
  /// [CommunicationRequest]
  SearchCommunicationRequest occurrence(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['occurrence'] =
        (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a token search for [priority] in the resource
  /// [CommunicationRequest]
  SearchCommunicationRequest priority(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['priority'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a token search for [status] in the resource
  /// [CommunicationRequest]
  SearchCommunicationRequest status(
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
