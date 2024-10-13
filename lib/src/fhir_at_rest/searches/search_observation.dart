// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';

/// A class to build query parameters for RESTful requests for the Observation resource.
class SearchObservation extends SearchResource {
  /// a token search for [code] in the reosurce Observation
  SearchObservation code(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}code'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a date search for [date] in the reosurce Observation
  SearchObservation date(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}date'] = value.toString();
    return this;
  }

  /// a token search for [identifier] in the reosurce Observation
  SearchObservation identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [category] in the reosurce Observation
  SearchObservation category(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}category'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [comboCode] in the reosurce Observation
  SearchObservation comboCode(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}combo_code'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [comboDataAbsentReason] in the reosurce Observation
  SearchObservation comboDataAbsentReason(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters[
            '${modifier != null ? '$modifier' : ''}combo_data_absent_reason'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [comboValueConcept] in the reosurce Observation
  SearchObservation comboValueConcept(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}combo_value_concept'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a quantity search for [comboValueQuantity] in the reosurce Observation
  SearchObservation comboValueQuantity(
    FhirDecimal value, {
    FhirString? unit,
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    if (modifier != null &&
        !['gt', 'lt', 'ge', 'le', 'ap'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for quantity type');
    }
    parameters['${modifier != null ? '$modifier' : ''}combo_value_quantity'] =
        '$value|${system?.toString() ?? ''}|${unit?.toString() ?? ''}';
    return this;
  }

  /// a token search for [componentCode] in the reosurce Observation
  SearchObservation componentCode(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}component_code'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [componentDataAbsentReason] in the reosurce Observation
  SearchObservation componentDataAbsentReason(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters[
            '${modifier != null ? '$modifier' : ''}component_data_absent_reason'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [componentValueConcept] in the reosurce Observation
  SearchObservation componentValueConcept(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters[
            '${modifier != null ? '$modifier' : ''}component_value_concept'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a quantity search for [componentValueQuantity] in the reosurce Observation
  SearchObservation componentValueQuantity(
    FhirDecimal value, {
    FhirString? unit,
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    if (modifier != null &&
        !['gt', 'lt', 'ge', 'le', 'ap'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for quantity type');
    }
    parameters[
            '${modifier != null ? '$modifier' : ''}component_value_quantity'] =
        '$value|${system?.toString() ?? ''}|${unit?.toString() ?? ''}';
    return this;
  }

  /// a token search for [dataAbsentReason] in the reosurce Observation
  SearchObservation dataAbsentReason(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}data_absent_reason'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [method] in the reosurce Observation
  SearchObservation method(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}method'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [status] in the reosurce Observation
  SearchObservation status(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [valueConcept] in the reosurce Observation
  SearchObservation valueConcept(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}value_concept'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a date search for [valueDate] in the reosurce Observation
  SearchObservation valueDate(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}value_date'] =
        value.toString();
    return this;
  }

  /// a quantity search for [valueQuantity] in the reosurce Observation
  SearchObservation valueQuantity(
    FhirDecimal value, {
    FhirString? unit,
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    if (modifier != null &&
        !['gt', 'lt', 'ge', 'le', 'ap'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for quantity type');
    }
    parameters['${modifier != null ? '$modifier' : ''}value_quantity'] =
        '$value|${system?.toString() ?? ''}|${unit?.toString() ?? ''}';
    return this;
  }

  /// a string search for [valueString] in the reosurce Observation
  SearchObservation valueString(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['${modifier != null ? '$modifier' : ''}value_string'] =
        value.toString();
    return this;
  }
}
