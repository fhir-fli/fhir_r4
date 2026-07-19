// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [TestReport] resource.
class SearchTestReport extends SearchResource {
  /// a token search for [identifier] in the resource
  /// [TestReport]
  SearchTestReport identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a date search for [issued] in the resource
  /// [TestReport]
  SearchTestReport issued(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('issued', paramValue);
    return this;
  }

  /// a uri search for [participant] in the resource
  /// [TestReport]
  SearchTestReport participant(FhirUri value) {
    addParameterValue('participant', value.toString());
    return this;
  }

  /// a token search for [result] in the resource
  /// [TestReport]
  SearchTestReport result(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('result', paramValue);
    return this;
  }

  /// a string search for [tester] in the resource
  /// [TestReport]
  SearchTestReport tester(FhirString value) {
    addParameterValue('tester', value.toString());
    return this;
  }

  /// a reference search for [testscript] in the resource
  /// [TestReport]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchTestReport testscript(FhirString value) {
    addParameterValue('testscript', value.toString());
    return this;
  }
}
