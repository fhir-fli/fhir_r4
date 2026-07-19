// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [Person] resource.
class SearchPerson extends SearchResource {
  /// a string search for [address] in the resource
  /// [Person]
  SearchPerson address(FhirString value) {
    addParameterValue('address', value.toString());
    return this;
  }

  /// a string search for [addressCity] in the resource
  /// [Person]
  SearchPerson addressCity(FhirString value) {
    addParameterValue('address-city', value.toString());
    return this;
  }

  /// a string search for [addressCountry] in the resource
  /// [Person]
  SearchPerson addressCountry(FhirString value) {
    addParameterValue('address-country', value.toString());
    return this;
  }

  /// a string search for [addressPostalcode] in the resource
  /// [Person]
  SearchPerson addressPostalcode(FhirString value) {
    addParameterValue('address-postalcode', value.toString());
    return this;
  }

  /// a string search for [addressState] in the resource
  /// [Person]
  SearchPerson addressState(FhirString value) {
    addParameterValue('address-state', value.toString());
    return this;
  }

  /// a token search for [addressUse] in the resource
  /// [Person]
  SearchPerson addressUse(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('address-use', paramValue);
    return this;
  }

  /// a date search for [birthdate] in the resource
  /// [Person]
  SearchPerson birthdate(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('birthdate', paramValue);
    return this;
  }

  /// a token search for [email] in the resource
  /// [Person]
  SearchPerson email(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('email', paramValue);
    return this;
  }

  /// a token search for [gender] in the resource
  /// [Person]
  SearchPerson gender(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('gender', paramValue);
    return this;
  }

  /// a token search for [phone] in the resource
  /// [Person]
  SearchPerson phone(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('phone', paramValue);
    return this;
  }

  /// a string search for [phonetic] in the resource
  /// [Person]
  SearchPerson phonetic(FhirString value) {
    addParameterValue('phonetic', value.toString());
    return this;
  }

  /// a token search for [telecom] in the resource
  /// [Person]
  SearchPerson telecom(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('telecom', paramValue);
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [Person]
  SearchPerson identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a reference search for [link] in the resource
  /// [Person]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchPerson link(FhirString value) {
    addParameterValue('link', value.toString());
    return this;
  }

  /// a string search for [name] in the resource
  /// [Person]
  SearchPerson name(FhirString value) {
    addParameterValue('name', value.toString());
    return this;
  }

  /// a reference search for [organization] in the resource
  /// [Person]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchPerson organization(FhirString value) {
    addParameterValue('organization', value.toString());
    return this;
  }

  /// a reference search for [patient] in the resource
  /// [Person]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchPerson patient(FhirString value) {
    addParameterValue('patient', value.toString());
    return this;
  }

  /// a reference search for [practitioner] in the resource
  /// [Person]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchPerson practitioner(FhirString value) {
    addParameterValue('practitioner', value.toString());
    return this;
  }

  /// a reference search for [relatedperson] in the resource
  /// [Person]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchPerson relatedperson(FhirString value) {
    addParameterValue('relatedperson', value.toString());
    return this;
  }
}
