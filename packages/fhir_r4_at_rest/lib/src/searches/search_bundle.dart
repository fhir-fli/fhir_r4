// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [Bundle] resource.
class SearchBundle extends SearchResource {
  /// a reference search for [composition] in the resource
  /// [Bundle]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchBundle composition(FhirString value) {
    addParameterValue('composition', value.toString());
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [Bundle]
  SearchBundle identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a reference search for [message] in the resource
  /// [Bundle]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchBundle message(FhirString value) {
    addParameterValue('message', value.toString());
    return this;
  }

  /// a date search for [timestamp] in the resource
  /// [Bundle]
  SearchBundle timestamp(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('timestamp', paramValue);
    return this;
  }

  /// a token search for [type] in the resource
  /// [Bundle]
  SearchBundle type(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('type', paramValue);
    return this;
  }
}
