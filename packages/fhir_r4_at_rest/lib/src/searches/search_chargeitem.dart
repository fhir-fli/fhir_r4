// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [ChargeItem] resource.
class SearchChargeItem extends SearchResource {
  /// a token search for [code] in the resource
  /// [ChargeItem]
  SearchChargeItem code(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('code', paramValue);
    return this;
  }

  /// a date search for [enteredDate] in the resource
  /// [ChargeItem]
  SearchChargeItem enteredDate(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('entered-date', paramValue);
    return this;
  }

  /// a numerical search for [factorOverride] in the resource
  /// [ChargeItem]
  SearchChargeItem factorOverride(
    FhirDecimal value, {
    SearchModifier? modifier,
  }) {
    final paramValue = modifier != null ? '$modifier$value' : value.toString();
    addParameterValue('factor-override', paramValue);
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [ChargeItem]
  SearchChargeItem identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a date search for [occurrence] in the resource
  /// [ChargeItem]
  SearchChargeItem occurrence(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('occurrence', paramValue);
    return this;
  }

  /// a token search for [performerFunction] in the resource
  /// [ChargeItem]
  SearchChargeItem performerFunction(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('performer-function', paramValue);
    return this;
  }

  /// a quantity search for [priceOverride] in the resource
  /// [ChargeItem]
  SearchChargeItem priceOverride(
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
    addParameterValue('price-override', paramValue);
    return this;
  }

  /// a quantity search for [quantity] in the resource
  /// [ChargeItem]
  SearchChargeItem quantity(
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
    addParameterValue('quantity', paramValue);
    return this;
  }
}
