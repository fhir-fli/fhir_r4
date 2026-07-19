// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [EpisodeOfCare] resource.
class SearchEpisodeOfCare extends SearchResource {
  /// a date search for [date] in the resource
  /// [EpisodeOfCare]
  SearchEpisodeOfCare date(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('date', paramValue);
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [EpisodeOfCare]
  SearchEpisodeOfCare identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a reference search for [patient] in the resource
  /// [EpisodeOfCare]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchEpisodeOfCare patient(FhirString value) {
    addParameterValue('patient', value.toString());
    return this;
  }

  /// a token search for [type] in the resource
  /// [EpisodeOfCare]
  SearchEpisodeOfCare type(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('type', paramValue);
    return this;
  }

  /// a reference search for [careManager] in the resource
  /// [EpisodeOfCare]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchEpisodeOfCare careManager(FhirString value) {
    addParameterValue('care-manager', value.toString());
    return this;
  }

  /// a reference search for [condition] in the resource
  /// [EpisodeOfCare]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchEpisodeOfCare condition(FhirString value) {
    addParameterValue('condition', value.toString());
    return this;
  }

  /// a reference search for [incomingReferral] in the resource
  /// [EpisodeOfCare]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchEpisodeOfCare incomingReferral(FhirString value) {
    addParameterValue('incoming-referral', value.toString());
    return this;
  }

  /// a reference search for [organization] in the resource
  /// [EpisodeOfCare]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchEpisodeOfCare organization(FhirString value) {
    addParameterValue('organization', value.toString());
    return this;
  }

  /// a token search for [status] in the resource
  /// [EpisodeOfCare]
  SearchEpisodeOfCare status(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('status', paramValue);
    return this;
  }
}
