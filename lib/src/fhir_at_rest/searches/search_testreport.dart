// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';

/// A class to build query parameters for RESTful requests for the TestReport resource.
class SearchTestReport extends SearchResource {
  /// a token search for [identifier] in the reosurce TestReport
  SearchTestReport identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a date search for [issued] in the reosurce TestReport
  SearchTestReport issued(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}issued'] =
        value.toString();
    return this;
  }

  /// a uri search for [participant] in the reosurce TestReport
  SearchTestReport participant(FhirUri value, {SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}participant'] =
        value.toString();
    return this;
  }

  /// a token search for [result] in the reosurce TestReport
  SearchTestReport result(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}result'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a string search for [tester] in the reosurce TestReport
  SearchTestReport tester(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['${modifier != null ? '$modifier' : ''}tester'] =
        value.toString();
    return this;
  }
}
