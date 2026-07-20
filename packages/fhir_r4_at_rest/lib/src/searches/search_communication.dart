// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [Communication] resource.
class SearchCommunication extends SearchResource {
  /// a reference search for [basedOn] in the resource
  /// [Communication]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchCommunication basedOn(FhirString value) {
    addParameterValue('based-on', value.toString());
    return this;
  }

  /// a token search for [category] in the resource
  /// [Communication]
  SearchCommunication category(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('category', paramValue);
    return this;
  }

  /// a reference search for [encounter] in the resource
  /// [Communication]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchCommunication encounter(FhirString value) {
    addParameterValue('encounter', value.toString());
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [Communication]
  SearchCommunication identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a reference search for [instantiatesCanonical] in the resource
  /// [Communication]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchCommunication instantiatesCanonical(FhirString value) {
    addParameterValue('instantiates-canonical', value.toString());
    return this;
  }

  /// a uri search for [instantiatesUri] in the resource
  /// [Communication]
  SearchCommunication instantiatesUri(FhirUri value) {
    addParameterValue('instantiates-uri', value.toString());
    return this;
  }

  /// a token search for [medium] in the resource
  /// [Communication]
  SearchCommunication medium(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('medium', paramValue);
    return this;
  }

  /// a reference search for [partOf] in the resource
  /// [Communication]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchCommunication partOf(FhirString value) {
    addParameterValue('part-of', value.toString());
    return this;
  }

  /// a reference search for [patient] in the resource
  /// [Communication]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchCommunication patient(FhirString value) {
    addParameterValue('patient', value.toString());
    return this;
  }

  /// a date search for [received] in the resource
  /// [Communication]
  SearchCommunication received(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('received', paramValue);
    return this;
  }

  /// a reference search for [recipient] in the resource
  /// [Communication]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchCommunication recipient(FhirString value) {
    addParameterValue('recipient', value.toString());
    return this;
  }

  /// a reference search for [sender] in the resource
  /// [Communication]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchCommunication sender(FhirString value) {
    addParameterValue('sender', value.toString());
    return this;
  }

  /// a date search for [sent] in the resource
  /// [Communication]
  SearchCommunication sent(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('sent', paramValue);
    return this;
  }

  /// a token search for [status] in the resource
  /// [Communication]
  SearchCommunication status(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('status', paramValue);
    return this;
  }

  /// a reference search for [subject] in the resource
  /// [Communication]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchCommunication subject(FhirString value) {
    addParameterValue('subject', value.toString());
    return this;
  }
}
