// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';

/// A class to build query parameters for RESTful requests for the AdverseEvent resource.
class SearchAdverseEvent extends SearchResource {
  /// a token search for [actuality] in the reosurce AdverseEvent
  SearchAdverseEvent actuality(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}actuality'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [category] in the reosurce AdverseEvent
  SearchAdverseEvent category(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}category'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a date search for [date] in the reosurce AdverseEvent
  SearchAdverseEvent date(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}date'] = value.toString();
    return this;
  }

  /// a token search for [event] in the reosurce AdverseEvent
  SearchAdverseEvent event(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}event'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [seriousness] in the reosurce AdverseEvent
  SearchAdverseEvent seriousness(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}seriousness'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [severity] in the reosurce AdverseEvent
  SearchAdverseEvent severity(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}severity'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }
}
