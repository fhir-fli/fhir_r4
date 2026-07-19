// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [Organization] resource.
class SearchOrganization extends SearchResource {
  /// a token search for [active] in the resource
  /// [Organization]
  SearchOrganization active(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('active', paramValue);
    return this;
  }

  /// a string search for [address] in the resource
  /// [Organization]
  SearchOrganization address(FhirString value) {
    addParameterValue('address', value.toString());
    return this;
  }

  /// a string search for [addressCity] in the resource
  /// [Organization]
  SearchOrganization addressCity(FhirString value) {
    addParameterValue('address-city', value.toString());
    return this;
  }

  /// a string search for [addressCountry] in the resource
  /// [Organization]
  SearchOrganization addressCountry(FhirString value) {
    addParameterValue('address-country', value.toString());
    return this;
  }

  /// a string search for [addressPostalcode] in the resource
  /// [Organization]
  SearchOrganization addressPostalcode(FhirString value) {
    addParameterValue('address-postalcode', value.toString());
    return this;
  }

  /// a string search for [addressState] in the resource
  /// [Organization]
  SearchOrganization addressState(FhirString value) {
    addParameterValue('address-state', value.toString());
    return this;
  }

  /// a token search for [addressUse] in the resource
  /// [Organization]
  SearchOrganization addressUse(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('address-use', paramValue);
    return this;
  }

  /// a reference search for [endpoint] in the resource
  /// [Organization]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchOrganization endpoint(FhirString value) {
    addParameterValue('endpoint', value.toString());
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [Organization]
  SearchOrganization identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a string search for [name] in the resource
  /// [Organization]
  SearchOrganization name(FhirString value) {
    addParameterValue('name', value.toString());
    return this;
  }

  /// a reference search for [partof] in the resource
  /// [Organization]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchOrganization partof(FhirString value) {
    addParameterValue('partof', value.toString());
    return this;
  }

  /// a string search for [phonetic] in the resource
  /// [Organization]
  SearchOrganization phonetic(FhirString value) {
    addParameterValue('phonetic', value.toString());
    return this;
  }

  /// a token search for [type] in the resource
  /// [Organization]
  SearchOrganization type(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('type', paramValue);
    return this;
  }
}
