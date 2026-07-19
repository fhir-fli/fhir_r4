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
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a reference search for [patient] in the resource
  /// [NutritionOrder]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchNutritionOrder patient(FhirString value) {
    addParameterValue('patient', value.toString());
    return this;
  }

  /// a reference search for [encounter] in the resource
  /// [NutritionOrder]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchNutritionOrder encounter(FhirString value) {
    addParameterValue('encounter', value.toString());
    return this;
  }

  /// a token search for [additive] in the resource
  /// [NutritionOrder]
  SearchNutritionOrder additive(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('additive', paramValue);
    return this;
  }

  /// a date search for [datetime] in the resource
  /// [NutritionOrder]
  SearchNutritionOrder datetime(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('datetime', paramValue);
    return this;
  }

  /// a token search for [formula] in the resource
  /// [NutritionOrder]
  SearchNutritionOrder formula(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('formula', paramValue);
    return this;
  }

  /// a reference search for [instantiatesCanonical] in the resource
  /// [NutritionOrder]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchNutritionOrder instantiatesCanonical(FhirString value) {
    addParameterValue('instantiates-canonical', value.toString());
    return this;
  }

  /// a uri search for [instantiatesUri] in the resource
  /// [NutritionOrder]
  SearchNutritionOrder instantiatesUri(FhirUri value) {
    addParameterValue('instantiates-uri', value.toString());
    return this;
  }

  /// a token search for [oraldiet] in the resource
  /// [NutritionOrder]
  SearchNutritionOrder oraldiet(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('oraldiet', paramValue);
    return this;
  }

  /// a reference search for [provider] in the resource
  /// [NutritionOrder]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchNutritionOrder provider(FhirString value) {
    addParameterValue('provider', value.toString());
    return this;
  }

  /// a token search for [status] in the resource
  /// [NutritionOrder]
  SearchNutritionOrder status(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('status', paramValue);
    return this;
  }

  /// a token search for [supplement] in the resource
  /// [NutritionOrder]
  SearchNutritionOrder supplement(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('supplement', paramValue);
    return this;
  }
}
