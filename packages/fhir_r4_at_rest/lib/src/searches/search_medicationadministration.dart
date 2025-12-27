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
    SearchModifier? modifier,
  }) {
    parameters['code'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [MedicationAdministration]
  SearchMedicationAdministration identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['identifier'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a date search for [effectiveTime] in the resource
  /// [MedicationAdministration]
  SearchMedicationAdministration effectiveTime(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['effective_time'] =
        (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a token search for [reasonGiven] in the resource
  /// [MedicationAdministration]
  SearchMedicationAdministration reasonGiven(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['reason_given'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a token search for [reasonNotGiven] in the resource
  /// [MedicationAdministration]
  SearchMedicationAdministration reasonNotGiven(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['reason_not_given'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a token search for [status] in the resource
  /// [MedicationAdministration]
  SearchMedicationAdministration status(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['status'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }
}
