// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';

/// A class to build query parameters for RESTful requests for the Immunization resource.
class SearchImmunization extends SearchResource {
  /// a date search for [date] in the reosurce Immunization
  SearchImmunization date(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}date'] = value.toString();
    return this;
  }

  /// a token search for [identifier] in the reosurce Immunization
  SearchImmunization identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a string search for [lotNumber] in the reosurce Immunization
  SearchImmunization lotNumber(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['${modifier != null ? '$modifier' : ''}lot_number'] =
        value.toString();
    return this;
  }

  /// a date search for [reactionDate] in the reosurce Immunization
  SearchImmunization reactionDate(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}reaction_date'] =
        value.toString();
    return this;
  }

  /// a token search for [reasonCode] in the reosurce Immunization
  SearchImmunization reasonCode(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}reason_code'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a string search for [series] in the reosurce Immunization
  SearchImmunization series(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['${modifier != null ? '$modifier' : ''}series'] =
        value.toString();
    return this;
  }

  /// a token search for [status] in the reosurce Immunization
  SearchImmunization status(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [statusReason] in the reosurce Immunization
  SearchImmunization statusReason(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}status_reason'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [targetDisease] in the reosurce Immunization
  SearchImmunization targetDisease(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}target_disease'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [vaccineCode] in the reosurce Immunization
  SearchImmunization vaccineCode(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}vaccine_code'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }
}
