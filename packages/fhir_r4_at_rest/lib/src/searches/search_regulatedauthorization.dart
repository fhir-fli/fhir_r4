// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [RegulatedAuthorization] resource.
class SearchRegulatedAuthorization extends SearchResource {
  /// a token search for [case_] in the resource
  /// [RegulatedAuthorization]
  SearchRegulatedAuthorization case_(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('case', paramValue);
    return this;
  }

  /// a token search for [caseType] in the resource
  /// [RegulatedAuthorization]
  SearchRegulatedAuthorization caseType(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('case-type', paramValue);
    return this;
  }

  /// a reference search for [holder] in the resource
  /// [RegulatedAuthorization]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchRegulatedAuthorization holder(FhirString value) {
    addParameterValue('holder', value.toString());
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [RegulatedAuthorization]
  SearchRegulatedAuthorization identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a token search for [region] in the resource
  /// [RegulatedAuthorization]
  SearchRegulatedAuthorization region(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('region', paramValue);
    return this;
  }

  /// a token search for [status] in the resource
  /// [RegulatedAuthorization]
  SearchRegulatedAuthorization status(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('status', paramValue);
    return this;
  }

  /// a reference search for [subject] in the resource
  /// [RegulatedAuthorization]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchRegulatedAuthorization subject(FhirString value) {
    addParameterValue('subject', value.toString());
    return this;
  }
}
