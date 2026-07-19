// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [MedicationRequest] resource.
class SearchMedicationRequest extends SearchResource {
  /// a token search for [code] in the resource
  /// [MedicationRequest]
  SearchMedicationRequest code(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('code', paramValue);
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [MedicationRequest]
  SearchMedicationRequest identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a reference search for [patient] in the resource
  /// [MedicationRequest]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchMedicationRequest patient(FhirString value) {
    addParameterValue('patient', value.toString());
    return this;
  }

  /// a reference search for [medication] in the resource
  /// [MedicationRequest]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchMedicationRequest medication(FhirString value) {
    addParameterValue('medication', value.toString());
    return this;
  }

  /// a token search for [status] in the resource
  /// [MedicationRequest]
  SearchMedicationRequest status(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('status', paramValue);
    return this;
  }

  /// a date search for [authoredon] in the resource
  /// [MedicationRequest]
  SearchMedicationRequest authoredon(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('authoredon', paramValue);
    return this;
  }

  /// a token search for [category] in the resource
  /// [MedicationRequest]
  SearchMedicationRequest category(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('category', paramValue);
    return this;
  }

  /// a date search for [date] in the resource
  /// [MedicationRequest]
  SearchMedicationRequest date(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('date', paramValue);
    return this;
  }

  /// a reference search for [encounter] in the resource
  /// [MedicationRequest]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchMedicationRequest encounter(FhirString value) {
    addParameterValue('encounter', value.toString());
    return this;
  }

  /// a reference search for [intendedDispenser] in the resource
  /// [MedicationRequest]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchMedicationRequest intendedDispenser(FhirString value) {
    addParameterValue('intended-dispenser', value.toString());
    return this;
  }

  /// a reference search for [intendedPerformer] in the resource
  /// [MedicationRequest]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchMedicationRequest intendedPerformer(FhirString value) {
    addParameterValue('intended-performer', value.toString());
    return this;
  }

  /// a token search for [intendedPerformertype] in the resource
  /// [MedicationRequest]
  SearchMedicationRequest intendedPerformertype(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('intended-performertype', paramValue);
    return this;
  }

  /// a token search for [intent] in the resource
  /// [MedicationRequest]
  SearchMedicationRequest intent(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('intent', paramValue);
    return this;
  }

  /// a token search for [priority] in the resource
  /// [MedicationRequest]
  SearchMedicationRequest priority(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('priority', paramValue);
    return this;
  }

  /// a reference search for [requester] in the resource
  /// [MedicationRequest]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchMedicationRequest requester(FhirString value) {
    addParameterValue('requester', value.toString());
    return this;
  }

  /// a reference search for [subject] in the resource
  /// [MedicationRequest]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchMedicationRequest subject(FhirString value) {
    addParameterValue('subject', value.toString());
    return this;
  }
}
