// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';

/// A class to build query parameters for RESTful requests for the ServiceRequest resource.
class SearchServiceRequest extends SearchResource {
  /// a token search for [code] in the reosurce ServiceRequest
  SearchServiceRequest code(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}code'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [identifier] in the reosurce ServiceRequest
  SearchServiceRequest identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a date search for [authored] in the reosurce ServiceRequest
  SearchServiceRequest authored(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}authored'] =
        value.toString();
    return this;
  }

  /// a token search for [bodySite] in the reosurce ServiceRequest
  SearchServiceRequest bodySite(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}body_site'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [category] in the reosurce ServiceRequest
  SearchServiceRequest category(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}category'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a uri search for [instantiatesUri] in the reosurce ServiceRequest
  SearchServiceRequest instantiatesUri(FhirUri value,
      {SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}instantiates_uri'] =
        value.toString();
    return this;
  }

  /// a token search for [intent] in the reosurce ServiceRequest
  SearchServiceRequest intent(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}intent'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a date search for [occurrence] in the reosurce ServiceRequest
  SearchServiceRequest occurrence(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}occurrence'] =
        value.toString();
    return this;
  }

  /// a token search for [performerType] in the reosurce ServiceRequest
  SearchServiceRequest performerType(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}performer_type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [priority] in the reosurce ServiceRequest
  SearchServiceRequest priority(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}priority'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [requisition] in the reosurce ServiceRequest
  SearchServiceRequest requisition(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}requisition'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [status] in the reosurce ServiceRequest
  SearchServiceRequest status(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }
}
