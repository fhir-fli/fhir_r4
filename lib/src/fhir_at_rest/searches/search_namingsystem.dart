// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';

/// A class to build query parameters for RESTful requests for the NamingSystem resource.
class SearchNamingSystem extends SearchResource {
  /// a token search for [context] in the reosurce NamingSystem
  SearchNamingSystem context(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}context'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a quantity search for [contextQuantity] in the reosurce NamingSystem
  SearchNamingSystem contextQuantity(
    FhirDecimal value, {
    FhirString? unit,
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    if (modifier != null &&
        !['gt', 'lt', 'ge', 'le', 'ap'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for quantity type');
    }
    parameters['${modifier != null ? '$modifier' : ''}context_quantity'] =
        '$value|${system?.toString() ?? ''}|${unit?.toString() ?? ''}';
    return this;
  }

  /// a token search for [contextType] in the reosurce NamingSystem
  SearchNamingSystem contextType(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}context_type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a date search for [date] in the reosurce NamingSystem
  SearchNamingSystem date(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}date'] = value.toString();
    return this;
  }

  /// a string search for [description] in the reosurce NamingSystem
  SearchNamingSystem description(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['${modifier != null ? '$modifier' : ''}description'] =
        value.toString();
    return this;
  }

  /// a token search for [jurisdiction] in the reosurce NamingSystem
  SearchNamingSystem jurisdiction(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}jurisdiction'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a string search for [name] in the reosurce NamingSystem
  SearchNamingSystem name(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['${modifier != null ? '$modifier' : ''}name'] = value.toString();
    return this;
  }

  /// a string search for [publisher] in the reosurce NamingSystem
  SearchNamingSystem publisher(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['${modifier != null ? '$modifier' : ''}publisher'] =
        value.toString();
    return this;
  }

  /// a token search for [status] in the reosurce NamingSystem
  SearchNamingSystem status(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a string search for [contact] in the reosurce NamingSystem
  SearchNamingSystem contact(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['${modifier != null ? '$modifier' : ''}contact'] =
        value.toString();
    return this;
  }

  /// a token search for [idType] in the reosurce NamingSystem
  SearchNamingSystem idType(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}id_type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [kind] in the reosurce NamingSystem
  SearchNamingSystem kind(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}kind'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a date search for [period] in the reosurce NamingSystem
  SearchNamingSystem period(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}period'] =
        value.toString();
    return this;
  }

  /// a string search for [responsible] in the reosurce NamingSystem
  SearchNamingSystem responsible(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['${modifier != null ? '$modifier' : ''}responsible'] =
        value.toString();
    return this;
  }

  /// a token search for [telecom] in the reosurce NamingSystem
  SearchNamingSystem telecom(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}telecom'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [type] in the reosurce NamingSystem
  SearchNamingSystem type(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a string search for [value] in the reosurce NamingSystem
  SearchNamingSystem value(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['${modifier != null ? '$modifier' : ''}value'] =
        value.toString();
    return this;
  }
}
