// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [Location] resource.
class SearchLocation extends SearchResource {
  /// a string search for [address] in the resource
  /// [Location]
  SearchLocation address(FhirString value) {
    addParameterValue('address', value.toString());
    return this;
  }

  /// a string search for [addressCity] in the resource
  /// [Location]
  SearchLocation addressCity(FhirString value) {
    addParameterValue('address-city', value.toString());
    return this;
  }

  /// a string search for [addressCountry] in the resource
  /// [Location]
  SearchLocation addressCountry(FhirString value) {
    addParameterValue('address-country', value.toString());
    return this;
  }

  /// a string search for [addressPostalcode] in the resource
  /// [Location]
  SearchLocation addressPostalcode(FhirString value) {
    addParameterValue('address-postalcode', value.toString());
    return this;
  }

  /// a string search for [addressState] in the resource
  /// [Location]
  SearchLocation addressState(FhirString value) {
    addParameterValue('address-state', value.toString());
    return this;
  }

  /// a token search for [addressUse] in the resource
  /// [Location]
  SearchLocation addressUse(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('address-use', paramValue);
    return this;
  }

  /// a reference search for [endpoint] in the resource
  /// [Location]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchLocation endpoint(FhirString value) {
    addParameterValue('endpoint', value.toString());
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [Location]
  SearchLocation identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a string search for [name] in the resource
  /// [Location]
  SearchLocation name(FhirString value) {
    addParameterValue('name', value.toString());
    return this;
  }

  /// a token search for [operationalStatus] in the resource
  /// [Location]
  SearchLocation operationalStatus(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('operational-status', paramValue);
    return this;
  }

  /// a reference search for [organization] in the resource
  /// [Location]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchLocation organization(FhirString value) {
    addParameterValue('organization', value.toString());
    return this;
  }

  /// a reference search for [partof] in the resource
  /// [Location]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchLocation partof(FhirString value) {
    addParameterValue('partof', value.toString());
    return this;
  }

  /// a token search for [status] in the resource
  /// [Location]
  SearchLocation status(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('status', paramValue);
    return this;
  }

  /// a token search for [type] in the resource
  /// [Location]
  SearchLocation type(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('type', paramValue);
    return this;
  }
}
