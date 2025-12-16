// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [MedicationKnowledge] resource.
class SearchMedicationKnowledge extends SearchResource {
  /// a token search for [classification] in the resource
  /// [MedicationKnowledge]
  SearchMedicationKnowledge classification(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['classification'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [classificationType] in the resource
  /// [MedicationKnowledge]
  SearchMedicationKnowledge classificationType(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['classification_type'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [code] in the resource
  /// [MedicationKnowledge]
  SearchMedicationKnowledge code(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['code'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [doseform] in the resource
  /// [MedicationKnowledge]
  SearchMedicationKnowledge doseform(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['doseform'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [ingredientCode] in the resource
  /// [MedicationKnowledge]
  SearchMedicationKnowledge ingredientCode(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['ingredient_code'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [monitoringProgramName] in the resource
  /// [MedicationKnowledge]
  SearchMedicationKnowledge monitoringProgramName(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['monitoring_program_name'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [monitoringProgramType] in the resource
  /// [MedicationKnowledge]
  SearchMedicationKnowledge monitoringProgramType(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['monitoring_program_type'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [monographType] in the resource
  /// [MedicationKnowledge]
  SearchMedicationKnowledge monographType(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['monograph_type'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [sourceCost] in the resource
  /// [MedicationKnowledge]
  SearchMedicationKnowledge sourceCost(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['source_cost'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [status] in the resource
  /// [MedicationKnowledge]
  SearchMedicationKnowledge status(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['status'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }
}
