// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [ImagingStudy] resource.
class SearchImagingStudy extends SearchResource {
  /// a token search for [identifier] in the resource
  /// [ImagingStudy]
  SearchImagingStudy identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a token search for [bodysite] in the resource
  /// [ImagingStudy]
  SearchImagingStudy bodysite(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('bodysite', paramValue);
    return this;
  }

  /// a token search for [dicomClass] in the resource
  /// [ImagingStudy]
  SearchImagingStudy dicomClass(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('dicom_class', paramValue);
    return this;
  }

  /// a token search for [instance] in the resource
  /// [ImagingStudy]
  SearchImagingStudy instance(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('instance', paramValue);
    return this;
  }

  /// a token search for [modality] in the resource
  /// [ImagingStudy]
  SearchImagingStudy modality(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('modality', paramValue);
    return this;
  }

  /// a token search for [reason] in the resource
  /// [ImagingStudy]
  SearchImagingStudy reason(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('reason', paramValue);
    return this;
  }

  /// a token search for [series] in the resource
  /// [ImagingStudy]
  SearchImagingStudy series(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('series', paramValue);
    return this;
  }

  /// a date search for [started] in the resource
  /// [ImagingStudy]
  SearchImagingStudy started(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('started', paramValue);
    return this;
  }

  /// a token search for [status] in the resource
  /// [ImagingStudy]
  SearchImagingStudy status(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('status', paramValue);
    return this;
  }
}
