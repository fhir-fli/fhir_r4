// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [Media] resource.
class SearchMedia extends SearchResource {
  /// a reference search for [basedOn] in the resource
  /// [Media]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchMedia basedOn(FhirString value) {
    addParameterValue('based-on', value.toString());
    return this;
  }

  /// a date search for [created] in the resource
  /// [Media]
  SearchMedia created(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('created', paramValue);
    return this;
  }

  /// a reference search for [device] in the resource
  /// [Media]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchMedia device(FhirString value) {
    addParameterValue('device', value.toString());
    return this;
  }

  /// a reference search for [encounter] in the resource
  /// [Media]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchMedia encounter(FhirString value) {
    addParameterValue('encounter', value.toString());
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [Media]
  SearchMedia identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a token search for [modality] in the resource
  /// [Media]
  SearchMedia modality(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('modality', paramValue);
    return this;
  }

  /// a reference search for [operator] in the resource
  /// [Media]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchMedia operator(FhirString value) {
    addParameterValue('operator', value.toString());
    return this;
  }

  /// a reference search for [patient] in the resource
  /// [Media]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchMedia patient(FhirString value) {
    addParameterValue('patient', value.toString());
    return this;
  }

  /// a token search for [site] in the resource
  /// [Media]
  SearchMedia site(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('site', paramValue);
    return this;
  }

  /// a token search for [status] in the resource
  /// [Media]
  SearchMedia status(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('status', paramValue);
    return this;
  }

  /// a reference search for [subject] in the resource
  /// [Media]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchMedia subject(FhirString value) {
    addParameterValue('subject', value.toString());
    return this;
  }

  /// a token search for [type] in the resource
  /// [Media]
  SearchMedia type(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('type', paramValue);
    return this;
  }

  /// a token search for [view] in the resource
  /// [Media]
  SearchMedia view(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('view', paramValue);
    return this;
  }
}
