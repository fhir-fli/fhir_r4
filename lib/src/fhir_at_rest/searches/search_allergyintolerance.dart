// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';

/// A class to build query parameters for RESTful requests for the AllergyIntolerance resource.
class SearchAllergyIntolerance extends SearchResource {
  /// a token search for [category] in the reosurce AllergyIntolerance
  SearchAllergyIntolerance category(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}category'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [clinicalStatus] in the reosurce AllergyIntolerance
  SearchAllergyIntolerance clinicalStatus(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}clinical_status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [code] in the reosurce AllergyIntolerance
  SearchAllergyIntolerance code(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}code'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [criticality] in the reosurce AllergyIntolerance
  SearchAllergyIntolerance criticality(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}criticality'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a date search for [date] in the reosurce AllergyIntolerance
  SearchAllergyIntolerance date(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}date'] = value.toString();
    return this;
  }

  /// a token search for [identifier] in the reosurce AllergyIntolerance
  SearchAllergyIntolerance identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a date search for [lastDate] in the reosurce AllergyIntolerance
  SearchAllergyIntolerance lastDate(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}last_date'] =
        value.toString();
    return this;
  }

  /// a token search for [manifestation] in the reosurce AllergyIntolerance
  SearchAllergyIntolerance manifestation(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}manifestation'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a date search for [onset] in the reosurce AllergyIntolerance
  SearchAllergyIntolerance onset(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}onset'] =
        value.toString();
    return this;
  }

  /// a token search for [route] in the reosurce AllergyIntolerance
  SearchAllergyIntolerance route(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}route'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [severity] in the reosurce AllergyIntolerance
  SearchAllergyIntolerance severity(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}severity'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [type] in the reosurce AllergyIntolerance
  SearchAllergyIntolerance type(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [verificationStatus] in the reosurce AllergyIntolerance
  SearchAllergyIntolerance verificationStatus(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}verification_status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }
}
