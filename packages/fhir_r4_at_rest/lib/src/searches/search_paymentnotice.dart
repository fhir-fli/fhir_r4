// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [PaymentNotice] resource.
class SearchPaymentNotice extends SearchResource {
  /// a date search for [created] in the resource
  /// [PaymentNotice]
  SearchPaymentNotice created(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('created', paramValue);
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [PaymentNotice]
  SearchPaymentNotice identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a token search for [paymentStatus] in the resource
  /// [PaymentNotice]
  SearchPaymentNotice paymentStatus(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('payment-status', paramValue);
    return this;
  }

  /// a reference search for [provider] in the resource
  /// [PaymentNotice]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchPaymentNotice provider(FhirString value) {
    addParameterValue('provider', value.toString());
    return this;
  }

  /// a reference search for [request] in the resource
  /// [PaymentNotice]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchPaymentNotice request(FhirString value) {
    addParameterValue('request', value.toString());
    return this;
  }

  /// a reference search for [response] in the resource
  /// [PaymentNotice]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchPaymentNotice response(FhirString value) {
    addParameterValue('response', value.toString());
    return this;
  }

  /// a token search for [status] in the resource
  /// [PaymentNotice]
  SearchPaymentNotice status(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('status', paramValue);
    return this;
  }
}
