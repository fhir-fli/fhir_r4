// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [Consent] resource.
class SearchConsent extends SearchResource {
  /// a date search for [date] in the resource
  /// [Consent]
  SearchConsent date(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('date', paramValue);
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [Consent]
  SearchConsent identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a reference search for [patient] in the resource
  /// [Consent]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchConsent patient(FhirString value) {
    addParameterValue('patient', value.toString());
    return this;
  }

  /// a token search for [action] in the resource
  /// [Consent]
  SearchConsent action(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('action', paramValue);
    return this;
  }

  /// a reference search for [actor] in the resource
  /// [Consent]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchConsent actor(FhirString value) {
    addParameterValue('actor', value.toString());
    return this;
  }

  /// a token search for [category] in the resource
  /// [Consent]
  SearchConsent category(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('category', paramValue);
    return this;
  }

  /// a reference search for [consentor] in the resource
  /// [Consent]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchConsent consentor(FhirString value) {
    addParameterValue('consentor', value.toString());
    return this;
  }

  /// a reference search for [data] in the resource
  /// [Consent]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchConsent data(FhirString value) {
    addParameterValue('data', value.toString());
    return this;
  }

  /// a reference search for [organization] in the resource
  /// [Consent]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchConsent organization(FhirString value) {
    addParameterValue('organization', value.toString());
    return this;
  }

  /// a date search for [period] in the resource
  /// [Consent]
  SearchConsent period(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('period', paramValue);
    return this;
  }

  /// a token search for [purpose] in the resource
  /// [Consent]
  SearchConsent purpose(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('purpose', paramValue);
    return this;
  }

  /// a token search for [scope] in the resource
  /// [Consent]
  SearchConsent scope(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('scope', paramValue);
    return this;
  }

  /// a token search for [securityLabel] in the resource
  /// [Consent]
  SearchConsent securityLabel(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('security-label', paramValue);
    return this;
  }

  /// a reference search for [sourceReference] in the resource
  /// [Consent]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchConsent sourceReference(FhirString value) {
    addParameterValue('source-reference', value.toString());
    return this;
  }

  /// a token search for [status] in the resource
  /// [Consent]
  SearchConsent status(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('status', paramValue);
    return this;
  }
}
