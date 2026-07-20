// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [Ingredient] resource.
class SearchIngredient extends SearchResource {
  /// a reference search for [for_] in the resource
  /// [Ingredient]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchIngredient for_(FhirString value) {
    addParameterValue('for', value.toString());
    return this;
  }

  /// a token search for [function] in the resource
  /// [Ingredient]
  SearchIngredient function(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('function', paramValue);
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [Ingredient]
  SearchIngredient identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a reference search for [manufacturer] in the resource
  /// [Ingredient]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchIngredient manufacturer(FhirString value) {
    addParameterValue('manufacturer', value.toString());
    return this;
  }

  /// a token search for [role] in the resource
  /// [Ingredient]
  SearchIngredient role(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('role', paramValue);
    return this;
  }

  /// a reference search for [substance] in the resource
  /// [Ingredient]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchIngredient substance(FhirString value) {
    addParameterValue('substance', value.toString());
    return this;
  }

  /// a token search for [substanceCode] in the resource
  /// [Ingredient]
  SearchIngredient substanceCode(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('substance-code', paramValue);
    return this;
  }

  /// a reference search for [substanceDefinition] in the resource
  /// [Ingredient]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchIngredient substanceDefinition(FhirString value) {
    addParameterValue('substance-definition', value.toString());
    return this;
  }
}
