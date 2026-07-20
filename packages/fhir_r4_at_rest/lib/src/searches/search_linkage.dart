// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [Linkage] resource.
class SearchLinkage extends SearchResource {
  /// a reference search for [author] in the resource
  /// [Linkage]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchLinkage author(FhirString value) {
    addParameterValue('author', value.toString());
    return this;
  }

  /// a reference search for [item] in the resource
  /// [Linkage]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchLinkage item(FhirString value) {
    addParameterValue('item', value.toString());
    return this;
  }

  /// a reference search for [source] in the resource
  /// [Linkage]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchLinkage source(FhirString value) {
    addParameterValue('source', value.toString());
    return this;
  }
}
