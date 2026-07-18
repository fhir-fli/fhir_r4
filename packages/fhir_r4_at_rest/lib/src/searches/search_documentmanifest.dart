// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [DocumentManifest] resource.
class SearchDocumentManifest extends SearchResource {
  /// a token search for [identifier] in the resource
  /// [DocumentManifest]
  SearchDocumentManifest identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a token search for [type] in the resource
  /// [DocumentManifest]
  SearchDocumentManifest type(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('type', paramValue);
    return this;
  }

  /// a date search for [created] in the resource
  /// [DocumentManifest]
  SearchDocumentManifest created(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('created', paramValue);
    return this;
  }

  /// a string search for [description] in the resource
  /// [DocumentManifest]
  SearchDocumentManifest description(FhirString value) {
    addParameterValue('description', value.toString());
    return this;
  }

  /// a token search for [relatedId] in the resource
  /// [DocumentManifest]
  SearchDocumentManifest relatedId(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('related-id', paramValue);
    return this;
  }

  /// a uri search for [source] in the resource
  /// [DocumentManifest]
  SearchDocumentManifest source(FhirUri value) {
    addParameterValue('source', value.toString());
    return this;
  }

  /// a token search for [status] in the resource
  /// [DocumentManifest]
  SearchDocumentManifest status(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('status', paramValue);
    return this;
  }
}
