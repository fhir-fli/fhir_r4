// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [ServiceRequest] resource.
class SearchServiceRequest extends SearchResource {
  /// a token search for [code] in the resource
  /// [ServiceRequest]
  SearchServiceRequest code(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('code', paramValue);
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [ServiceRequest]
  SearchServiceRequest identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a reference search for [patient] in the resource
  /// [ServiceRequest]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchServiceRequest patient(FhirString value) {
    addParameterValue('patient', value.toString());
    return this;
  }

  /// a reference search for [encounter] in the resource
  /// [ServiceRequest]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchServiceRequest encounter(FhirString value) {
    addParameterValue('encounter', value.toString());
    return this;
  }

  /// a date search for [authored] in the resource
  /// [ServiceRequest]
  SearchServiceRequest authored(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('authored', paramValue);
    return this;
  }

  /// a reference search for [basedOn] in the resource
  /// [ServiceRequest]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchServiceRequest basedOn(FhirString value) {
    addParameterValue('based-on', value.toString());
    return this;
  }

  /// a token search for [bodySite] in the resource
  /// [ServiceRequest]
  SearchServiceRequest bodySite(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('body-site', paramValue);
    return this;
  }

  /// a token search for [category] in the resource
  /// [ServiceRequest]
  SearchServiceRequest category(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('category', paramValue);
    return this;
  }

  /// a reference search for [instantiatesCanonical] in the resource
  /// [ServiceRequest]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchServiceRequest instantiatesCanonical(FhirString value) {
    addParameterValue('instantiates-canonical', value.toString());
    return this;
  }

  /// a uri search for [instantiatesUri] in the resource
  /// [ServiceRequest]
  SearchServiceRequest instantiatesUri(FhirUri value) {
    addParameterValue('instantiates-uri', value.toString());
    return this;
  }

  /// a token search for [intent] in the resource
  /// [ServiceRequest]
  SearchServiceRequest intent(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('intent', paramValue);
    return this;
  }

  /// a date search for [occurrence] in the resource
  /// [ServiceRequest]
  SearchServiceRequest occurrence(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('occurrence', paramValue);
    return this;
  }

  /// a reference search for [performer] in the resource
  /// [ServiceRequest]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchServiceRequest performer(FhirString value) {
    addParameterValue('performer', value.toString());
    return this;
  }

  /// a token search for [performerType] in the resource
  /// [ServiceRequest]
  SearchServiceRequest performerType(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('performer-type', paramValue);
    return this;
  }

  /// a token search for [priority] in the resource
  /// [ServiceRequest]
  SearchServiceRequest priority(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('priority', paramValue);
    return this;
  }

  /// a reference search for [replaces] in the resource
  /// [ServiceRequest]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchServiceRequest replaces(FhirString value) {
    addParameterValue('replaces', value.toString());
    return this;
  }

  /// a reference search for [requester] in the resource
  /// [ServiceRequest]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchServiceRequest requester(FhirString value) {
    addParameterValue('requester', value.toString());
    return this;
  }

  /// a token search for [requisition] in the resource
  /// [ServiceRequest]
  SearchServiceRequest requisition(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('requisition', paramValue);
    return this;
  }

  /// a reference search for [specimen] in the resource
  /// [ServiceRequest]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchServiceRequest specimen(FhirString value) {
    addParameterValue('specimen', value.toString());
    return this;
  }

  /// a token search for [status] in the resource
  /// [ServiceRequest]
  SearchServiceRequest status(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('status', paramValue);
    return this;
  }

  /// a reference search for [subject] in the resource
  /// [ServiceRequest]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchServiceRequest subject(FhirString value) {
    addParameterValue('subject', value.toString());
    return this;
  }
}
