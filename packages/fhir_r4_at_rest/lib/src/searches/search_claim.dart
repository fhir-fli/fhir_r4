// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [Claim] resource.
class SearchClaim extends SearchResource {
  /// a reference search for [careTeam] in the resource
  /// [Claim]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchClaim careTeam(FhirString value) {
    addParameterValue('care-team', value.toString());
    return this;
  }

  /// a date search for [created] in the resource
  /// [Claim]
  SearchClaim created(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('created', paramValue);
    return this;
  }

  /// a reference search for [detailUdi] in the resource
  /// [Claim]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchClaim detailUdi(FhirString value) {
    addParameterValue('detail-udi', value.toString());
    return this;
  }

  /// a reference search for [encounter] in the resource
  /// [Claim]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchClaim encounter(FhirString value) {
    addParameterValue('encounter', value.toString());
    return this;
  }

  /// a reference search for [enterer] in the resource
  /// [Claim]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchClaim enterer(FhirString value) {
    addParameterValue('enterer', value.toString());
    return this;
  }

  /// a reference search for [facility] in the resource
  /// [Claim]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchClaim facility(FhirString value) {
    addParameterValue('facility', value.toString());
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [Claim]
  SearchClaim identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a reference search for [insurer] in the resource
  /// [Claim]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchClaim insurer(FhirString value) {
    addParameterValue('insurer', value.toString());
    return this;
  }

  /// a reference search for [itemUdi] in the resource
  /// [Claim]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchClaim itemUdi(FhirString value) {
    addParameterValue('item-udi', value.toString());
    return this;
  }

  /// a reference search for [patient] in the resource
  /// [Claim]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchClaim patient(FhirString value) {
    addParameterValue('patient', value.toString());
    return this;
  }

  /// a reference search for [payee] in the resource
  /// [Claim]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchClaim payee(FhirString value) {
    addParameterValue('payee', value.toString());
    return this;
  }

  /// a token search for [priority] in the resource
  /// [Claim]
  SearchClaim priority(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('priority', paramValue);
    return this;
  }

  /// a reference search for [procedureUdi] in the resource
  /// [Claim]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchClaim procedureUdi(FhirString value) {
    addParameterValue('procedure-udi', value.toString());
    return this;
  }

  /// a reference search for [provider] in the resource
  /// [Claim]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchClaim provider(FhirString value) {
    addParameterValue('provider', value.toString());
    return this;
  }

  /// a token search for [status] in the resource
  /// [Claim]
  SearchClaim status(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('status', paramValue);
    return this;
  }

  /// a reference search for [subdetailUdi] in the resource
  /// [Claim]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchClaim subdetailUdi(FhirString value) {
    addParameterValue('subdetail-udi', value.toString());
    return this;
  }

  /// a token search for [use] in the resource
  /// [Claim]
  SearchClaim use(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('use', paramValue);
    return this;
  }
}
