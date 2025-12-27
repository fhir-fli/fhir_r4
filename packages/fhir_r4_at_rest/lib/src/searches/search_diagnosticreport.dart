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
    SearchModifier? modifier,
  }) {
    parameters['code'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a date search for [date] in the resource
  /// [DiagnosticReport]
  SearchDiagnosticReport date(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['date'] =
        (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [DiagnosticReport]
  SearchDiagnosticReport identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['identifier'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a token search for [category] in the resource
  /// [DiagnosticReport]
  SearchDiagnosticReport category(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['category'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a token search for [conclusion] in the resource
  /// [DiagnosticReport]
  SearchDiagnosticReport conclusion(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['conclusion'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a date search for [issued] in the resource
  /// [DiagnosticReport]
  SearchDiagnosticReport issued(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['issued'] =
        (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a token search for [status] in the resource
  /// [DiagnosticReport]
  SearchDiagnosticReport status(
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
