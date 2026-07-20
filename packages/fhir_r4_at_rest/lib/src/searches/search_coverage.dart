// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [Coverage] resource.
class SearchCoverage extends SearchResource {
  /// a reference search for [beneficiary] in the resource
  /// [Coverage]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchCoverage beneficiary(FhirString value) {
    addParameterValue('beneficiary', value.toString());
    return this;
  }

  /// a token search for [classType] in the resource
  /// [Coverage]
  SearchCoverage classType(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('class-type', paramValue);
    return this;
  }

  /// a string search for [classValue] in the resource
  /// [Coverage]
  SearchCoverage classValue(FhirString value) {
    addParameterValue('class-value', value.toString());
    return this;
  }

  /// a string search for [dependent] in the resource
  /// [Coverage]
  SearchCoverage dependent(FhirString value) {
    addParameterValue('dependent', value.toString());
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [Coverage]
  SearchCoverage identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a reference search for [patient] in the resource
  /// [Coverage]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchCoverage patient(FhirString value) {
    addParameterValue('patient', value.toString());
    return this;
  }

  /// a reference search for [payor] in the resource
  /// [Coverage]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchCoverage payor(FhirString value) {
    addParameterValue('payor', value.toString());
    return this;
  }

  /// a reference search for [policyHolder] in the resource
  /// [Coverage]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchCoverage policyHolder(FhirString value) {
    addParameterValue('policy-holder', value.toString());
    return this;
  }

  /// a token search for [status] in the resource
  /// [Coverage]
  SearchCoverage status(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('status', paramValue);
    return this;
  }

  /// a reference search for [subscriber] in the resource
  /// [Coverage]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchCoverage subscriber(FhirString value) {
    addParameterValue('subscriber', value.toString());
    return this;
  }

  /// a token search for [type] in the resource
  /// [Coverage]
  SearchCoverage type(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('type', paramValue);
    return this;
  }
}
