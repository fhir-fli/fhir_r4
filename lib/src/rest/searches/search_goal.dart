// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';

/// A class to build query parameters for RESTful requests for
/// the [Goal] resource.
class SearchGoal extends SearchResource {
  /// a token search for [identifier] in the resource
  /// [Goal]
  SearchGoal identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [achievementStatus] in the resource
  /// [Goal]
  SearchGoal achievementStatus(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}achievement_status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [category] in the resource
  /// [Goal]
  SearchGoal category(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}category'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [lifecycleStatus] in the resource
  /// [Goal]
  SearchGoal lifecycleStatus(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}lifecycle_status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a date search for [startDate] in the resource
  /// [Goal]
  SearchGoal startDate(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}start_date'] =
        value.toString();
    return this;
  }

  /// a date search for [targetDate] in the resource
  /// [Goal]
  SearchGoal targetDate(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}target_date'] =
        value.toString();
    return this;
  }
}
