// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [AdverseEvent] resource.
class SearchAdverseEvent extends SearchResource {
  /// a token search for [actuality] in the resource
  /// [AdverseEvent]
  SearchAdverseEvent actuality(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('actuality', paramValue);
    return this;
  }

  /// a token search for [category] in the resource
  /// [AdverseEvent]
  SearchAdverseEvent category(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('category', paramValue);
    return this;
  }

  /// a date search for [date] in the resource
  /// [AdverseEvent]
  SearchAdverseEvent date(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('date', paramValue);
    return this;
  }

  /// a token search for [event] in the resource
  /// [AdverseEvent]
  SearchAdverseEvent event(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('event', paramValue);
    return this;
  }

  /// a reference search for [location] in the resource
  /// [AdverseEvent]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchAdverseEvent location(FhirString value) {
    addParameterValue('location', value.toString());
    return this;
  }

  /// a reference search for [recorder] in the resource
  /// [AdverseEvent]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchAdverseEvent recorder(FhirString value) {
    addParameterValue('recorder', value.toString());
    return this;
  }

  /// a reference search for [resultingcondition] in the resource
  /// [AdverseEvent]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchAdverseEvent resultingcondition(FhirString value) {
    addParameterValue('resultingcondition', value.toString());
    return this;
  }

  /// a token search for [seriousness] in the resource
  /// [AdverseEvent]
  SearchAdverseEvent seriousness(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('seriousness', paramValue);
    return this;
  }

  /// a token search for [severity] in the resource
  /// [AdverseEvent]
  SearchAdverseEvent severity(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('severity', paramValue);
    return this;
  }

  /// a reference search for [study] in the resource
  /// [AdverseEvent]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchAdverseEvent study(FhirString value) {
    addParameterValue('study', value.toString());
    return this;
  }

  /// a reference search for [subject] in the resource
  /// [AdverseEvent]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchAdverseEvent subject(FhirString value) {
    addParameterValue('subject', value.toString());
    return this;
  }

  /// a reference search for [substance] in the resource
  /// [AdverseEvent]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchAdverseEvent substance(FhirString value) {
    addParameterValue('substance', value.toString());
    return this;
  }
}
