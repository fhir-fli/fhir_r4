// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [MedicationStatement] resource.
class SearchMedicationStatement extends SearchResource {
  /// a token search for [code] in the resource
  /// [MedicationStatement]
  SearchMedicationStatement code(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('code', paramValue);
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [MedicationStatement]
  SearchMedicationStatement identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a reference search for [patient] in the resource
  /// [MedicationStatement]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchMedicationStatement patient(FhirString value) {
    addParameterValue('patient', value.toString());
    return this;
  }

  /// a reference search for [medication] in the resource
  /// [MedicationStatement]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchMedicationStatement medication(FhirString value) {
    addParameterValue('medication', value.toString());
    return this;
  }

  /// a token search for [status] in the resource
  /// [MedicationStatement]
  SearchMedicationStatement status(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('status', paramValue);
    return this;
  }

  /// a token search for [category] in the resource
  /// [MedicationStatement]
  SearchMedicationStatement category(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('category', paramValue);
    return this;
  }

  /// a reference search for [context] in the resource
  /// [MedicationStatement]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchMedicationStatement context(FhirString value) {
    addParameterValue('context', value.toString());
    return this;
  }

  /// a date search for [effective] in the resource
  /// [MedicationStatement]
  SearchMedicationStatement effective(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('effective', paramValue);
    return this;
  }

  /// a reference search for [partOf] in the resource
  /// [MedicationStatement]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchMedicationStatement partOf(FhirString value) {
    addParameterValue('part-of', value.toString());
    return this;
  }

  /// a reference search for [source] in the resource
  /// [MedicationStatement]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchMedicationStatement source(FhirString value) {
    addParameterValue('source', value.toString());
    return this;
  }

  /// a reference search for [subject] in the resource
  /// [MedicationStatement]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchMedicationStatement subject(FhirString value) {
    addParameterValue('subject', value.toString());
    return this;
  }
}
