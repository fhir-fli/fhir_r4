// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

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
    parameters['dose_form'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [AdministrableProductDefinition]
  SearchAdministrableProductDefinition identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['identifier'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a token search for [ingredient] in the resource
  /// [AdministrableProductDefinition]
  SearchAdministrableProductDefinition ingredient(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['ingredient'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a token search for [route] in the resource
  /// [AdministrableProductDefinition]
  SearchAdministrableProductDefinition route(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['route'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a token search for [targetSpecies] in the resource
  /// [AdministrableProductDefinition]
  SearchAdministrableProductDefinition targetSpecies(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['target_species'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }
}
