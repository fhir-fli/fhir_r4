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
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('date', paramValue);
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [CarePlan]
  SearchCarePlan identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a reference search for [patient] in the resource
  /// [CarePlan]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchCarePlan patient(FhirString value) {
    addParameterValue('patient', value.toString());
    return this;
  }

  /// a token search for [activityCode] in the resource
  /// [CarePlan]
  SearchCarePlan activityCode(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('activity-code', paramValue);
    return this;
  }

  /// a date search for [activityDate] in the resource
  /// [CarePlan]
  SearchCarePlan activityDate(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('activity-date', paramValue);
    return this;
  }

  /// a reference search for [activityReference] in the resource
  /// [CarePlan]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchCarePlan activityReference(FhirString value) {
    addParameterValue('activity-reference', value.toString());
    return this;
  }

  /// a reference search for [basedOn] in the resource
  /// [CarePlan]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchCarePlan basedOn(FhirString value) {
    addParameterValue('based-on', value.toString());
    return this;
  }

  /// a reference search for [careTeam] in the resource
  /// [CarePlan]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchCarePlan careTeam(FhirString value) {
    addParameterValue('care-team', value.toString());
    return this;
  }

  /// a token search for [category] in the resource
  /// [CarePlan]
  SearchCarePlan category(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('category', paramValue);
    return this;
  }

  /// a reference search for [condition] in the resource
  /// [CarePlan]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchCarePlan condition(FhirString value) {
    addParameterValue('condition', value.toString());
    return this;
  }

  /// a reference search for [encounter] in the resource
  /// [CarePlan]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchCarePlan encounter(FhirString value) {
    addParameterValue('encounter', value.toString());
    return this;
  }

  /// a reference search for [goal] in the resource
  /// [CarePlan]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchCarePlan goal(FhirString value) {
    addParameterValue('goal', value.toString());
    return this;
  }

  /// a reference search for [instantiatesCanonical] in the resource
  /// [CarePlan]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchCarePlan instantiatesCanonical(FhirString value) {
    addParameterValue('instantiates-canonical', value.toString());
    return this;
  }

  /// a uri search for [instantiatesUri] in the resource
  /// [CarePlan]
  SearchCarePlan instantiatesUri(FhirUri value) {
    addParameterValue('instantiates-uri', value.toString());
    return this;
  }

  /// a token search for [intent] in the resource
  /// [CarePlan]
  SearchCarePlan intent(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('intent', paramValue);
    return this;
  }

  /// a reference search for [partOf] in the resource
  /// [CarePlan]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchCarePlan partOf(FhirString value) {
    addParameterValue('part-of', value.toString());
    return this;
  }

  /// a reference search for [performer] in the resource
  /// [CarePlan]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchCarePlan performer(FhirString value) {
    addParameterValue('performer', value.toString());
    return this;
  }

  /// a reference search for [replaces] in the resource
  /// [CarePlan]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchCarePlan replaces(FhirString value) {
    addParameterValue('replaces', value.toString());
    return this;
  }

  /// a token search for [status] in the resource
  /// [CarePlan]
  SearchCarePlan status(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('status', paramValue);
    return this;
  }

  /// a reference search for [subject] in the resource
  /// [CarePlan]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchCarePlan subject(FhirString value) {
    addParameterValue('subject', value.toString());
    return this;
  }
}
