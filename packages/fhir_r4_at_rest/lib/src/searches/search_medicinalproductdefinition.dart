// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [MedicinalProductDefinition] resource.
class SearchMedicinalProductDefinition extends SearchResource {
  /// a token search for [characteristic] in the resource
  /// [MedicinalProductDefinition]
  SearchMedicinalProductDefinition characteristic(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('characteristic', paramValue);
    return this;
  }

  /// a token search for [characteristicType] in the resource
  /// [MedicinalProductDefinition]
  SearchMedicinalProductDefinition characteristicType(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('characteristic-type', paramValue);
    return this;
  }

  /// a reference search for [contact] in the resource
  /// [MedicinalProductDefinition]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchMedicinalProductDefinition contact(FhirString value) {
    addParameterValue('contact', value.toString());
    return this;
  }

  /// a token search for [domain] in the resource
  /// [MedicinalProductDefinition]
  SearchMedicinalProductDefinition domain(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('domain', paramValue);
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [MedicinalProductDefinition]
  SearchMedicinalProductDefinition identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a token search for [ingredient] in the resource
  /// [MedicinalProductDefinition]
  SearchMedicinalProductDefinition ingredient(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('ingredient', paramValue);
    return this;
  }

  /// a reference search for [masterFile] in the resource
  /// [MedicinalProductDefinition]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchMedicinalProductDefinition masterFile(FhirString value) {
    addParameterValue('master-file', value.toString());
    return this;
  }

  /// a string search for [name] in the resource
  /// [MedicinalProductDefinition]
  SearchMedicinalProductDefinition name(FhirString value) {
    addParameterValue('name', value.toString());
    return this;
  }

  /// a token search for [nameLanguage] in the resource
  /// [MedicinalProductDefinition]
  SearchMedicinalProductDefinition nameLanguage(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('name-language', paramValue);
    return this;
  }

  /// a token search for [productClassification] in the resource
  /// [MedicinalProductDefinition]
  SearchMedicinalProductDefinition productClassification(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('product-classification', paramValue);
    return this;
  }

  /// a token search for [status] in the resource
  /// [MedicinalProductDefinition]
  SearchMedicinalProductDefinition status(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('status', paramValue);
    return this;
  }

  /// a token search for [type] in the resource
  /// [MedicinalProductDefinition]
  SearchMedicinalProductDefinition type(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('type', paramValue);
    return this;
  }
}
