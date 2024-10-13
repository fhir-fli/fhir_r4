// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';

/// A class to build query parameters for RESTful requests for the Communication resource.
class SearchCommunication extends SearchResource {
  /// a token search for [category] in the reosurce Communication
  SearchCommunication category(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}category'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [identifier] in the reosurce Communication
  SearchCommunication identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a uri search for [instantiatesUri] in the reosurce Communication
  SearchCommunication instantiatesUri(FhirUri value,
      {SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}instantiates_uri'] =
        value.toString();
    return this;
  }

  /// a token search for [medium] in the reosurce Communication
  SearchCommunication medium(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}medium'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a date search for [received] in the reosurce Communication
  SearchCommunication received(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}received'] =
        value.toString();
    return this;
  }

  /// a date search for [sent] in the reosurce Communication
  SearchCommunication sent(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}sent'] = value.toString();
    return this;
  }

  /// a token search for [status] in the reosurce Communication
  SearchCommunication status(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }
}
