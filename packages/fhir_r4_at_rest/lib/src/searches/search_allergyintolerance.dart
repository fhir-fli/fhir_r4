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
    parameters['category'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a token search for [clinicalStatus] in the resource
  /// [AllergyIntolerance]
  SearchAllergyIntolerance clinicalStatus(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['clinical_status'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a token search for [code] in the resource
  /// [AllergyIntolerance]
  SearchAllergyIntolerance code(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['code'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a token search for [criticality] in the resource
  /// [AllergyIntolerance]
  SearchAllergyIntolerance criticality(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['criticality'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a date search for [date] in the resource
  /// [AllergyIntolerance]
  SearchAllergyIntolerance date(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['date'] =
        (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [AllergyIntolerance]
  SearchAllergyIntolerance identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['identifier'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a date search for [lastDate] in the resource
  /// [AllergyIntolerance]
  SearchAllergyIntolerance lastDate(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['last_date'] =
        (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a token search for [manifestation] in the resource
  /// [AllergyIntolerance]
  SearchAllergyIntolerance manifestation(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['manifestation'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a date search for [onset] in the resource
  /// [AllergyIntolerance]
  SearchAllergyIntolerance onset(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['onset'] =
        (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a token search for [route] in the resource
  /// [AllergyIntolerance]
  SearchAllergyIntolerance route(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['route'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a token search for [severity] in the resource
  /// [AllergyIntolerance]
  SearchAllergyIntolerance severity(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['severity'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a token search for [type] in the resource
  /// [AllergyIntolerance]
  SearchAllergyIntolerance type(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['type'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a token search for [verificationStatus] in the resource
  /// [AllergyIntolerance]
  SearchAllergyIntolerance verificationStatus(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['verification_status'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }
}
