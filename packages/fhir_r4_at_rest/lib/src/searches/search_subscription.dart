// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [Subscription] resource.
class SearchSubscription extends SearchResource {
  /// a token search for [contact] in the resource
  /// [Subscription]
  SearchSubscription contact(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('contact', paramValue);
    return this;
  }

  /// a string search for [criteria] in the resource
  /// [Subscription]
  SearchSubscription criteria(FhirString value) {
    addParameterValue('criteria', value.toString());
    return this;
  }

  /// a token search for [payload] in the resource
  /// [Subscription]
  SearchSubscription payload(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('payload', paramValue);
    return this;
  }

  /// a token search for [status] in the resource
  /// [Subscription]
  SearchSubscription status(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('status', paramValue);
    return this;
  }

  /// a token search for [type] in the resource
  /// [Subscription]
  SearchSubscription type(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('type', paramValue);
    return this;
  }

  /// a uri search for [url] in the resource
  /// [Subscription]
  SearchSubscription url(FhirUri value) {
    addParameterValue('url', value.toString());
    return this;
  }
}
