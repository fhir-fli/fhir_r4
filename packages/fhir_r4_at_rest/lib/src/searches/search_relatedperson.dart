// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [RelatedPerson] resource.
class SearchRelatedPerson extends SearchResource {
  /// a string search for [address] in the resource
  /// [RelatedPerson]
  SearchRelatedPerson address(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['${modifier != null ? '$modifier' : ''}address'] =
        value.toString();
    return this;
  }

  /// a string search for [addressCity] in the resource
  /// [RelatedPerson]
  SearchRelatedPerson addressCity(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['${modifier != null ? '$modifier' : ''}address_city'] =
        value.toString();
    return this;
  }

  /// a string search for [addressCountry] in the resource
  /// [RelatedPerson]
  SearchRelatedPerson addressCountry(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['${modifier != null ? '$modifier' : ''}address_country'] =
        value.toString();
    return this;
  }

  /// a string search for [addressPostalcode] in the resource
  /// [RelatedPerson]
  SearchRelatedPerson addressPostalcode(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['${modifier != null ? '$modifier' : ''}address_postalcode'] =
        value.toString();
    return this;
  }

  /// a string search for [addressState] in the resource
  /// [RelatedPerson]
  SearchRelatedPerson addressState(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['${modifier != null ? '$modifier' : ''}address_state'] =
        value.toString();
    return this;
  }

  /// a token search for [addressUse] in the resource
  /// [RelatedPerson]
  SearchRelatedPerson addressUse(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}address_use'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a date search for [birthdate] in the resource
  /// [RelatedPerson]
  SearchRelatedPerson birthdate(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}birthdate'] =
        value.toString();
    return this;
  }

  /// a token search for [email] in the resource
  /// [RelatedPerson]
  SearchRelatedPerson email(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}email'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [gender] in the resource
  /// [RelatedPerson]
  SearchRelatedPerson gender(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}gender'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [phone] in the resource
  /// [RelatedPerson]
  SearchRelatedPerson phone(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}phone'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a string search for [phonetic] in the resource
  /// [RelatedPerson]
  SearchRelatedPerson phonetic(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['${modifier != null ? '$modifier' : ''}phonetic'] =
        value.toString();
    return this;
  }

  /// a token search for [telecom] in the resource
  /// [RelatedPerson]
  SearchRelatedPerson telecom(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}telecom'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [active] in the resource
  /// [RelatedPerson]
  SearchRelatedPerson active(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}active'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [RelatedPerson]
  SearchRelatedPerson identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a string search for [name] in the resource
  /// [RelatedPerson]
  SearchRelatedPerson name(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['${modifier != null ? '$modifier' : ''}name'] = value.toString();
    return this;
  }

  /// a token search for [relationship] in the resource
  /// [RelatedPerson]
  SearchRelatedPerson relationship(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}relationship'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }
}
