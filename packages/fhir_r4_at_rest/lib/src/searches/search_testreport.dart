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
    SearchModifier? modifier,
  }) {
    parameters['identifier'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a date search for [issued] in the resource
  /// [TestReport]
  SearchTestReport issued(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['issued'] =
        (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a uri search for [participant] in the resource
  /// [TestReport]
  SearchTestReport participant(
    FhirUri value, {
    SearchModifier? modifier,
  }) {
    parameters['participant'] =
        (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [result] in the resource
  /// [TestReport]
  SearchTestReport result(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['result'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a string search for [tester] in the resource
  /// [TestReport]
  SearchTestReport tester(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['tester'] =
        (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }
}
