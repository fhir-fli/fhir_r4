// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [HealthcareService] resource.
class SearchHealthcareService extends SearchResource {
  /// a token search for [active] in the resource
  /// [HealthcareService]
  SearchHealthcareService active(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('active', paramValue);
    return this;
  }

  /// a token search for [characteristic] in the resource
  /// [HealthcareService]
  SearchHealthcareService characteristic(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('characteristic', paramValue);
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [HealthcareService]
  SearchHealthcareService identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a string search for [name] in the resource
  /// [HealthcareService]
  SearchHealthcareService name(FhirString value) {
    addParameterValue('name', value.toString());
    return this;
  }

  /// a token search for [program] in the resource
  /// [HealthcareService]
  SearchHealthcareService program(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('program', paramValue);
    return this;
  }

  /// a token search for [serviceCategory] in the resource
  /// [HealthcareService]
  SearchHealthcareService serviceCategory(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('service-category', paramValue);
    return this;
  }

  /// a token search for [serviceType] in the resource
  /// [HealthcareService]
  SearchHealthcareService serviceType(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('service-type', paramValue);
    return this;
  }

  /// a token search for [specialty] in the resource
  /// [HealthcareService]
  SearchHealthcareService specialty(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('specialty', paramValue);
    return this;
  }
}
