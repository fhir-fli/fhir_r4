// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';

/// A class to build query parameters for RESTful requests for the FamilyMemberHistory resource.
class SearchFamilyMemberHistory extends SearchResource {
  /// a token search for [code] in the reosurce FamilyMemberHistory
  SearchFamilyMemberHistory code(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}code'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a date search for [date] in the reosurce FamilyMemberHistory
  SearchFamilyMemberHistory date(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}date'] = value.toString();
    return this;
  }

  /// a token search for [identifier] in the reosurce FamilyMemberHistory
  SearchFamilyMemberHistory identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a uri search for [instantiatesUri] in the reosurce FamilyMemberHistory
  SearchFamilyMemberHistory instantiatesUri(FhirUri value,
      {SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}instantiates_uri'] =
        value.toString();
    return this;
  }

  /// a token search for [relationship] in the reosurce FamilyMemberHistory
  SearchFamilyMemberHistory relationship(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}relationship'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [sex] in the reosurce FamilyMemberHistory
  SearchFamilyMemberHistory sex(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}sex'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [status] in the reosurce FamilyMemberHistory
  SearchFamilyMemberHistory status(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }
}
