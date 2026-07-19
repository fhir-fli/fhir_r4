// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [DiagnosticReport] resource.
class SearchDiagnosticReport extends SearchResource {
  /// a token search for [code] in the resource
  /// [DiagnosticReport]
  SearchDiagnosticReport code(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('code', paramValue);
    return this;
  }

  /// a date search for [date] in the resource
  /// [DiagnosticReport]
  SearchDiagnosticReport date(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('date', paramValue);
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [DiagnosticReport]
  SearchDiagnosticReport identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a reference search for [patient] in the resource
  /// [DiagnosticReport]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchDiagnosticReport patient(FhirString value) {
    addParameterValue('patient', value.toString());
    return this;
  }

  /// a reference search for [encounter] in the resource
  /// [DiagnosticReport]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchDiagnosticReport encounter(FhirString value) {
    addParameterValue('encounter', value.toString());
    return this;
  }

  /// a reference search for [basedOn] in the resource
  /// [DiagnosticReport]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchDiagnosticReport basedOn(FhirString value) {
    addParameterValue('based-on', value.toString());
    return this;
  }

  /// a token search for [category] in the resource
  /// [DiagnosticReport]
  SearchDiagnosticReport category(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('category', paramValue);
    return this;
  }

  /// a token search for [conclusion] in the resource
  /// [DiagnosticReport]
  SearchDiagnosticReport conclusion(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('conclusion', paramValue);
    return this;
  }

  /// a date search for [issued] in the resource
  /// [DiagnosticReport]
  SearchDiagnosticReport issued(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('issued', paramValue);
    return this;
  }

  /// a reference search for [media] in the resource
  /// [DiagnosticReport]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchDiagnosticReport media(FhirString value) {
    addParameterValue('media', value.toString());
    return this;
  }

  /// a reference search for [performer] in the resource
  /// [DiagnosticReport]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchDiagnosticReport performer(FhirString value) {
    addParameterValue('performer', value.toString());
    return this;
  }

  /// a reference search for [result] in the resource
  /// [DiagnosticReport]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchDiagnosticReport result(FhirString value) {
    addParameterValue('result', value.toString());
    return this;
  }

  /// a reference search for [resultsInterpreter] in the resource
  /// [DiagnosticReport]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchDiagnosticReport resultsInterpreter(FhirString value) {
    addParameterValue('results-interpreter', value.toString());
    return this;
  }

  /// a reference search for [specimen] in the resource
  /// [DiagnosticReport]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchDiagnosticReport specimen(FhirString value) {
    addParameterValue('specimen', value.toString());
    return this;
  }

  /// a token search for [status] in the resource
  /// [DiagnosticReport]
  SearchDiagnosticReport status(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('status', paramValue);
    return this;
  }

  /// a reference search for [subject] in the resource
  /// [DiagnosticReport]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchDiagnosticReport subject(FhirString value) {
    addParameterValue('subject', value.toString());
    return this;
  }
}
