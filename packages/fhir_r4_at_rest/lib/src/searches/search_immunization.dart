// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [Immunization] resource.
class SearchImmunization extends SearchResource {
  /// a date search for [date] in the resource
  /// [Immunization]
  SearchImmunization date(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('date', paramValue);
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [Immunization]
  SearchImmunization identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a reference search for [patient] in the resource
  /// [Immunization]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchImmunization patient(FhirString value) {
    addParameterValue('patient', value.toString());
    return this;
  }

  /// a reference search for [location] in the resource
  /// [Immunization]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchImmunization location(FhirString value) {
    addParameterValue('location', value.toString());
    return this;
  }

  /// a string search for [lotNumber] in the resource
  /// [Immunization]
  SearchImmunization lotNumber(FhirString value) {
    addParameterValue('lot-number', value.toString());
    return this;
  }

  /// a reference search for [manufacturer] in the resource
  /// [Immunization]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchImmunization manufacturer(FhirString value) {
    addParameterValue('manufacturer', value.toString());
    return this;
  }

  /// a reference search for [performer] in the resource
  /// [Immunization]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchImmunization performer(FhirString value) {
    addParameterValue('performer', value.toString());
    return this;
  }

  /// a reference search for [reaction] in the resource
  /// [Immunization]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchImmunization reaction(FhirString value) {
    addParameterValue('reaction', value.toString());
    return this;
  }

  /// a date search for [reactionDate] in the resource
  /// [Immunization]
  SearchImmunization reactionDate(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('reaction-date', paramValue);
    return this;
  }

  /// a token search for [reasonCode] in the resource
  /// [Immunization]
  SearchImmunization reasonCode(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('reason-code', paramValue);
    return this;
  }

  /// a reference search for [reasonReference] in the resource
  /// [Immunization]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchImmunization reasonReference(FhirString value) {
    addParameterValue('reason-reference', value.toString());
    return this;
  }

  /// a string search for [series] in the resource
  /// [Immunization]
  SearchImmunization series(FhirString value) {
    addParameterValue('series', value.toString());
    return this;
  }

  /// a token search for [status] in the resource
  /// [Immunization]
  SearchImmunization status(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('status', paramValue);
    return this;
  }

  /// a token search for [statusReason] in the resource
  /// [Immunization]
  SearchImmunization statusReason(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('status-reason', paramValue);
    return this;
  }

  /// a token search for [targetDisease] in the resource
  /// [Immunization]
  SearchImmunization targetDisease(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('target-disease', paramValue);
    return this;
  }

  /// a token search for [vaccineCode] in the resource
  /// [Immunization]
  SearchImmunization vaccineCode(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('vaccine-code', paramValue);
    return this;
  }
}
