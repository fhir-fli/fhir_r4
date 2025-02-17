// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';

/// A class to build query parameters for RESTful requests for
/// the [MedicinalProductDefinition] resource.
class SearchMedicinalProductDefinition extends SearchResource {
  /// a token search for [characteristic] in the resource
  /// [MedicinalProductDefinition]
  SearchMedicinalProductDefinition characteristic(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}characteristic'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [characteristicType] in the resource
  /// [MedicinalProductDefinition]
  SearchMedicinalProductDefinition characteristicType(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}characteristic_type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [domain] in the resource
  /// [MedicinalProductDefinition]
  SearchMedicinalProductDefinition domain(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}domain'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [MedicinalProductDefinition]
  SearchMedicinalProductDefinition identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [ingredient] in the resource
  /// [MedicinalProductDefinition]
  SearchMedicinalProductDefinition ingredient(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}ingredient'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a string search for [name] in the resource
  /// [MedicinalProductDefinition]
  SearchMedicinalProductDefinition name(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['${modifier != null ? '$modifier' : ''}name'] = value.toString();
    return this;
  }

  /// a token search for [nameLanguage] in the resource
  /// [MedicinalProductDefinition]
  SearchMedicinalProductDefinition nameLanguage(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}name_language'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [productClassification] in the resource
  /// [MedicinalProductDefinition]
  SearchMedicinalProductDefinition productClassification(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}product_classification'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [status] in the resource
  /// [MedicinalProductDefinition]
  SearchMedicinalProductDefinition status(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [type] in the resource
  /// [MedicinalProductDefinition]
  SearchMedicinalProductDefinition type(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }
}
