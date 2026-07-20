// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [Invoice] resource.
class SearchInvoice extends SearchResource {
  /// a reference search for [account] in the resource
  /// [Invoice]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchInvoice account(FhirString value) {
    addParameterValue('account', value.toString());
    return this;
  }

  /// a date search for [date] in the resource
  /// [Invoice]
  SearchInvoice date(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('date', paramValue);
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [Invoice]
  SearchInvoice identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a reference search for [issuer] in the resource
  /// [Invoice]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchInvoice issuer(FhirString value) {
    addParameterValue('issuer', value.toString());
    return this;
  }

  /// a reference search for [participant] in the resource
  /// [Invoice]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchInvoice participant(FhirString value) {
    addParameterValue('participant', value.toString());
    return this;
  }

  /// a token search for [participantRole] in the resource
  /// [Invoice]
  SearchInvoice participantRole(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('participant-role', paramValue);
    return this;
  }

  /// a reference search for [patient] in the resource
  /// [Invoice]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchInvoice patient(FhirString value) {
    addParameterValue('patient', value.toString());
    return this;
  }

  /// a reference search for [recipient] in the resource
  /// [Invoice]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchInvoice recipient(FhirString value) {
    addParameterValue('recipient', value.toString());
    return this;
  }

  /// a token search for [status] in the resource
  /// [Invoice]
  SearchInvoice status(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('status', paramValue);
    return this;
  }

  /// a reference search for [subject] in the resource
  /// [Invoice]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchInvoice subject(FhirString value) {
    addParameterValue('subject', value.toString());
    return this;
  }

  /// a quantity search for [totalgross] in the resource
  /// [Invoice]
  SearchInvoice totalgross(
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
    addParameterValue('totalgross', paramValue);
    return this;
  }

  /// a quantity search for [totalnet] in the resource
  /// [Invoice]
  SearchInvoice totalnet(
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
    addParameterValue('totalnet', paramValue);
    return this;
  }

  /// a token search for [type] in the resource
  /// [Invoice]
  SearchInvoice type(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('type', paramValue);
    return this;
  }
}
