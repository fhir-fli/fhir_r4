// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [Device] resource.
class SearchDevice extends SearchResource {
  /// a string search for [deviceName] in the resource
  /// [Device]
  SearchDevice deviceName(FhirString value) {
    addParameterValue('device-name', value.toString());
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [Device]
  SearchDevice identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a string search for [manufacturer] in the resource
  /// [Device]
  SearchDevice manufacturer(FhirString value) {
    addParameterValue('manufacturer', value.toString());
    return this;
  }

  /// a string search for [model] in the resource
  /// [Device]
  SearchDevice model(FhirString value) {
    addParameterValue('model', value.toString());
    return this;
  }

  /// a token search for [status] in the resource
  /// [Device]
  SearchDevice status(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('status', paramValue);
    return this;
  }

  /// a token search for [type] in the resource
  /// [Device]
  SearchDevice type(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('type', paramValue);
    return this;
  }

  /// a string search for [udiCarrier] in the resource
  /// [Device]
  SearchDevice udiCarrier(FhirString value) {
    addParameterValue('udi-carrier', value.toString());
    return this;
  }

  /// a string search for [udiDi] in the resource
  /// [Device]
  SearchDevice udiDi(FhirString value) {
    addParameterValue('udi-di', value.toString());
    return this;
  }

  /// a uri search for [url] in the resource
  /// [Device]
  SearchDevice url(FhirUri value) {
    addParameterValue('url', value.toString());
    return this;
  }
}
