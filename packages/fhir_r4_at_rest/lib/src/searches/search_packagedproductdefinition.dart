// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [PackagedProductDefinition] resource.
class SearchPackagedProductDefinition extends SearchResource {
  /// a reference search for [biological] in the resource
  /// [PackagedProductDefinition]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchPackagedProductDefinition biological(FhirString value) {
    addParameterValue('biological', value.toString());
    return this;
  }

  /// a reference search for [containedItem] in the resource
  /// [PackagedProductDefinition]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchPackagedProductDefinition containedItem(FhirString value) {
    addParameterValue('contained-item', value.toString());
    return this;
  }

  /// a reference search for [device] in the resource
  /// [PackagedProductDefinition]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchPackagedProductDefinition device(FhirString value) {
    addParameterValue('device', value.toString());
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [PackagedProductDefinition]
  SearchPackagedProductDefinition identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a reference search for [manufacturedItem] in the resource
  /// [PackagedProductDefinition]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchPackagedProductDefinition manufacturedItem(FhirString value) {
    addParameterValue('manufactured-item', value.toString());
    return this;
  }

  /// a reference search for [medication] in the resource
  /// [PackagedProductDefinition]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchPackagedProductDefinition medication(FhirString value) {
    addParameterValue('medication', value.toString());
    return this;
  }

  /// a token search for [name] in the resource
  /// [PackagedProductDefinition]
  SearchPackagedProductDefinition name(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('name', paramValue);
    return this;
  }

  /// a reference search for [nutrition] in the resource
  /// [PackagedProductDefinition]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchPackagedProductDefinition nutrition(FhirString value) {
    addParameterValue('nutrition', value.toString());
    return this;
  }

  /// a reference search for [package] in the resource
  /// [PackagedProductDefinition]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchPackagedProductDefinition package(FhirString value) {
    addParameterValue('package', value.toString());
    return this;
  }

  /// a reference search for [packageFor] in the resource
  /// [PackagedProductDefinition]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchPackagedProductDefinition packageFor(FhirString value) {
    addParameterValue('package-for', value.toString());
    return this;
  }

  /// a token search for [status] in the resource
  /// [PackagedProductDefinition]
  SearchPackagedProductDefinition status(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('status', paramValue);
    return this;
  }
}
