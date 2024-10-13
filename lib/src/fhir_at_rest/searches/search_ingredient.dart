// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';

/// A class to build query parameters for RESTful requests for the Ingredient resource.
class SearchIngredient extends SearchResource {
  /// a token search for [function] in the reosurce Ingredient
  SearchIngredient function(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}function'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [identifier] in the reosurce Ingredient
  SearchIngredient identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [role] in the reosurce Ingredient
  SearchIngredient role(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}role'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [substanceCode] in the reosurce Ingredient
  SearchIngredient substanceCode(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}substance_code'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }
}
