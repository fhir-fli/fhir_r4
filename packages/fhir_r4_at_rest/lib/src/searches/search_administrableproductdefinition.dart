// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';

/// A class to build query parameters for RESTful requests for
/// the [AdministrableProductDefinition] resource.
class SearchAdministrableProductDefinition extends SearchResource {
  /// a token search for [doseForm] in the resource
  /// [AdministrableProductDefinition]
  SearchAdministrableProductDefinition doseForm(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}dose_form'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [AdministrableProductDefinition]
  SearchAdministrableProductDefinition identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [ingredient] in the resource
  /// [AdministrableProductDefinition]
  SearchAdministrableProductDefinition ingredient(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}ingredient'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [route] in the resource
  /// [AdministrableProductDefinition]
  SearchAdministrableProductDefinition route(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}route'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [targetSpecies] in the resource
  /// [AdministrableProductDefinition]
  SearchAdministrableProductDefinition targetSpecies(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}target_species'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }
}
