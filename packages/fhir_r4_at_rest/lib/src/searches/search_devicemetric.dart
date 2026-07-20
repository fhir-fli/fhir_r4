// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [DeviceMetric] resource.
class SearchDeviceMetric extends SearchResource {
  /// a token search for [category] in the resource
  /// [DeviceMetric]
  SearchDeviceMetric category(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('category', paramValue);
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [DeviceMetric]
  SearchDeviceMetric identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a reference search for [parent] in the resource
  /// [DeviceMetric]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchDeviceMetric parent(FhirString value) {
    addParameterValue('parent', value.toString());
    return this;
  }

  /// a reference search for [source] in the resource
  /// [DeviceMetric]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchDeviceMetric source(FhirString value) {
    addParameterValue('source', value.toString());
    return this;
  }

  /// a token search for [type] in the resource
  /// [DeviceMetric]
  SearchDeviceMetric type(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('type', paramValue);
    return this;
  }
}
