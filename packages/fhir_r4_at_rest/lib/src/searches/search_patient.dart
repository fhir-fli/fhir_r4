// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [Patient] resource.
class SearchPatient extends SearchResource {
  /// a token search for [active] in the resource
  /// [Patient]
  SearchPatient active(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('active', paramValue);
    return this;
  }

  /// a string search for [address] in the resource
  /// [Patient]
  SearchPatient address(FhirString value) {
    addParameterValue('address', value.toString());
    return this;
  }

  /// a string search for [addressCity] in the resource
  /// [Patient]
  SearchPatient addressCity(FhirString value) {
    addParameterValue('address-city', value.toString());
    return this;
  }

  /// a string search for [addressCountry] in the resource
  /// [Patient]
  SearchPatient addressCountry(FhirString value) {
    addParameterValue('address-country', value.toString());
    return this;
  }

  /// a string search for [addressPostalcode] in the resource
  /// [Patient]
  SearchPatient addressPostalcode(FhirString value) {
    addParameterValue('address-postalcode', value.toString());
    return this;
  }

  /// a string search for [addressState] in the resource
  /// [Patient]
  SearchPatient addressState(FhirString value) {
    addParameterValue('address-state', value.toString());
    return this;
  }

  /// a token search for [addressUse] in the resource
  /// [Patient]
  SearchPatient addressUse(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('address-use', paramValue);
    return this;
  }

  /// a date search for [birthdate] in the resource
  /// [Patient]
  SearchPatient birthdate(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('birthdate', paramValue);
    return this;
  }

  /// a date search for [deathDate] in the resource
  /// [Patient]
  SearchPatient deathDate(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('death-date', paramValue);
    return this;
  }

  /// a token search for [deceased] in the resource
  /// [Patient]
  SearchPatient deceased(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('deceased', paramValue);
    return this;
  }

  /// a token search for [email] in the resource
  /// [Patient]
  SearchPatient email(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('email', paramValue);
    return this;
  }

  /// a string search for [family] in the resource
  /// [Patient]
  SearchPatient family(FhirString value) {
    addParameterValue('family', value.toString());
    return this;
  }

  /// a token search for [gender] in the resource
  /// [Patient]
  SearchPatient gender(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('gender', paramValue);
    return this;
  }

  /// a reference search for [generalPractitioner] in the resource
  /// [Patient]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchPatient generalPractitioner(FhirString value) {
    addParameterValue('general-practitioner', value.toString());
    return this;
  }

  /// a string search for [given] in the resource
  /// [Patient]
  SearchPatient given(FhirString value) {
    addParameterValue('given', value.toString());
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [Patient]
  SearchPatient identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a token search for [language] in the resource
  /// [Patient]
  SearchPatient language(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('language', paramValue);
    return this;
  }

  /// a reference search for [link] in the resource
  /// [Patient]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchPatient link(FhirString value) {
    addParameterValue('link', value.toString());
    return this;
  }

  /// a string search for [name] in the resource
  /// [Patient]
  SearchPatient name(FhirString value) {
    addParameterValue('name', value.toString());
    return this;
  }

  /// a reference search for [organization] in the resource
  /// [Patient]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchPatient organization(FhirString value) {
    addParameterValue('organization', value.toString());
    return this;
  }

  /// a token search for [phone] in the resource
  /// [Patient]
  SearchPatient phone(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('phone', paramValue);
    return this;
  }

  /// a string search for [phonetic] in the resource
  /// [Patient]
  SearchPatient phonetic(FhirString value) {
    addParameterValue('phonetic', value.toString());
    return this;
  }

  /// a token search for [telecom] in the resource
  /// [Patient]
  SearchPatient telecom(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('telecom', paramValue);
    return this;
  }
}
