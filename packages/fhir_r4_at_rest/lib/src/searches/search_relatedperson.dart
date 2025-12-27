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
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('address', paramValue);
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
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('address_city', paramValue);
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
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('address_country', paramValue);
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
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('address_postalcode', paramValue);
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
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('address_state', paramValue);
    return this;
  }

  /// a token search for [addressUse] in the resource
  /// [RelatedPerson]
  SearchRelatedPerson addressUse(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('address_use', paramValue);
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
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('email', paramValue);
    return this;
  }

  /// a token search for [gender] in the resource
  /// [RelatedPerson]
  SearchRelatedPerson gender(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('gender', paramValue);
    return this;
  }

  /// a token search for [phone] in the resource
  /// [RelatedPerson]
  SearchRelatedPerson phone(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('phone', paramValue);
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
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('phonetic', paramValue);
    return this;
  }

  /// a token search for [telecom] in the resource
  /// [RelatedPerson]
  SearchRelatedPerson telecom(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('telecom', paramValue);
    return this;
  }

  /// a token search for [active] in the resource
  /// [RelatedPerson]
  SearchRelatedPerson active(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('active', paramValue);
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [RelatedPerson]
  SearchRelatedPerson identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('identifier', paramValue);
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
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('name', paramValue);
    return this;
  }

  /// a token search for [relationship] in the resource
  /// [RelatedPerson]
  SearchRelatedPerson relationship(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('relationship', paramValue);
    return this;
  }
}
