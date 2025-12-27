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
    SearchModifier? modifier,
  }) {
    parameters['code'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [MedicationDispense]
  SearchMedicationDispense identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['identifier'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a token search for [status] in the resource
  /// [MedicationDispense]
  SearchMedicationDispense status(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['status'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a token search for [type] in the resource
  /// [MedicationDispense]
  SearchMedicationDispense type(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['type'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a date search for [whenhandedover] in the resource
  /// [MedicationDispense]
  SearchMedicationDispense whenhandedover(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['whenhandedover'] =
        (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a date search for [whenprepared] in the resource
  /// [MedicationDispense]
  SearchMedicationDispense whenprepared(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['whenprepared'] =
        (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }
}
