// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [DeviceRequest] resource.
class SearchDeviceRequest extends SearchResource {
  /// a token search for [code] in the resource
  /// [DeviceRequest]
  SearchDeviceRequest code(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('code', paramValue);
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [DeviceRequest]
  SearchDeviceRequest identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a reference search for [patient] in the resource
  /// [DeviceRequest]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchDeviceRequest patient(FhirString value) {
    addParameterValue('patient', value.toString());
    return this;
  }

  /// a reference search for [encounter] in the resource
  /// [DeviceRequest]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchDeviceRequest encounter(FhirString value) {
    addParameterValue('encounter', value.toString());
    return this;
  }

  /// a date search for [authoredOn] in the resource
  /// [DeviceRequest]
  SearchDeviceRequest authoredOn(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('authored-on', paramValue);
    return this;
  }

  /// a reference search for [basedOn] in the resource
  /// [DeviceRequest]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchDeviceRequest basedOn(FhirString value) {
    addParameterValue('based-on', value.toString());
    return this;
  }

  /// a reference search for [device] in the resource
  /// [DeviceRequest]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchDeviceRequest device(FhirString value) {
    addParameterValue('device', value.toString());
    return this;
  }

  /// a date search for [eventDate] in the resource
  /// [DeviceRequest]
  SearchDeviceRequest eventDate(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('event-date', paramValue);
    return this;
  }

  /// a token search for [groupIdentifier] in the resource
  /// [DeviceRequest]
  SearchDeviceRequest groupIdentifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('group-identifier', paramValue);
    return this;
  }

  /// a reference search for [instantiatesCanonical] in the resource
  /// [DeviceRequest]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchDeviceRequest instantiatesCanonical(FhirString value) {
    addParameterValue('instantiates-canonical', value.toString());
    return this;
  }

  /// a uri search for [instantiatesUri] in the resource
  /// [DeviceRequest]
  SearchDeviceRequest instantiatesUri(FhirUri value) {
    addParameterValue('instantiates-uri', value.toString());
    return this;
  }

  /// a reference search for [insurance] in the resource
  /// [DeviceRequest]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchDeviceRequest insurance(FhirString value) {
    addParameterValue('insurance', value.toString());
    return this;
  }

  /// a token search for [intent] in the resource
  /// [DeviceRequest]
  SearchDeviceRequest intent(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('intent', paramValue);
    return this;
  }

  /// a reference search for [performer] in the resource
  /// [DeviceRequest]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchDeviceRequest performer(FhirString value) {
    addParameterValue('performer', value.toString());
    return this;
  }

  /// a reference search for [priorRequest] in the resource
  /// [DeviceRequest]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchDeviceRequest priorRequest(FhirString value) {
    addParameterValue('prior-request', value.toString());
    return this;
  }

  /// a reference search for [requester] in the resource
  /// [DeviceRequest]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchDeviceRequest requester(FhirString value) {
    addParameterValue('requester', value.toString());
    return this;
  }

  /// a token search for [status] in the resource
  /// [DeviceRequest]
  SearchDeviceRequest status(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('status', paramValue);
    return this;
  }

  /// a reference search for [subject] in the resource
  /// [DeviceRequest]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchDeviceRequest subject(FhirString value) {
    addParameterValue('subject', value.toString());
    return this;
  }
}
