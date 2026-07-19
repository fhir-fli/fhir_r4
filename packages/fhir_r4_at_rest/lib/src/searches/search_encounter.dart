// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [Encounter] resource.
class SearchEncounter extends SearchResource {
  /// a date search for [date] in the resource
  /// [Encounter]
  SearchEncounter date(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('date', paramValue);
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [Encounter]
  SearchEncounter identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a reference search for [patient] in the resource
  /// [Encounter]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchEncounter patient(FhirString value) {
    addParameterValue('patient', value.toString());
    return this;
  }

  /// a token search for [type] in the resource
  /// [Encounter]
  SearchEncounter type(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('type', paramValue);
    return this;
  }

  /// a reference search for [account] in the resource
  /// [Encounter]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchEncounter account(FhirString value) {
    addParameterValue('account', value.toString());
    return this;
  }

  /// a reference search for [appointment] in the resource
  /// [Encounter]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchEncounter appointment(FhirString value) {
    addParameterValue('appointment', value.toString());
    return this;
  }

  /// a reference search for [basedOn] in the resource
  /// [Encounter]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchEncounter basedOn(FhirString value) {
    addParameterValue('based-on', value.toString());
    return this;
  }

  /// a token search for [class_] in the resource
  /// [Encounter]
  SearchEncounter class_(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('class', paramValue);
    return this;
  }

  /// a reference search for [diagnosis] in the resource
  /// [Encounter]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchEncounter diagnosis(FhirString value) {
    addParameterValue('diagnosis', value.toString());
    return this;
  }

  /// a reference search for [episodeOfCare] in the resource
  /// [Encounter]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchEncounter episodeOfCare(FhirString value) {
    addParameterValue('episode-of-care', value.toString());
    return this;
  }

  /// a quantity search for [length] in the resource
  /// [Encounter]
  SearchEncounter length(
    FhirDecimal value, {
    FhirString? unit,
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final numberPart = modifier != null ? '$modifier$value' : value.toString();
    final paramValue = (system == null && unit == null)
        ? numberPart
        : '$numberPart|${system?.toString() ?? ''}|'
            '${unit?.toString() ?? ''}';
    addParameterValue('length', paramValue);
    return this;
  }

  /// a reference search for [location] in the resource
  /// [Encounter]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchEncounter location(FhirString value) {
    addParameterValue('location', value.toString());
    return this;
  }

  /// a date search for [locationPeriod] in the resource
  /// [Encounter]
  SearchEncounter locationPeriod(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('location-period', paramValue);
    return this;
  }

  /// a reference search for [partOf] in the resource
  /// [Encounter]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchEncounter partOf(FhirString value) {
    addParameterValue('part-of', value.toString());
    return this;
  }

  /// a reference search for [participant] in the resource
  /// [Encounter]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchEncounter participant(FhirString value) {
    addParameterValue('participant', value.toString());
    return this;
  }

  /// a token search for [participantType] in the resource
  /// [Encounter]
  SearchEncounter participantType(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('participant-type', paramValue);
    return this;
  }

  /// a reference search for [practitioner] in the resource
  /// [Encounter]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchEncounter practitioner(FhirString value) {
    addParameterValue('practitioner', value.toString());
    return this;
  }

  /// a token search for [reasonCode] in the resource
  /// [Encounter]
  SearchEncounter reasonCode(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('reason-code', paramValue);
    return this;
  }

  /// a reference search for [reasonReference] in the resource
  /// [Encounter]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchEncounter reasonReference(FhirString value) {
    addParameterValue('reason-reference', value.toString());
    return this;
  }

  /// a reference search for [serviceProvider] in the resource
  /// [Encounter]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchEncounter serviceProvider(FhirString value) {
    addParameterValue('service-provider', value.toString());
    return this;
  }

  /// a token search for [specialArrangement] in the resource
  /// [Encounter]
  SearchEncounter specialArrangement(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('special-arrangement', paramValue);
    return this;
  }

  /// a token search for [status] in the resource
  /// [Encounter]
  SearchEncounter status(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('status', paramValue);
    return this;
  }

  /// a reference search for [subject] in the resource
  /// [Encounter]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchEncounter subject(FhirString value) {
    addParameterValue('subject', value.toString());
    return this;
  }
}
