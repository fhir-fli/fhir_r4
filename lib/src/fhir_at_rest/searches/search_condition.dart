// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';

/// A class to build query parameters for RESTful requests for the Condition resource.
class SearchCondition extends SearchResource {
  /// a token search for [code] in the reosurce Condition
  SearchCondition code(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}code'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [identifier] in the reosurce Condition
  SearchCondition identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a quantity search for [abatementAge] in the reosurce Condition
  SearchCondition abatementAge(
    FhirDecimal value, {
    FhirString? unit,
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    if (modifier != null &&
        !['gt', 'lt', 'ge', 'le', 'ap'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for quantity type');
    }
    parameters['${modifier != null ? '$modifier' : ''}abatement_age'] =
        '$value|${system?.toString() ?? ''}|${unit?.toString() ?? ''}';
    return this;
  }

  /// a date search for [abatementDate] in the reosurce Condition
  SearchCondition abatementDate(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}abatement_date'] =
        value.toString();
    return this;
  }

  /// a string search for [abatementString] in the reosurce Condition
  SearchCondition abatementString(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['${modifier != null ? '$modifier' : ''}abatement_string'] =
        value.toString();
    return this;
  }

  /// a token search for [bodySite] in the reosurce Condition
  SearchCondition bodySite(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}body_site'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [category] in the reosurce Condition
  SearchCondition category(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}category'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [clinicalStatus] in the reosurce Condition
  SearchCondition clinicalStatus(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}clinical_status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [evidence] in the reosurce Condition
  SearchCondition evidence(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}evidence'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a quantity search for [onsetAge] in the reosurce Condition
  SearchCondition onsetAge(
    FhirDecimal value, {
    FhirString? unit,
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    if (modifier != null &&
        !['gt', 'lt', 'ge', 'le', 'ap'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for quantity type');
    }
    parameters['${modifier != null ? '$modifier' : ''}onset_age'] =
        '$value|${system?.toString() ?? ''}|${unit?.toString() ?? ''}';
    return this;
  }

  /// a date search for [onsetDate] in the reosurce Condition
  SearchCondition onsetDate(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}onset_date'] =
        value.toString();
    return this;
  }

  /// a string search for [onsetInfo] in the reosurce Condition
  SearchCondition onsetInfo(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['${modifier != null ? '$modifier' : ''}onset_info'] =
        value.toString();
    return this;
  }

  /// a date search for [recordedDate] in the reosurce Condition
  SearchCondition recordedDate(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}recorded_date'] =
        value.toString();
    return this;
  }

  /// a token search for [severity] in the reosurce Condition
  SearchCondition severity(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}severity'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [stage] in the reosurce Condition
  SearchCondition stage(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}stage'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [verificationStatus] in the reosurce Condition
  SearchCondition verificationStatus(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}verification_status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }
}
