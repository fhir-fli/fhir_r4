// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [ClinicalUseDefinition] resource.
class SearchClinicalUseDefinition extends SearchResource {
  /// a token search for [contraindication] in the resource
  /// [ClinicalUseDefinition]
  SearchClinicalUseDefinition contraindication(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('contraindication', paramValue);
    return this;
  }

  /// a reference search for [contraindicationReference] in the resource
  /// [ClinicalUseDefinition]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchClinicalUseDefinition contraindicationReference(FhirString value) {
    addParameterValue('contraindication-reference', value.toString());
    return this;
  }

  /// a token search for [effect] in the resource
  /// [ClinicalUseDefinition]
  SearchClinicalUseDefinition effect(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('effect', paramValue);
    return this;
  }

  /// a reference search for [effectReference] in the resource
  /// [ClinicalUseDefinition]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchClinicalUseDefinition effectReference(FhirString value) {
    addParameterValue('effect-reference', value.toString());
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [ClinicalUseDefinition]
  SearchClinicalUseDefinition identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a token search for [indication] in the resource
  /// [ClinicalUseDefinition]
  SearchClinicalUseDefinition indication(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('indication', paramValue);
    return this;
  }

  /// a reference search for [indicationReference] in the resource
  /// [ClinicalUseDefinition]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchClinicalUseDefinition indicationReference(FhirString value) {
    addParameterValue('indication-reference', value.toString());
    return this;
  }

  /// a token search for [interaction] in the resource
  /// [ClinicalUseDefinition]
  SearchClinicalUseDefinition interaction(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('interaction', paramValue);
    return this;
  }

  /// a reference search for [product] in the resource
  /// [ClinicalUseDefinition]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchClinicalUseDefinition product(FhirString value) {
    addParameterValue('product', value.toString());
    return this;
  }

  /// a reference search for [subject] in the resource
  /// [ClinicalUseDefinition]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchClinicalUseDefinition subject(FhirString value) {
    addParameterValue('subject', value.toString());
    return this;
  }

  /// a token search for [type] in the resource
  /// [ClinicalUseDefinition]
  SearchClinicalUseDefinition type(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('type', paramValue);
    return this;
  }
}
