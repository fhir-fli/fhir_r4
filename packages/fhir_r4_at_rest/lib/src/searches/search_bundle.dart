// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [Bundle] resource.
class SearchBundle extends SearchResource {
  /// a token search for [identifier] in the resource
  /// [Bundle]
  SearchBundle identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['identifier'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a date search for [timestamp] in the resource
  /// [Bundle]
  SearchBundle timestamp(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['timestamp'] =
        (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a token search for [type] in the resource
  /// [Bundle]
  SearchBundle type(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['type'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }
}
