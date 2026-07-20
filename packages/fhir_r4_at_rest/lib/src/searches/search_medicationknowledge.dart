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
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('classification', paramValue);
    return this;
  }

  /// a token search for [classificationType] in the resource
  /// [MedicationKnowledge]
  SearchMedicationKnowledge classificationType(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('classification-type', paramValue);
    return this;
  }

  /// a token search for [code] in the resource
  /// [MedicationKnowledge]
  SearchMedicationKnowledge code(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('code', paramValue);
    return this;
  }

  /// a token search for [doseform] in the resource
  /// [MedicationKnowledge]
  SearchMedicationKnowledge doseform(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('doseform', paramValue);
    return this;
  }

  /// a reference search for [ingredient] in the resource
  /// [MedicationKnowledge]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchMedicationKnowledge ingredient(FhirString value) {
    addParameterValue('ingredient', value.toString());
    return this;
  }

  /// a token search for [ingredientCode] in the resource
  /// [MedicationKnowledge]
  SearchMedicationKnowledge ingredientCode(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('ingredient-code', paramValue);
    return this;
  }

  /// a reference search for [manufacturer] in the resource
  /// [MedicationKnowledge]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchMedicationKnowledge manufacturer(FhirString value) {
    addParameterValue('manufacturer', value.toString());
    return this;
  }

  /// a token search for [monitoringProgramName] in the resource
  /// [MedicationKnowledge]
  SearchMedicationKnowledge monitoringProgramName(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('monitoring-program-name', paramValue);
    return this;
  }

  /// a token search for [monitoringProgramType] in the resource
  /// [MedicationKnowledge]
  SearchMedicationKnowledge monitoringProgramType(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('monitoring-program-type', paramValue);
    return this;
  }

  /// a reference search for [monograph] in the resource
  /// [MedicationKnowledge]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchMedicationKnowledge monograph(FhirString value) {
    addParameterValue('monograph', value.toString());
    return this;
  }

  /// a token search for [monographType] in the resource
  /// [MedicationKnowledge]
  SearchMedicationKnowledge monographType(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('monograph-type', paramValue);
    return this;
  }

  /// a token search for [sourceCost] in the resource
  /// [MedicationKnowledge]
  SearchMedicationKnowledge sourceCost(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('source-cost', paramValue);
    return this;
  }

  /// a token search for [status] in the resource
  /// [MedicationKnowledge]
  SearchMedicationKnowledge status(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('status', paramValue);
    return this;
  }
}
