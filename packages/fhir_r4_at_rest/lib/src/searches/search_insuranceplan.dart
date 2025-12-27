// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [InsurancePlan] resource.
class SearchInsurancePlan extends SearchResource {
  /// a string search for [address] in the resource
  /// [InsurancePlan]
  SearchInsurancePlan address(
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
  /// [InsurancePlan]
  SearchInsurancePlan addressCity(
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
  /// [InsurancePlan]
  SearchInsurancePlan addressCountry(
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
  /// [InsurancePlan]
  SearchInsurancePlan addressPostalcode(
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
  /// [InsurancePlan]
  SearchInsurancePlan addressState(
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
  /// [InsurancePlan]
  SearchInsurancePlan addressUse(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['address_use'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [InsurancePlan]
  SearchInsurancePlan identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['identifier'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a string search for [name] in the resource
  /// [InsurancePlan]
  SearchInsurancePlan name(
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

  /// a string search for [phonetic] in the resource
  /// [InsurancePlan]
  SearchInsurancePlan phonetic(
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

  /// a token search for [status] in the resource
  /// [InsurancePlan]
  SearchInsurancePlan status(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['status'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a token search for [type] in the resource
  /// [InsurancePlan]
  SearchInsurancePlan type(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['type'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }
}
