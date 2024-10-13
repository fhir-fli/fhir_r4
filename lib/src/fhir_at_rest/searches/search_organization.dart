// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';

/// A class to build query parameters for RESTful requests for the Organization resource.
class SearchOrganization extends SearchResource {
  /// a token search for [active] in the reosurce Organization
  SearchOrganization active(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}active'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a string search for [address] in the reosurce Organization
  SearchOrganization address(
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

  /// a string search for [addressCity] in the reosurce Organization
  SearchOrganization addressCity(
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

  /// a string search for [addressCountry] in the reosurce Organization
  SearchOrganization addressCountry(
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

  /// a string search for [addressPostalcode] in the reosurce Organization
  SearchOrganization addressPostalcode(
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

  /// a string search for [addressState] in the reosurce Organization
  SearchOrganization addressState(
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

  /// a token search for [addressUse] in the reosurce Organization
  SearchOrganization addressUse(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}address_use'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [identifier] in the reosurce Organization
  SearchOrganization identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a string search for [name] in the reosurce Organization
  SearchOrganization name(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['${modifier != null ? '$modifier' : ''}name'] = value.toString();
    return this;
  }

  /// a string search for [phonetic] in the reosurce Organization
  SearchOrganization phonetic(
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

  /// a token search for [type] in the reosurce Organization
  SearchOrganization type(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }
}
