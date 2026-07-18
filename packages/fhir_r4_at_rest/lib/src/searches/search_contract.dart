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
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a uri search for [instantiates] in the resource
  /// [Contract]
  SearchContract instantiates(FhirUri value) {
    addParameterValue('instantiates', value.toString());
    return this;
  }

  /// a date search for [issued] in the resource
  /// [Contract]
  SearchContract issued(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('issued', paramValue);
    return this;
  }

  /// a token search for [status] in the resource
  /// [Contract]
  SearchContract status(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('status', paramValue);
    return this;
  }

  /// a uri search for [url] in the resource
  /// [Contract]
  SearchContract url(FhirUri value) {
    addParameterValue('url', value.toString());
    return this;
  }
}
