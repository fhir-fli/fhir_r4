// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [ExplanationOfBenefit] resource.
class SearchExplanationOfBenefit extends SearchResource {
  /// a reference search for [careTeam] in the resource
  /// [ExplanationOfBenefit]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchExplanationOfBenefit careTeam(FhirString value) {
    addParameterValue('care-team', value.toString());
    return this;
  }

  /// a reference search for [claim] in the resource
  /// [ExplanationOfBenefit]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchExplanationOfBenefit claim(FhirString value) {
    addParameterValue('claim', value.toString());
    return this;
  }

  /// a reference search for [coverage] in the resource
  /// [ExplanationOfBenefit]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchExplanationOfBenefit coverage(FhirString value) {
    addParameterValue('coverage', value.toString());
    return this;
  }

  /// a date search for [created] in the resource
  /// [ExplanationOfBenefit]
  SearchExplanationOfBenefit created(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('created', paramValue);
    return this;
  }

  /// a reference search for [detailUdi] in the resource
  /// [ExplanationOfBenefit]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchExplanationOfBenefit detailUdi(FhirString value) {
    addParameterValue('detail-udi', value.toString());
    return this;
  }

  /// a string search for [disposition] in the resource
  /// [ExplanationOfBenefit]
  SearchExplanationOfBenefit disposition(FhirString value) {
    addParameterValue('disposition', value.toString());
    return this;
  }

  /// a reference search for [encounter] in the resource
  /// [ExplanationOfBenefit]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchExplanationOfBenefit encounter(FhirString value) {
    addParameterValue('encounter', value.toString());
    return this;
  }

  /// a reference search for [enterer] in the resource
  /// [ExplanationOfBenefit]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchExplanationOfBenefit enterer(FhirString value) {
    addParameterValue('enterer', value.toString());
    return this;
  }

  /// a reference search for [facility] in the resource
  /// [ExplanationOfBenefit]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchExplanationOfBenefit facility(FhirString value) {
    addParameterValue('facility', value.toString());
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [ExplanationOfBenefit]
  SearchExplanationOfBenefit identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a reference search for [itemUdi] in the resource
  /// [ExplanationOfBenefit]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchExplanationOfBenefit itemUdi(FhirString value) {
    addParameterValue('item-udi', value.toString());
    return this;
  }

  /// a reference search for [patient] in the resource
  /// [ExplanationOfBenefit]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchExplanationOfBenefit patient(FhirString value) {
    addParameterValue('patient', value.toString());
    return this;
  }

  /// a reference search for [payee] in the resource
  /// [ExplanationOfBenefit]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchExplanationOfBenefit payee(FhirString value) {
    addParameterValue('payee', value.toString());
    return this;
  }

  /// a reference search for [procedureUdi] in the resource
  /// [ExplanationOfBenefit]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchExplanationOfBenefit procedureUdi(FhirString value) {
    addParameterValue('procedure-udi', value.toString());
    return this;
  }

  /// a reference search for [provider] in the resource
  /// [ExplanationOfBenefit]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchExplanationOfBenefit provider(FhirString value) {
    addParameterValue('provider', value.toString());
    return this;
  }

  /// a token search for [status] in the resource
  /// [ExplanationOfBenefit]
  SearchExplanationOfBenefit status(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('status', paramValue);
    return this;
  }

  /// a reference search for [subdetailUdi] in the resource
  /// [ExplanationOfBenefit]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchExplanationOfBenefit subdetailUdi(FhirString value) {
    addParameterValue('subdetail-udi', value.toString());
    return this;
  }
}
