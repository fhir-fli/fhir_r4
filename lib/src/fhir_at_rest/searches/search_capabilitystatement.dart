// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';

/// A class to build query parameters for RESTful requests for the CapabilityStatement resource.
class SearchCapabilityStatement extends SearchResource {
  /// a token search for [context] in the reosurce CapabilityStatement
  SearchCapabilityStatement context(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}context'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a quantity search for [contextQuantity] in the reosurce CapabilityStatement
  SearchCapabilityStatement contextQuantity(
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

  /// a token search for [contextType] in the reosurce CapabilityStatement
  SearchCapabilityStatement contextType(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}context_type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a date search for [date] in the reosurce CapabilityStatement
  SearchCapabilityStatement date(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}date'] = value.toString();
    return this;
  }

  /// a string search for [description] in the reosurce CapabilityStatement
  SearchCapabilityStatement description(
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

  /// a token search for [fhirversion] in the reosurce CapabilityStatement
  SearchCapabilityStatement fhirversion(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}fhirversion'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [format] in the reosurce CapabilityStatement
  SearchCapabilityStatement format(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}format'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [jurisdiction] in the reosurce CapabilityStatement
  SearchCapabilityStatement jurisdiction(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}jurisdiction'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [mode] in the reosurce CapabilityStatement
  SearchCapabilityStatement mode(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}mode'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a string search for [name] in the reosurce CapabilityStatement
  SearchCapabilityStatement name(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['${modifier != null ? '$modifier' : ''}name'] = value.toString();
    return this;
  }

  /// a string search for [publisher] in the reosurce CapabilityStatement
  SearchCapabilityStatement publisher(
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

  /// a token search for [resource] in the reosurce CapabilityStatement
  SearchCapabilityStatement resource(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}resource'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [securityService] in the reosurce CapabilityStatement
  SearchCapabilityStatement securityService(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}security_service'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a string search for [software] in the reosurce CapabilityStatement
  SearchCapabilityStatement software(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['${modifier != null ? '$modifier' : ''}software'] =
        value.toString();
    return this;
  }

  /// a token search for [status] in the reosurce CapabilityStatement
  SearchCapabilityStatement status(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a string search for [title] in the reosurce CapabilityStatement
  SearchCapabilityStatement title(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['${modifier != null ? '$modifier' : ''}title'] =
        value.toString();
    return this;
  }

  /// a uri search for [url] in the reosurce CapabilityStatement
  SearchCapabilityStatement url(FhirUri value, {SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}url'] = value.toString();
    return this;
  }

  /// a token search for [version] in the reosurce CapabilityStatement
  SearchCapabilityStatement version(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}version'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }
}
