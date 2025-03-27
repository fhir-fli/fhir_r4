// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [VisionPrescription] resource.
class SearchVisionPrescription extends SearchResource {
  /// a token search for [identifier] in the resource
  /// [VisionPrescription]
  SearchVisionPrescription identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a date search for [datewritten] in the resource
  /// [VisionPrescription]
  SearchVisionPrescription datewritten(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}datewritten'] =
        value.toString();
    return this;
  }

  /// a token search for [status] in the resource
  /// [VisionPrescription]
  SearchVisionPrescription status(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }
}
