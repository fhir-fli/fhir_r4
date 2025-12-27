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
    SearchModifier? modifier,
  }) {
    parameters['active'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a string search for [address] in the resource
  /// [Patient]
  SearchPatient address(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['address'] =
        (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a string search for [addressCity] in the resource
  /// [Patient]
  SearchPatient addressCity(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['address_city'] =
        (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a string search for [addressCountry] in the resource
  /// [Patient]
  SearchPatient addressCountry(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['address_country'] =
        (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a string search for [addressPostalcode] in the resource
  /// [Patient]
  SearchPatient addressPostalcode(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['address_postalcode'] =
        (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a string search for [addressState] in the resource
  /// [Patient]
  SearchPatient addressState(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['address_state'] =
        (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a token search for [addressUse] in the resource
  /// [Patient]
  SearchPatient addressUse(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['address_use'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a date search for [birthdate] in the resource
  /// [Patient]
  SearchPatient birthdate(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['birthdate'] =
        (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a date search for [deathDate] in the resource
  /// [Patient]
  SearchPatient deathDate(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['death_date'] =
        (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a token search for [deceased] in the resource
  /// [Patient]
  SearchPatient deceased(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['deceased'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a token search for [email] in the resource
  /// [Patient]
  SearchPatient email(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['email'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a string search for [family] in the resource
  /// [Patient]
  SearchPatient family(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['family'] =
        (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a token search for [gender] in the resource
  /// [Patient]
  SearchPatient gender(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['gender'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a string search for [given] in the resource
  /// [Patient]
  SearchPatient given(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['given'] =
        (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [Patient]
  SearchPatient identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['identifier'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a token search for [language] in the resource
  /// [Patient]
  SearchPatient language(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['language'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a string search for [name] in the resource
  /// [Patient]
  SearchPatient name(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['name'] =
        (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a token search for [phone] in the resource
  /// [Patient]
  SearchPatient phone(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['phone'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a string search for [phonetic] in the resource
  /// [Patient]
  SearchPatient phonetic(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['phonetic'] =
        (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a token search for [telecom] in the resource
  /// [Patient]
  SearchPatient telecom(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['telecom'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }
}
