// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [InsurancePlan] resource.
class SearchInsurancePlan extends SearchResource {
  /// a string search for [address] in the resource
  /// [InsurancePlan]
  SearchInsurancePlan address(FhirString value) {
    addParameterValue('address', value.toString());
    return this;
  }

  /// a string search for [addressCity] in the resource
  /// [InsurancePlan]
  SearchInsurancePlan addressCity(FhirString value) {
    addParameterValue('address-city', value.toString());
    return this;
  }

  /// a string search for [addressCountry] in the resource
  /// [InsurancePlan]
  SearchInsurancePlan addressCountry(FhirString value) {
    addParameterValue('address-country', value.toString());
    return this;
  }

  /// a string search for [addressPostalcode] in the resource
  /// [InsurancePlan]
  SearchInsurancePlan addressPostalcode(FhirString value) {
    addParameterValue('address-postalcode', value.toString());
    return this;
  }

  /// a string search for [addressState] in the resource
  /// [InsurancePlan]
  SearchInsurancePlan addressState(FhirString value) {
    addParameterValue('address-state', value.toString());
    return this;
  }

  /// a token search for [addressUse] in the resource
  /// [InsurancePlan]
  SearchInsurancePlan addressUse(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('address-use', paramValue);
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [InsurancePlan]
  SearchInsurancePlan identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a string search for [name] in the resource
  /// [InsurancePlan]
  SearchInsurancePlan name(FhirString value) {
    addParameterValue('name', value.toString());
    return this;
  }

  /// a string search for [phonetic] in the resource
  /// [InsurancePlan]
  SearchInsurancePlan phonetic(FhirString value) {
    addParameterValue('phonetic', value.toString());
    return this;
  }

  /// a token search for [status] in the resource
  /// [InsurancePlan]
  SearchInsurancePlan status(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('status', paramValue);
    return this;
  }

  /// a token search for [type] in the resource
  /// [InsurancePlan]
  SearchInsurancePlan type(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('type', paramValue);
    return this;
  }
}
