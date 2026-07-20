// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [SupplyDelivery] resource.
class SearchSupplyDelivery extends SearchResource {
  /// a token search for [identifier] in the resource
  /// [SupplyDelivery]
  SearchSupplyDelivery identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a reference search for [patient] in the resource
  /// [SupplyDelivery]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchSupplyDelivery patient(FhirString value) {
    addParameterValue('patient', value.toString());
    return this;
  }

  /// a reference search for [receiver] in the resource
  /// [SupplyDelivery]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchSupplyDelivery receiver(FhirString value) {
    addParameterValue('receiver', value.toString());
    return this;
  }

  /// a token search for [status] in the resource
  /// [SupplyDelivery]
  SearchSupplyDelivery status(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('status', paramValue);
    return this;
  }

  /// a reference search for [supplier] in the resource
  /// [SupplyDelivery]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchSupplyDelivery supplier(FhirString value) {
    addParameterValue('supplier', value.toString());
    return this;
  }
}
