// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';

/// A class to build query parameters for RESTful requests for the MedicationAdministration resource.
class SearchMedicationAdministration extends SearchResource {
  /// a token search for [code] in the reosurce MedicationAdministration
  SearchMedicationAdministration code(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}code'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [identifier] in the reosurce MedicationAdministration
  SearchMedicationAdministration identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a date search for [effectiveTime] in the reosurce MedicationAdministration
  SearchMedicationAdministration effectiveTime(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}effective_time'] =
        value.toString();
    return this;
  }

  /// a token search for [reasonGiven] in the reosurce MedicationAdministration
  SearchMedicationAdministration reasonGiven(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}reason_given'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [reasonNotGiven] in the reosurce MedicationAdministration
  SearchMedicationAdministration reasonNotGiven(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}reason_not_given'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [status] in the reosurce MedicationAdministration
  SearchMedicationAdministration status(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }
}
