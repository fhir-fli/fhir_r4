// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';

/// A class to build query parameters for RESTful requests for the GuidanceResponse resource.
class SearchGuidanceResponse extends SearchResource {
  /// a token search for [identifier] in the reosurce GuidanceResponse
  SearchGuidanceResponse identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [request] in the reosurce GuidanceResponse
  SearchGuidanceResponse request(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}request'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }
}
