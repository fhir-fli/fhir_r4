// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [MedicationAdministration] resource.
class SearchMedicationAdministration extends SearchResource {
  /// a token search for [code] in the resource
  /// [MedicationAdministration]
  SearchMedicationAdministration code(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('code', paramValue);
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [MedicationAdministration]
  SearchMedicationAdministration identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a reference search for [patient] in the resource
  /// [MedicationAdministration]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchMedicationAdministration patient(FhirString value) {
    addParameterValue('patient', value.toString());
    return this;
  }

  /// a reference search for [context] in the resource
  /// [MedicationAdministration]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchMedicationAdministration context(FhirString value) {
    addParameterValue('context', value.toString());
    return this;
  }

  /// a reference search for [device] in the resource
  /// [MedicationAdministration]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchMedicationAdministration device(FhirString value) {
    addParameterValue('device', value.toString());
    return this;
  }

  /// a date search for [effectiveTime] in the resource
  /// [MedicationAdministration]
  SearchMedicationAdministration effectiveTime(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('effective-time', paramValue);
    return this;
  }

  /// a reference search for [medication] in the resource
  /// [MedicationAdministration]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchMedicationAdministration medication(FhirString value) {
    addParameterValue('medication', value.toString());
    return this;
  }

  /// a reference search for [performer] in the resource
  /// [MedicationAdministration]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchMedicationAdministration performer(FhirString value) {
    addParameterValue('performer', value.toString());
    return this;
  }

  /// a token search for [reasonGiven] in the resource
  /// [MedicationAdministration]
  SearchMedicationAdministration reasonGiven(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('reason-given', paramValue);
    return this;
  }

  /// a token search for [reasonNotGiven] in the resource
  /// [MedicationAdministration]
  SearchMedicationAdministration reasonNotGiven(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('reason-not-given', paramValue);
    return this;
  }

  /// a reference search for [request] in the resource
  /// [MedicationAdministration]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchMedicationAdministration request(FhirString value) {
    addParameterValue('request', value.toString());
    return this;
  }

  /// a token search for [status] in the resource
  /// [MedicationAdministration]
  SearchMedicationAdministration status(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('status', paramValue);
    return this;
  }

  /// a reference search for [subject] in the resource
  /// [MedicationAdministration]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchMedicationAdministration subject(FhirString value) {
    addParameterValue('subject', value.toString());
    return this;
  }
}
