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
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}code'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [MedicationRequest]
  SearchMedicationRequest identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [status] in the resource
  /// [MedicationRequest]
  SearchMedicationRequest status(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a date search for [authoredon] in the resource
  /// [MedicationRequest]
  SearchMedicationRequest authoredon(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}authoredon'] =
        value.toString();
    return this;
  }

  /// a token search for [category] in the resource
  /// [MedicationRequest]
  SearchMedicationRequest category(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}category'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a date search for [date] in the resource
  /// [MedicationRequest]
  SearchMedicationRequest date(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}date'] = value.toString();
    return this;
  }

  /// a token search for [intendedPerformertype] in the resource
  /// [MedicationRequest]
  SearchMedicationRequest intendedPerformertype(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}intended_performertype'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [intent] in the resource
  /// [MedicationRequest]
  SearchMedicationRequest intent(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}intent'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [priority] in the resource
  /// [MedicationRequest]
  SearchMedicationRequest priority(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}priority'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }
}
