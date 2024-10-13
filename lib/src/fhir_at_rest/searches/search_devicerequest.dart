// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';

/// A class to build query parameters for RESTful requests for the DeviceRequest resource.
class SearchDeviceRequest extends SearchResource {
  /// a token search for [code] in the reosurce DeviceRequest
  SearchDeviceRequest code(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}code'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [identifier] in the reosurce DeviceRequest
  SearchDeviceRequest identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a date search for [authoredOn] in the reosurce DeviceRequest
  SearchDeviceRequest authoredOn(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}authored_on'] =
        value.toString();
    return this;
  }

  /// a date search for [eventDate] in the reosurce DeviceRequest
  SearchDeviceRequest eventDate(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}event_date'] =
        value.toString();
    return this;
  }

  /// a token search for [groupIdentifier] in the reosurce DeviceRequest
  SearchDeviceRequest groupIdentifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}group_identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a uri search for [instantiatesUri] in the reosurce DeviceRequest
  SearchDeviceRequest instantiatesUri(FhirUri value,
      {SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}instantiates_uri'] =
        value.toString();
    return this;
  }

  /// a token search for [intent] in the reosurce DeviceRequest
  SearchDeviceRequest intent(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}intent'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [status] in the reosurce DeviceRequest
  SearchDeviceRequest status(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }
}
