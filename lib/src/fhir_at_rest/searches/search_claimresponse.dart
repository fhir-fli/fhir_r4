// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';

/// A class to build query parameters for RESTful requests for the ClaimResponse resource.
class SearchClaimResponse extends SearchResource {
  /// a date search for [created] in the reosurce ClaimResponse
  SearchClaimResponse created(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}created'] =
        value.toString();
    return this;
  }

  /// a string search for [disposition] in the reosurce ClaimResponse
  SearchClaimResponse disposition(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['${modifier != null ? '$modifier' : ''}disposition'] =
        value.toString();
    return this;
  }

  /// a token search for [identifier] in the reosurce ClaimResponse
  SearchClaimResponse identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [outcome] in the reosurce ClaimResponse
  SearchClaimResponse outcome(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}outcome'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a date search for [paymentDate] in the reosurce ClaimResponse
  SearchClaimResponse paymentDate(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}payment_date'] =
        value.toString();
    return this;
  }

  /// a token search for [status] in the reosurce ClaimResponse
  SearchClaimResponse status(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [use] in the reosurce ClaimResponse
  SearchClaimResponse use(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}use'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }
}
