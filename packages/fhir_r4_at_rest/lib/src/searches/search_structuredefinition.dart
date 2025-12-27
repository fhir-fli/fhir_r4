// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

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
    parameters['context'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
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
    parameters['context_quantity'] = (modifier != null
        ? '$modifier$value|${system?.toString() ?? ''}|${unit?.toString() ?? ''}'
        : '$value|${system?.toString() ?? ''}|${unit?.toString() ?? ''}');
    return this;
  }

  /// a token search for [contextType] in the resource
  /// [StructureDefinition]
  SearchStructureDefinition contextType(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['context_type'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a date search for [date] in the resource
  /// [StructureDefinition]
  SearchStructureDefinition date(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['date'] =
        (modifier != null ? '$modifier$value' : value.toString());
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
    parameters['description'] =
        (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a token search for [jurisdiction] in the resource
  /// [StructureDefinition]
  SearchStructureDefinition jurisdiction(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['jurisdiction'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
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
    parameters['name'] =
        (modifier != null ? '$modifier$value' : value.toString());
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
    parameters['publisher'] =
        (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a token search for [status] in the resource
  /// [StructureDefinition]
  SearchStructureDefinition status(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['status'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
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
    parameters['title'] =
        (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a uri search for [url] in the resource
  /// [StructureDefinition]
  SearchStructureDefinition url(
    FhirUri value, {
    SearchModifier? modifier,
  }) {
    parameters['url'] =
        (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a token search for [version] in the resource
  /// [StructureDefinition]
  SearchStructureDefinition version(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['version'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [StructureDefinition]
  SearchStructureDefinition identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['identifier'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a token search for [abstract] in the resource
  /// [StructureDefinition]
  SearchStructureDefinition abstract(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['abstract'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a token search for [basePath] in the resource
  /// [StructureDefinition]
  SearchStructureDefinition basePath(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['base_path'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a token search for [derivation] in the resource
  /// [StructureDefinition]
  SearchStructureDefinition derivation(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['derivation'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a token search for [experimental] in the resource
  /// [StructureDefinition]
  SearchStructureDefinition experimental(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['experimental'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a token search for [extContext] in the resource
  /// [StructureDefinition]
  SearchStructureDefinition extContext(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['ext_context'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a token search for [keyword] in the resource
  /// [StructureDefinition]
  SearchStructureDefinition keyword(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['keyword'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a token search for [kind] in the resource
  /// [StructureDefinition]
  SearchStructureDefinition kind(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['kind'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a token search for [path] in the resource
  /// [StructureDefinition]
  SearchStructureDefinition path(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['path'] = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }

  /// a uri search for [type] in the resource
  /// [StructureDefinition]
  SearchStructureDefinition type(
    FhirUri value, {
    SearchModifier? modifier,
  }) {
    parameters['type'] =
        (modifier != null ? '$modifier$value' : value.toString());
    return this;
  }
}
