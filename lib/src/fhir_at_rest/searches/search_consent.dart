// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';

/// A class to build query parameters for RESTful requests for the Consent resource.
class SearchConsent extends SearchResource {
  /// a date search for [date] in the reosurce Consent
  SearchConsent date(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}date'] = value.toString();
    return this;
  }

  /// a token search for [identifier] in the reosurce Consent
  SearchConsent identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [action] in the reosurce Consent
  SearchConsent action(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}action'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [category] in the reosurce Consent
  SearchConsent category(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}category'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a date search for [period] in the reosurce Consent
  SearchConsent period(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}period'] =
        value.toString();
    return this;
  }

  /// a token search for [purpose] in the reosurce Consent
  SearchConsent purpose(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}purpose'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [scope] in the reosurce Consent
  SearchConsent scope(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}scope'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [securityLabel] in the reosurce Consent
  SearchConsent securityLabel(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}security_label'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [status] in the reosurce Consent
  SearchConsent status(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }
}
