// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [ClinicalImpression] resource.
class SearchClinicalImpression extends SearchResource {
  /// a date search for [date] in the resource
  /// [ClinicalImpression]
  SearchClinicalImpression date(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('date', paramValue);
    return this;
  }

  /// a reference search for [patient] in the resource
  /// [ClinicalImpression]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchClinicalImpression patient(FhirString value) {
    addParameterValue('patient', value.toString());
    return this;
  }

  /// a reference search for [assessor] in the resource
  /// [ClinicalImpression]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchClinicalImpression assessor(FhirString value) {
    addParameterValue('assessor', value.toString());
    return this;
  }

  /// a reference search for [encounter] in the resource
  /// [ClinicalImpression]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchClinicalImpression encounter(FhirString value) {
    addParameterValue('encounter', value.toString());
    return this;
  }

  /// a token search for [findingCode] in the resource
  /// [ClinicalImpression]
  SearchClinicalImpression findingCode(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('finding-code', paramValue);
    return this;
  }

  /// a reference search for [findingRef] in the resource
  /// [ClinicalImpression]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchClinicalImpression findingRef(FhirString value) {
    addParameterValue('finding-ref', value.toString());
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [ClinicalImpression]
  SearchClinicalImpression identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a reference search for [investigation] in the resource
  /// [ClinicalImpression]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchClinicalImpression investigation(FhirString value) {
    addParameterValue('investigation', value.toString());
    return this;
  }

  /// a reference search for [previous] in the resource
  /// [ClinicalImpression]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchClinicalImpression previous(FhirString value) {
    addParameterValue('previous', value.toString());
    return this;
  }

  /// a reference search for [problem] in the resource
  /// [ClinicalImpression]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchClinicalImpression problem(FhirString value) {
    addParameterValue('problem', value.toString());
    return this;
  }

  /// a token search for [status] in the resource
  /// [ClinicalImpression]
  SearchClinicalImpression status(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('status', paramValue);
    return this;
  }

  /// a reference search for [subject] in the resource
  /// [ClinicalImpression]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchClinicalImpression subject(FhirString value) {
    addParameterValue('subject', value.toString());
    return this;
  }

  /// a reference search for [supportingInfo] in the resource
  /// [ClinicalImpression]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchClinicalImpression supportingInfo(FhirString value) {
    addParameterValue('supporting-info', value.toString());
    return this;
  }
}
