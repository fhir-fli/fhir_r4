// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [CarePlan] resource.
class SearchCarePlan extends SearchResource {
  /// a date search for [date] in the resource
  /// [CarePlan]
  SearchCarePlan date(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}date'] = value.toString();
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [CarePlan]
  SearchCarePlan identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [activityCode] in the resource
  /// [CarePlan]
  SearchCarePlan activityCode(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}activity_code'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a date search for [activityDate] in the resource
  /// [CarePlan]
  SearchCarePlan activityDate(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}activity_date'] =
        value.toString();
    return this;
  }

  /// a token search for [category] in the resource
  /// [CarePlan]
  SearchCarePlan category(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}category'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a uri search for [instantiatesUri] in the resource
  /// [CarePlan]
  SearchCarePlan instantiatesUri(
    FhirUri value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}instantiates_uri'] =
        value.toString();
    return this;
  }

  /// a token search for [intent] in the resource
  /// [CarePlan]
  SearchCarePlan intent(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}intent'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [status] in the resource
  /// [CarePlan]
  SearchCarePlan status(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }
}
