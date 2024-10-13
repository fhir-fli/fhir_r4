// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';

/// A class to build query parameters for RESTful requests for the MedicationDispense resource.
class SearchMedicationDispense extends SearchResource {
  /// a token search for [code] in the reosurce MedicationDispense
  SearchMedicationDispense code(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}code'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [identifier] in the reosurce MedicationDispense
  SearchMedicationDispense identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [status] in the reosurce MedicationDispense
  SearchMedicationDispense status(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [type] in the reosurce MedicationDispense
  SearchMedicationDispense type(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a date search for [whenhandedover] in the reosurce MedicationDispense
  SearchMedicationDispense whenhandedover(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}whenhandedover'] =
        value.toString();
    return this;
  }

  /// a date search for [whenprepared] in the reosurce MedicationDispense
  SearchMedicationDispense whenprepared(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}whenprepared'] =
        value.toString();
    return this;
  }
}
