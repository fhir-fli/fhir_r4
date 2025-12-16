// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [BodyStructure] resource.
class SearchBodyStructure extends SearchResource {
  /// a token search for [identifier] in the resource
  /// [BodyStructure]
  SearchBodyStructure identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['identifier'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [location] in the resource
  /// [BodyStructure]
  SearchBodyStructure location(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['location'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [morphology] in the resource
  /// [BodyStructure]
  SearchBodyStructure morphology(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['morphology'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }
}
