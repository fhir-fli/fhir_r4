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
    SearchModifier? modifier,
  }) {
    parameters['code'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [DeviceRequest]
  SearchDeviceRequest identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['identifier'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a date search for [authoredOn] in the resource
  /// [DeviceRequest]
  SearchDeviceRequest authoredOn(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['authored_on'] =
        (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a date search for [eventDate] in the resource
  /// [DeviceRequest]
  SearchDeviceRequest eventDate(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['event_date'] =
        (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [groupIdentifier] in the resource
  /// [DeviceRequest]
  SearchDeviceRequest groupIdentifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['group_identifier'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a uri search for [instantiatesUri] in the resource
  /// [DeviceRequest]
  SearchDeviceRequest instantiatesUri(
    FhirUri value, {
    SearchModifier? modifier,
  }) {
    parameters['instantiates_uri'] =
        (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [intent] in the resource
  /// [DeviceRequest]
  SearchDeviceRequest intent(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['intent'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [status] in the resource
  /// [DeviceRequest]
  SearchDeviceRequest status(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['status'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }
}
