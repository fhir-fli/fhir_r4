// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [Contract] resource.
class SearchContract extends SearchResource {
  /// a token search for [identifier] in the resource
  /// [Contract]
  SearchContract identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['identifier'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a uri search for [instantiates] in the resource
  /// [Contract]
  SearchContract instantiates(
    FhirUri value, {
    SearchModifier? modifier,
  }) {
    parameters['instantiates'] =
        (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a date search for [issued] in the resource
  /// [Contract]
  SearchContract issued(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['issued'] =
        (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a token search for [status] in the resource
  /// [Contract]
  SearchContract status(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['status'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a uri search for [url] in the resource
  /// [Contract]
  SearchContract url(
    FhirUri value, {
    SearchModifier? modifier,
  }) {
    parameters['url'] =
        (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }
}
