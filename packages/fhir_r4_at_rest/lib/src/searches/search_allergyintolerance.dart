// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [AllergyIntolerance] resource.
class SearchAllergyIntolerance extends SearchResource {
  /// a token search for [category] in the resource
  /// [AllergyIntolerance]
  SearchAllergyIntolerance category(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('category', paramValue);
    return this;
  }

  /// a token search for [clinicalStatus] in the resource
  /// [AllergyIntolerance]
  SearchAllergyIntolerance clinicalStatus(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('clinical_status', paramValue);
    return this;
  }

  /// a token search for [code] in the resource
  /// [AllergyIntolerance]
  SearchAllergyIntolerance code(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('code', paramValue);
    return this;
  }

  /// a token search for [criticality] in the resource
  /// [AllergyIntolerance]
  SearchAllergyIntolerance criticality(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('criticality', paramValue);
    return this;
  }

  /// a date search for [date] in the resource
  /// [AllergyIntolerance]
  SearchAllergyIntolerance date(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('date', paramValue);
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [AllergyIntolerance]
  SearchAllergyIntolerance identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a date search for [lastDate] in the resource
  /// [AllergyIntolerance]
  SearchAllergyIntolerance lastDate(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('last_date', paramValue);
    return this;
  }

  /// a token search for [manifestation] in the resource
  /// [AllergyIntolerance]
  SearchAllergyIntolerance manifestation(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('manifestation', paramValue);
    return this;
  }

  /// a date search for [onset] in the resource
  /// [AllergyIntolerance]
  SearchAllergyIntolerance onset(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('onset', paramValue);
    return this;
  }

  /// a token search for [route] in the resource
  /// [AllergyIntolerance]
  SearchAllergyIntolerance route(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('route', paramValue);
    return this;
  }

  /// a token search for [severity] in the resource
  /// [AllergyIntolerance]
  SearchAllergyIntolerance severity(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('severity', paramValue);
    return this;
  }

  /// a token search for [type] in the resource
  /// [AllergyIntolerance]
  SearchAllergyIntolerance type(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('type', paramValue);
    return this;
  }

  /// a token search for [verificationStatus] in the resource
  /// [AllergyIntolerance]
  SearchAllergyIntolerance verificationStatus(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('verification_status', paramValue);
    return this;
  }
}
