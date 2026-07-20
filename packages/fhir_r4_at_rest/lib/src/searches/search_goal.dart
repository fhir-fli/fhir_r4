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
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a reference search for [patient] in the resource
  /// [Goal]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchGoal patient(FhirString value) {
    addParameterValue('patient', value.toString());
    return this;
  }

  /// a token search for [achievementStatus] in the resource
  /// [Goal]
  SearchGoal achievementStatus(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('achievement-status', paramValue);
    return this;
  }

  /// a token search for [category] in the resource
  /// [Goal]
  SearchGoal category(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('category', paramValue);
    return this;
  }

  /// a token search for [lifecycleStatus] in the resource
  /// [Goal]
  SearchGoal lifecycleStatus(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('lifecycle-status', paramValue);
    return this;
  }

  /// a date search for [startDate] in the resource
  /// [Goal]
  SearchGoal startDate(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('start-date', paramValue);
    return this;
  }

  /// a reference search for [subject] in the resource
  /// [Goal]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchGoal subject(FhirString value) {
    addParameterValue('subject', value.toString());
    return this;
  }

  /// a date search for [targetDate] in the resource
  /// [Goal]
  SearchGoal targetDate(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('target-date', paramValue);
    return this;
  }
}
