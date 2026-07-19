// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [RelatedPerson] resource.
class SearchRelatedPerson extends SearchResource {
  /// a string search for [address] in the resource
  /// [RelatedPerson]
  SearchRelatedPerson address(FhirString value) {
    addParameterValue('address', value.toString());
    return this;
  }

  /// a string search for [addressCity] in the resource
  /// [RelatedPerson]
  SearchRelatedPerson addressCity(FhirString value) {
    addParameterValue('address-city', value.toString());
    return this;
  }

  /// a string search for [addressCountry] in the resource
  /// [RelatedPerson]
  SearchRelatedPerson addressCountry(FhirString value) {
    addParameterValue('address-country', value.toString());
    return this;
  }

  /// a string search for [addressPostalcode] in the resource
  /// [RelatedPerson]
  SearchRelatedPerson addressPostalcode(FhirString value) {
    addParameterValue('address-postalcode', value.toString());
    return this;
  }

  /// a string search for [addressState] in the resource
  /// [RelatedPerson]
  SearchRelatedPerson addressState(FhirString value) {
    addParameterValue('address-state', value.toString());
    return this;
  }

  /// a token search for [addressUse] in the resource
  /// [RelatedPerson]
  SearchRelatedPerson addressUse(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('address-use', paramValue);
    return this;
  }

  /// a date search for [birthdate] in the resource
  /// [RelatedPerson]
  SearchRelatedPerson birthdate(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('birthdate', paramValue);
    return this;
  }

  /// a token search for [email] in the resource
  /// [RelatedPerson]
  SearchRelatedPerson email(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('email', paramValue);
    return this;
  }

  /// a token search for [gender] in the resource
  /// [RelatedPerson]
  SearchRelatedPerson gender(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('gender', paramValue);
    return this;
  }

  /// a token search for [phone] in the resource
  /// [RelatedPerson]
  SearchRelatedPerson phone(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('phone', paramValue);
    return this;
  }

  /// a string search for [phonetic] in the resource
  /// [RelatedPerson]
  SearchRelatedPerson phonetic(FhirString value) {
    addParameterValue('phonetic', value.toString());
    return this;
  }

  /// a token search for [telecom] in the resource
  /// [RelatedPerson]
  SearchRelatedPerson telecom(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('telecom', paramValue);
    return this;
  }

  /// a token search for [active] in the resource
  /// [RelatedPerson]
  SearchRelatedPerson active(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('active', paramValue);
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [RelatedPerson]
  SearchRelatedPerson identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a string search for [name] in the resource
  /// [RelatedPerson]
  SearchRelatedPerson name(FhirString value) {
    addParameterValue('name', value.toString());
    return this;
  }

  /// a reference search for [patient] in the resource
  /// [RelatedPerson]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchRelatedPerson patient(FhirString value) {
    addParameterValue('patient', value.toString());
    return this;
  }

  /// a token search for [relationship] in the resource
  /// [RelatedPerson]
  SearchRelatedPerson relationship(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('relationship', paramValue);
    return this;
  }
}
