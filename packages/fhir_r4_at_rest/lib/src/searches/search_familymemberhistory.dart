// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [FamilyMemberHistory] resource.
class SearchFamilyMemberHistory extends SearchResource {
  /// a token search for [code] in the resource
  /// [FamilyMemberHistory]
  SearchFamilyMemberHistory code(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('code', paramValue);
    return this;
  }

  /// a date search for [date] in the resource
  /// [FamilyMemberHistory]
  SearchFamilyMemberHistory date(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('date', paramValue);
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [FamilyMemberHistory]
  SearchFamilyMemberHistory identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a reference search for [patient] in the resource
  /// [FamilyMemberHistory]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchFamilyMemberHistory patient(FhirString value) {
    addParameterValue('patient', value.toString());
    return this;
  }

  /// a reference search for [instantiatesCanonical] in the resource
  /// [FamilyMemberHistory]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchFamilyMemberHistory instantiatesCanonical(FhirString value) {
    addParameterValue('instantiates-canonical', value.toString());
    return this;
  }

  /// a uri search for [instantiatesUri] in the resource
  /// [FamilyMemberHistory]
  SearchFamilyMemberHistory instantiatesUri(FhirUri value) {
    addParameterValue('instantiates-uri', value.toString());
    return this;
  }

  /// a token search for [relationship] in the resource
  /// [FamilyMemberHistory]
  SearchFamilyMemberHistory relationship(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('relationship', paramValue);
    return this;
  }

  /// a token search for [sex] in the resource
  /// [FamilyMemberHistory]
  SearchFamilyMemberHistory sex(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('sex', paramValue);
    return this;
  }

  /// a token search for [status] in the resource
  /// [FamilyMemberHistory]
  SearchFamilyMemberHistory status(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('status', paramValue);
    return this;
  }
}
