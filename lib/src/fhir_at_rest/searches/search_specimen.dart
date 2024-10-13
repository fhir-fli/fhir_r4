// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';

/// A class to build query parameters for RESTful requests for the Specimen resource.
class SearchSpecimen extends SearchResource {
  /// a token search for [accession] in the reosurce Specimen
  SearchSpecimen accession(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}accession'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [bodysite] in the reosurce Specimen
  SearchSpecimen bodysite(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}bodysite'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a date search for [collected] in the reosurce Specimen
  SearchSpecimen collected(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}collected'] =
        value.toString();
    return this;
  }

  /// a token search for [container] in the reosurce Specimen
  SearchSpecimen container(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}container'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [containerId] in the reosurce Specimen
  SearchSpecimen containerId(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}container_id'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [identifier] in the reosurce Specimen
  SearchSpecimen identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [status] in the reosurce Specimen
  SearchSpecimen status(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [type] in the reosurce Specimen
  SearchSpecimen type(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }
}
