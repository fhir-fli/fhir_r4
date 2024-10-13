// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';

/// A class to build query parameters for RESTful requests for the HealthcareService resource.
class SearchHealthcareService extends SearchResource {
  /// a token search for [active] in the reosurce HealthcareService
  SearchHealthcareService active(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}active'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [characteristic] in the reosurce HealthcareService
  SearchHealthcareService characteristic(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}characteristic'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [identifier] in the reosurce HealthcareService
  SearchHealthcareService identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a string search for [name] in the reosurce HealthcareService
  SearchHealthcareService name(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['${modifier != null ? '$modifier' : ''}name'] = value.toString();
    return this;
  }

  /// a token search for [program] in the reosurce HealthcareService
  SearchHealthcareService program(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}program'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [serviceCategory] in the reosurce HealthcareService
  SearchHealthcareService serviceCategory(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}service_category'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [serviceType] in the reosurce HealthcareService
  SearchHealthcareService serviceType(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}service_type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [specialty] in the reosurce HealthcareService
  SearchHealthcareService specialty(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}specialty'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }
}
