// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [Schedule] resource.
class SearchSchedule extends SearchResource {
  /// a token search for [active] in the resource
  /// [Schedule]
  SearchSchedule active(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('active', paramValue);
    return this;
  }

  /// a reference search for [actor] in the resource
  /// [Schedule]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchSchedule actor(FhirString value) {
    addParameterValue('actor', value.toString());
    return this;
  }

  /// a date search for [date] in the resource
  /// [Schedule]
  SearchSchedule date(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('date', paramValue);
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [Schedule]
  SearchSchedule identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a token search for [serviceCategory] in the resource
  /// [Schedule]
  SearchSchedule serviceCategory(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('service-category', paramValue);
    return this;
  }

  /// a token search for [serviceType] in the resource
  /// [Schedule]
  SearchSchedule serviceType(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('service-type', paramValue);
    return this;
  }

  /// a token search for [specialty] in the resource
  /// [Schedule]
  SearchSchedule specialty(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('specialty', paramValue);
    return this;
  }
}
