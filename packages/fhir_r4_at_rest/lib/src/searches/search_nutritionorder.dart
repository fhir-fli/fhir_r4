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
    parameters['identifier'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [additive] in the resource
  /// [NutritionOrder]
  SearchNutritionOrder additive(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['additive'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a date search for [datetime] in the resource
  /// [NutritionOrder]
  SearchNutritionOrder datetime(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['datetime'] =
        (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [formula] in the resource
  /// [NutritionOrder]
  SearchNutritionOrder formula(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['formula'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a uri search for [instantiatesUri] in the resource
  /// [NutritionOrder]
  SearchNutritionOrder instantiatesUri(
    FhirUri value, {
    SearchModifier? modifier,
  }) {
    parameters['instantiates_uri'] =
        (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [oraldiet] in the resource
  /// [NutritionOrder]
  SearchNutritionOrder oraldiet(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['oraldiet'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [status] in the resource
  /// [NutritionOrder]
  SearchNutritionOrder status(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['status'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [supplement] in the resource
  /// [NutritionOrder]
  SearchNutritionOrder supplement(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['supplement'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }
}
