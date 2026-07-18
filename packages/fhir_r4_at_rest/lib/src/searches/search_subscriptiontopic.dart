// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [SubscriptionTopic] resource.
class SearchSubscriptionTopic extends SearchResource {
  /// a date search for [date] in the resource
  /// [SubscriptionTopic]
  SearchSubscriptionTopic date(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('date', paramValue);
    return this;
  }

  /// a uri search for [derivedOrSelf] in the resource
  /// [SubscriptionTopic]
  SearchSubscriptionTopic derivedOrSelf(FhirUri value) {
    addParameterValue('derived-or-self', value.toString());
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [SubscriptionTopic]
  SearchSubscriptionTopic identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a uri search for [resource] in the resource
  /// [SubscriptionTopic]
  SearchSubscriptionTopic resource(FhirUri value) {
    addParameterValue('resource', value.toString());
    return this;
  }

  /// a token search for [status] in the resource
  /// [SubscriptionTopic]
  SearchSubscriptionTopic status(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('status', paramValue);
    return this;
  }

  /// a string search for [title] in the resource
  /// [SubscriptionTopic]
  SearchSubscriptionTopic title(FhirString value) {
    addParameterValue('title', value.toString());
    return this;
  }

  /// a string search for [triggerDescription] in the resource
  /// [SubscriptionTopic]
  SearchSubscriptionTopic triggerDescription(FhirString value) {
    addParameterValue('trigger-description', value.toString());
    return this;
  }

  /// a uri search for [url] in the resource
  /// [SubscriptionTopic]
  SearchSubscriptionTopic url(FhirUri value) {
    addParameterValue('url', value.toString());
    return this;
  }

  /// a token search for [version] in the resource
  /// [SubscriptionTopic]
  SearchSubscriptionTopic version(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('version', paramValue);
    return this;
  }
}
