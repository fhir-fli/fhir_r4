// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [DeviceUseStatement] resource.
class SearchDeviceUseStatement extends SearchResource {
  /// a reference search for [patient] in the resource
  /// [DeviceUseStatement]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchDeviceUseStatement patient(FhirString value) {
    addParameterValue('patient', value.toString());
    return this;
  }

  /// a reference search for [device] in the resource
  /// [DeviceUseStatement]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchDeviceUseStatement device(FhirString value) {
    addParameterValue('device', value.toString());
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [DeviceUseStatement]
  SearchDeviceUseStatement identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a reference search for [subject] in the resource
  /// [DeviceUseStatement]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchDeviceUseStatement subject(FhirString value) {
    addParameterValue('subject', value.toString());
    return this;
  }
}
