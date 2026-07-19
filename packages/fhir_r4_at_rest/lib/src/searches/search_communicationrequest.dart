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
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('authored', paramValue);
    return this;
  }

  /// a reference search for [basedOn] in the resource
  /// [CommunicationRequest]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchCommunicationRequest basedOn(FhirString value) {
    addParameterValue('based-on', value.toString());
    return this;
  }

  /// a token search for [category] in the resource
  /// [CommunicationRequest]
  SearchCommunicationRequest category(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('category', paramValue);
    return this;
  }

  /// a reference search for [encounter] in the resource
  /// [CommunicationRequest]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchCommunicationRequest encounter(FhirString value) {
    addParameterValue('encounter', value.toString());
    return this;
  }

  /// a token search for [groupIdentifier] in the resource
  /// [CommunicationRequest]
  SearchCommunicationRequest groupIdentifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('group-identifier', paramValue);
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [CommunicationRequest]
  SearchCommunicationRequest identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a token search for [medium] in the resource
  /// [CommunicationRequest]
  SearchCommunicationRequest medium(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('medium', paramValue);
    return this;
  }

  /// a date search for [occurrence] in the resource
  /// [CommunicationRequest]
  SearchCommunicationRequest occurrence(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('occurrence', paramValue);
    return this;
  }

  /// a reference search for [patient] in the resource
  /// [CommunicationRequest]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchCommunicationRequest patient(FhirString value) {
    addParameterValue('patient', value.toString());
    return this;
  }

  /// a token search for [priority] in the resource
  /// [CommunicationRequest]
  SearchCommunicationRequest priority(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('priority', paramValue);
    return this;
  }

  /// a reference search for [recipient] in the resource
  /// [CommunicationRequest]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchCommunicationRequest recipient(FhirString value) {
    addParameterValue('recipient', value.toString());
    return this;
  }

  /// a reference search for [replaces] in the resource
  /// [CommunicationRequest]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchCommunicationRequest replaces(FhirString value) {
    addParameterValue('replaces', value.toString());
    return this;
  }

  /// a reference search for [requester] in the resource
  /// [CommunicationRequest]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchCommunicationRequest requester(FhirString value) {
    addParameterValue('requester', value.toString());
    return this;
  }

  /// a reference search for [sender] in the resource
  /// [CommunicationRequest]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchCommunicationRequest sender(FhirString value) {
    addParameterValue('sender', value.toString());
    return this;
  }

  /// a token search for [status] in the resource
  /// [CommunicationRequest]
  SearchCommunicationRequest status(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('status', paramValue);
    return this;
  }

  /// a reference search for [subject] in the resource
  /// [CommunicationRequest]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchCommunicationRequest subject(FhirString value) {
    addParameterValue('subject', value.toString());
    return this;
  }
}
