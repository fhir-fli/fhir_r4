// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [MedicationDispense] resource.
class SearchMedicationDispense extends SearchResource {
  /// a token search for [code] in the resource
  /// [MedicationDispense]
  SearchMedicationDispense code(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('code', paramValue);
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [MedicationDispense]
  SearchMedicationDispense identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a reference search for [patient] in the resource
  /// [MedicationDispense]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchMedicationDispense patient(FhirString value) {
    addParameterValue('patient', value.toString());
    return this;
  }

  /// a reference search for [medication] in the resource
  /// [MedicationDispense]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchMedicationDispense medication(FhirString value) {
    addParameterValue('medication', value.toString());
    return this;
  }

  /// a token search for [status] in the resource
  /// [MedicationDispense]
  SearchMedicationDispense status(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('status', paramValue);
    return this;
  }

  /// a reference search for [context] in the resource
  /// [MedicationDispense]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchMedicationDispense context(FhirString value) {
    addParameterValue('context', value.toString());
    return this;
  }

  /// a reference search for [destination] in the resource
  /// [MedicationDispense]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchMedicationDispense destination(FhirString value) {
    addParameterValue('destination', value.toString());
    return this;
  }

  /// a reference search for [performer] in the resource
  /// [MedicationDispense]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchMedicationDispense performer(FhirString value) {
    addParameterValue('performer', value.toString());
    return this;
  }

  /// a reference search for [prescription] in the resource
  /// [MedicationDispense]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchMedicationDispense prescription(FhirString value) {
    addParameterValue('prescription', value.toString());
    return this;
  }

  /// a reference search for [receiver] in the resource
  /// [MedicationDispense]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchMedicationDispense receiver(FhirString value) {
    addParameterValue('receiver', value.toString());
    return this;
  }

  /// a reference search for [responsibleparty] in the resource
  /// [MedicationDispense]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchMedicationDispense responsibleparty(FhirString value) {
    addParameterValue('responsibleparty', value.toString());
    return this;
  }

  /// a reference search for [subject] in the resource
  /// [MedicationDispense]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchMedicationDispense subject(FhirString value) {
    addParameterValue('subject', value.toString());
    return this;
  }

  /// a token search for [type] in the resource
  /// [MedicationDispense]
  SearchMedicationDispense type(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('type', paramValue);
    return this;
  }

  /// a date search for [whenhandedover] in the resource
  /// [MedicationDispense]
  SearchMedicationDispense whenhandedover(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('whenhandedover', paramValue);
    return this;
  }

  /// a date search for [whenprepared] in the resource
  /// [MedicationDispense]
  SearchMedicationDispense whenprepared(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('whenprepared', paramValue);
    return this;
  }
}
