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
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
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
    addParameterValue('entered_date', paramValue);
    return this;
  }

  /// a numerical search for [factorOverride] in the resource
  /// [ChargeItem]
  SearchChargeItem factorOverride(
    FhirDecimal value, {
    FhirString? unit,
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    if (modifier != null &&
        !['gt', 'lt', 'ge', 'le', 'ap'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for number type');
    }
    final paramValue = (modifier != null
        ? '$modifier$value|${system?.toString() ?? ''}|${unit?.toString() ?? ''}'
        : '$value|${system?.toString() ?? ''}|${unit?.toString() ?? ''}');
    addParameterValue('factor_override', paramValue);
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [ChargeItem]
  SearchChargeItem identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
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
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('performer_function', paramValue);
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
    if (modifier != null &&
        !['gt', 'lt', 'ge', 'le', 'ap'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for quantity type');
    }
    final paramValue = (modifier != null
        ? '$modifier$value|${system?.toString() ?? ''}|${unit?.toString() ?? ''}'
        : '$value|${system?.toString() ?? ''}|${unit?.toString() ?? ''}');
    addParameterValue('price_override', paramValue);
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
    if (modifier != null &&
        !['gt', 'lt', 'ge', 'le', 'ap'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for quantity type');
    }
    final paramValue = (modifier != null
        ? '$modifier$value|${system?.toString() ?? ''}|${unit?.toString() ?? ''}'
        : '$value|${system?.toString() ?? ''}|${unit?.toString() ?? ''}');
    addParameterValue('quantity', paramValue);
    return this;
  }
}
