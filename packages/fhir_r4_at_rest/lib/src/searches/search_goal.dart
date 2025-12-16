// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

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
    parameters['identifier'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [achievementStatus] in the resource
  /// [Goal]
  SearchGoal achievementStatus(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['achievement_status'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [category] in the resource
  /// [Goal]
  SearchGoal category(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['category'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [lifecycleStatus] in the resource
  /// [Goal]
  SearchGoal lifecycleStatus(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['lifecycle_status'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a date search for [startDate] in the resource
  /// [Goal]
  SearchGoal startDate(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['start_date'] =
        (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a date search for [targetDate] in the resource
  /// [Goal]
  SearchGoal targetDate(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['target_date'] =
        (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }
}
