// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [Practitioner] resource.
class SearchPractitioner extends SearchResource {
  /// a string search for [address] in the resource
  /// [Practitioner]
  SearchPractitioner address(FhirString value) {
    addParameterValue('address', value.toString());
    return this;
  }

  /// a string search for [addressCity] in the resource
  /// [Practitioner]
  SearchPractitioner addressCity(FhirString value) {
    addParameterValue('address-city', value.toString());
    return this;
  }

  /// a string search for [addressCountry] in the resource
  /// [Practitioner]
  SearchPractitioner addressCountry(FhirString value) {
    addParameterValue('address-country', value.toString());
    return this;
  }

  /// a string search for [addressPostalcode] in the resource
  /// [Practitioner]
  SearchPractitioner addressPostalcode(FhirString value) {
    addParameterValue('address-postalcode', value.toString());
    return this;
  }

  /// a string search for [addressState] in the resource
  /// [Practitioner]
  SearchPractitioner addressState(FhirString value) {
    addParameterValue('address-state', value.toString());
    return this;
  }

  /// a token search for [addressUse] in the resource
  /// [Practitioner]
  SearchPractitioner addressUse(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('address-use', paramValue);
    return this;
  }

  /// a token search for [email] in the resource
  /// [Practitioner]
  SearchPractitioner email(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('email', paramValue);
    return this;
  }

  /// a string search for [family] in the resource
  /// [Practitioner]
  SearchPractitioner family(FhirString value) {
    addParameterValue('family', value.toString());
    return this;
  }

  /// a token search for [gender] in the resource
  /// [Practitioner]
  SearchPractitioner gender(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('gender', paramValue);
    return this;
  }

  /// a string search for [given] in the resource
  /// [Practitioner]
  SearchPractitioner given(FhirString value) {
    addParameterValue('given', value.toString());
    return this;
  }

  /// a token search for [phone] in the resource
  /// [Practitioner]
  SearchPractitioner phone(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('phone', paramValue);
    return this;
  }

  /// a string search for [phonetic] in the resource
  /// [Practitioner]
  SearchPractitioner phonetic(FhirString value) {
    addParameterValue('phonetic', value.toString());
    return this;
  }

  /// a token search for [telecom] in the resource
  /// [Practitioner]
  SearchPractitioner telecom(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('telecom', paramValue);
    return this;
  }

  /// a token search for [active] in the resource
  /// [Practitioner]
  SearchPractitioner active(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('active', paramValue);
    return this;
  }

  /// a token search for [communication] in the resource
  /// [Practitioner]
  SearchPractitioner communication(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('communication', paramValue);
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [Practitioner]
  SearchPractitioner identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a string search for [name] in the resource
  /// [Practitioner]
  SearchPractitioner name(FhirString value) {
    addParameterValue('name', value.toString());
    return this;
  }
}
