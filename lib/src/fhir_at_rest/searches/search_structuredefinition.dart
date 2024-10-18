// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';

/// A class to build query parameters for RESTful requests for
/// the [StructureDefinition] resource.
class SearchStructureDefinition extends SearchResource {
  /// a token search for [context] in the resource
  /// [StructureDefinition]
  SearchStructureDefinition context(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}context'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a quantity search for [contextQuantity] in the resource
  /// [StructureDefinition]
  SearchStructureDefinition contextQuantity(
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

  /// a token search for [contextType] in the resource
  /// [StructureDefinition]
  SearchStructureDefinition contextType(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}context_type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a date search for [date] in the resource
  /// [StructureDefinition]
  SearchStructureDefinition date(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}date'] = value.toString();
    return this;
  }

  /// a string search for [description] in the resource
  /// [StructureDefinition]
  SearchStructureDefinition description(
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

  /// a token search for [jurisdiction] in the resource
  /// [StructureDefinition]
  SearchStructureDefinition jurisdiction(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}jurisdiction'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a string search for [name] in the resource
  /// [StructureDefinition]
  SearchStructureDefinition name(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['${modifier != null ? '$modifier' : ''}name'] = value.toString();
    return this;
  }

  /// a string search for [publisher] in the resource
  /// [StructureDefinition]
  SearchStructureDefinition publisher(
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

  /// a token search for [status] in the resource
  /// [StructureDefinition]
  SearchStructureDefinition status(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a string search for [title] in the resource
  /// [StructureDefinition]
  SearchStructureDefinition title(
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

  /// a uri search for [url] in the resource
  /// [StructureDefinition]
  SearchStructureDefinition url(
    FhirUri value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}url'] = value.toString();
    return this;
  }

  /// a token search for [version] in the resource
  /// [StructureDefinition]
  SearchStructureDefinition version(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}version'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [StructureDefinition]
  SearchStructureDefinition identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [abstract] in the resource
  /// [StructureDefinition]
  SearchStructureDefinition abstract(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}abstract'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [basePath] in the resource
  /// [StructureDefinition]
  SearchStructureDefinition basePath(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}base_path'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [derivation] in the resource
  /// [StructureDefinition]
  SearchStructureDefinition derivation(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}derivation'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [experimental] in the resource
  /// [StructureDefinition]
  SearchStructureDefinition experimental(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}experimental'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [extContext] in the resource
  /// [StructureDefinition]
  SearchStructureDefinition extContext(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}ext_context'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [keyword] in the resource
  /// [StructureDefinition]
  SearchStructureDefinition keyword(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}keyword'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [kind] in the resource
  /// [StructureDefinition]
  SearchStructureDefinition kind(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}kind'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [path] in the resource
  /// [StructureDefinition]
  SearchStructureDefinition path(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}path'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a uri search for [type] in the resource
  /// [StructureDefinition]
  SearchStructureDefinition type(
    FhirUri value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}type'] = value.toString();
    return this;
  }
}
