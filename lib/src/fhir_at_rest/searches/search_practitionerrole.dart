// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';

/// A class to build query parameters for RESTful requests for the PractitionerRole resource.
class SearchPractitionerRole extends SearchResource {
  /// a token search for [email] in the reosurce PractitionerRole
  SearchPractitionerRole email(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}email'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [phone] in the reosurce PractitionerRole
  SearchPractitionerRole phone(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}phone'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [telecom] in the reosurce PractitionerRole
  SearchPractitionerRole telecom(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}telecom'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [active] in the reosurce PractitionerRole
  SearchPractitionerRole active(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}active'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a date search for [date] in the reosurce PractitionerRole
  SearchPractitionerRole date(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}date'] = value.toString();
    return this;
  }

  /// a token search for [identifier] in the reosurce PractitionerRole
  SearchPractitionerRole identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [role] in the reosurce PractitionerRole
  SearchPractitionerRole role(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}role'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [specialty] in the reosurce PractitionerRole
  SearchPractitionerRole specialty(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}specialty'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }
}
