// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [Specimen] resource.
class SearchSpecimen extends SearchResource {
  /// a token search for [accession] in the resource
  /// [Specimen]
  SearchSpecimen accession(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['accession'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a token search for [bodysite] in the resource
  /// [Specimen]
  SearchSpecimen bodysite(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['bodysite'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a date search for [collected] in the resource
  /// [Specimen]
  SearchSpecimen collected(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['collected'] =
        (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a token search for [container] in the resource
  /// [Specimen]
  SearchSpecimen container(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['container'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a token search for [containerId] in the resource
  /// [Specimen]
  SearchSpecimen containerId(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['container_id'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [Specimen]
  SearchSpecimen identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['identifier'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a token search for [status] in the resource
  /// [Specimen]
  SearchSpecimen status(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['status'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a token search for [type] in the resource
  /// [Specimen]
  SearchSpecimen type(
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
