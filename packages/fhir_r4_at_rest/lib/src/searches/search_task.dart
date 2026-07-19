// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [Task] resource.
class SearchTask extends SearchResource {
  /// a date search for [authoredOn] in the resource
  /// [Task]
  SearchTask authoredOn(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('authored-on', paramValue);
    return this;
  }

  /// a reference search for [basedOn] in the resource
  /// [Task]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchTask basedOn(FhirString value) {
    addParameterValue('based-on', value.toString());
    return this;
  }

  /// a token search for [businessStatus] in the resource
  /// [Task]
  SearchTask businessStatus(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('business-status', paramValue);
    return this;
  }

  /// a token search for [code] in the resource
  /// [Task]
  SearchTask code(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('code', paramValue);
    return this;
  }

  /// a reference search for [encounter] in the resource
  /// [Task]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchTask encounter(FhirString value) {
    addParameterValue('encounter', value.toString());
    return this;
  }

  /// a reference search for [focus] in the resource
  /// [Task]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchTask focus(FhirString value) {
    addParameterValue('focus', value.toString());
    return this;
  }

  /// a token search for [groupIdentifier] in the resource
  /// [Task]
  SearchTask groupIdentifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('group-identifier', paramValue);
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [Task]
  SearchTask identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a token search for [intent] in the resource
  /// [Task]
  SearchTask intent(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('intent', paramValue);
    return this;
  }

  /// a date search for [modified] in the resource
  /// [Task]
  SearchTask modified(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('modified', paramValue);
    return this;
  }

  /// a reference search for [owner] in the resource
  /// [Task]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchTask owner(FhirString value) {
    addParameterValue('owner', value.toString());
    return this;
  }

  /// a reference search for [partOf] in the resource
  /// [Task]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchTask partOf(FhirString value) {
    addParameterValue('part-of', value.toString());
    return this;
  }

  /// a reference search for [patient] in the resource
  /// [Task]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchTask patient(FhirString value) {
    addParameterValue('patient', value.toString());
    return this;
  }

  /// a token search for [performer] in the resource
  /// [Task]
  SearchTask performer(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('performer', paramValue);
    return this;
  }

  /// a date search for [period] in the resource
  /// [Task]
  SearchTask period(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('period', paramValue);
    return this;
  }

  /// a token search for [priority] in the resource
  /// [Task]
  SearchTask priority(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('priority', paramValue);
    return this;
  }

  /// a reference search for [requester] in the resource
  /// [Task]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchTask requester(FhirString value) {
    addParameterValue('requester', value.toString());
    return this;
  }

  /// a token search for [status] in the resource
  /// [Task]
  SearchTask status(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('status', paramValue);
    return this;
  }

  /// a reference search for [subject] in the resource
  /// [Task]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchTask subject(FhirString value) {
    addParameterValue('subject', value.toString());
    return this;
  }
}
