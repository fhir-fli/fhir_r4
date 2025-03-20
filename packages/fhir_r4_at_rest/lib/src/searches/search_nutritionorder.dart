// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [NutritionOrder] resource.
class SearchNutritionOrder extends SearchResource {
  /// a token search for [identifier] in the resource
  /// [NutritionOrder]
  SearchNutritionOrder identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [additive] in the resource
  /// [NutritionOrder]
  SearchNutritionOrder additive(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}additive'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a date search for [datetime] in the resource
  /// [NutritionOrder]
  SearchNutritionOrder datetime(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}datetime'] =
        value.toString();
    return this;
  }

  /// a token search for [formula] in the resource
  /// [NutritionOrder]
  SearchNutritionOrder formula(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}formula'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a uri search for [instantiatesUri] in the resource
  /// [NutritionOrder]
  SearchNutritionOrder instantiatesUri(
    FhirUri value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}instantiates_uri'] =
        value.toString();
    return this;
  }

  /// a token search for [oraldiet] in the resource
  /// [NutritionOrder]
  SearchNutritionOrder oraldiet(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}oraldiet'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [status] in the resource
  /// [NutritionOrder]
  SearchNutritionOrder status(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [supplement] in the resource
  /// [NutritionOrder]
  SearchNutritionOrder supplement(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}supplement'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }
}
