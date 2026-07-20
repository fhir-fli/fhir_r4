// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [Condition] resource.
class SearchCondition extends SearchResource {
  /// a token search for [code] in the resource
  /// [Condition]
  SearchCondition code(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('code', paramValue);
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [Condition]
  SearchCondition identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a reference search for [patient] in the resource
  /// [Condition]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchCondition patient(FhirString value) {
    addParameterValue('patient', value.toString());
    return this;
  }

  /// a quantity search for [abatementAge] in the resource
  /// [Condition]
  SearchCondition abatementAge(
    FhirDecimal value, {
    FhirString? unit,
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final numberPart = modifier != null ? '$modifier$value' : value.toString();
    final paramValue = (system == null && unit == null)
        ? numberPart
        : '$numberPart|${system?.toString() ?? ''}|'
            '${unit?.toString() ?? ''}';
    addParameterValue('abatement-age', paramValue);
    return this;
  }

  /// a date search for [abatementDate] in the resource
  /// [Condition]
  SearchCondition abatementDate(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('abatement-date', paramValue);
    return this;
  }

  /// a string search for [abatementString] in the resource
  /// [Condition]
  SearchCondition abatementString(FhirString value) {
    addParameterValue('abatement-string', value.toString());
    return this;
  }

  /// a reference search for [asserter] in the resource
  /// [Condition]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchCondition asserter(FhirString value) {
    addParameterValue('asserter', value.toString());
    return this;
  }

  /// a token search for [bodySite] in the resource
  /// [Condition]
  SearchCondition bodySite(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('body-site', paramValue);
    return this;
  }

  /// a token search for [category] in the resource
  /// [Condition]
  SearchCondition category(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('category', paramValue);
    return this;
  }

  /// a token search for [clinicalStatus] in the resource
  /// [Condition]
  SearchCondition clinicalStatus(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('clinical-status', paramValue);
    return this;
  }

  /// a reference search for [encounter] in the resource
  /// [Condition]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchCondition encounter(FhirString value) {
    addParameterValue('encounter', value.toString());
    return this;
  }

  /// a token search for [evidence] in the resource
  /// [Condition]
  SearchCondition evidence(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('evidence', paramValue);
    return this;
  }

  /// a reference search for [evidenceDetail] in the resource
  /// [Condition]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchCondition evidenceDetail(FhirString value) {
    addParameterValue('evidence-detail', value.toString());
    return this;
  }

  /// a quantity search for [onsetAge] in the resource
  /// [Condition]
  SearchCondition onsetAge(
    FhirDecimal value, {
    FhirString? unit,
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final numberPart = modifier != null ? '$modifier$value' : value.toString();
    final paramValue = (system == null && unit == null)
        ? numberPart
        : '$numberPart|${system?.toString() ?? ''}|'
            '${unit?.toString() ?? ''}';
    addParameterValue('onset-age', paramValue);
    return this;
  }

  /// a date search for [onsetDate] in the resource
  /// [Condition]
  SearchCondition onsetDate(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('onset-date', paramValue);
    return this;
  }

  /// a string search for [onsetInfo] in the resource
  /// [Condition]
  SearchCondition onsetInfo(FhirString value) {
    addParameterValue('onset-info', value.toString());
    return this;
  }

  /// a date search for [recordedDate] in the resource
  /// [Condition]
  SearchCondition recordedDate(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('recorded-date', paramValue);
    return this;
  }

  /// a token search for [severity] in the resource
  /// [Condition]
  SearchCondition severity(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('severity', paramValue);
    return this;
  }

  /// a token search for [stage] in the resource
  /// [Condition]
  SearchCondition stage(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('stage', paramValue);
    return this;
  }

  /// a reference search for [subject] in the resource
  /// [Condition]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchCondition subject(FhirString value) {
    addParameterValue('subject', value.toString());
    return this;
  }

  /// a token search for [verificationStatus] in the resource
  /// [Condition]
  SearchCondition verificationStatus(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('verification-status', paramValue);
    return this;
  }
}
