// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [ConceptMap] resource.
class SearchConceptMap extends SearchResource {
  /// a token search for [context] in the resource
  /// [ConceptMap]
  SearchConceptMap context(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}context'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a quantity search for [contextQuantity] in the resource
  /// [ConceptMap]
  SearchConceptMap contextQuantity(
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
  /// [ConceptMap]
  SearchConceptMap contextType(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}context_type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a date search for [date] in the resource
  /// [ConceptMap]
  SearchConceptMap date(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}date'] = value.toString();
    return this;
  }

  /// a string search for [description] in the resource
  /// [ConceptMap]
  SearchConceptMap description(
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
  /// [ConceptMap]
  SearchConceptMap jurisdiction(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}jurisdiction'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a string search for [name] in the resource
  /// [ConceptMap]
  SearchConceptMap name(
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
  /// [ConceptMap]
  SearchConceptMap publisher(
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
  /// [ConceptMap]
  SearchConceptMap status(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a string search for [title] in the resource
  /// [ConceptMap]
  SearchConceptMap title(
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
  /// [ConceptMap]
  SearchConceptMap url(
    FhirUri value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}url'] = value.toString();
    return this;
  }

  /// a token search for [version] in the resource
  /// [ConceptMap]
  SearchConceptMap version(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}version'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [ConceptMap]
  SearchConceptMap identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a uri search for [dependson] in the resource
  /// [ConceptMap]
  SearchConceptMap dependson(
    FhirUri value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}dependson'] =
        value.toString();
    return this;
  }

  /// a uri search for [product] in the resource
  /// [ConceptMap]
  SearchConceptMap product(
    FhirUri value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}product'] =
        value.toString();
    return this;
  }

  /// a token search for [sourceCode] in the resource
  /// [ConceptMap]
  SearchConceptMap sourceCode(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}source_code'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a uri search for [sourceSystem] in the resource
  /// [ConceptMap]
  SearchConceptMap sourceSystem(
    FhirUri value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}source_system'] =
        value.toString();
    return this;
  }

  /// a token search for [targetCode] in the resource
  /// [ConceptMap]
  SearchConceptMap targetCode(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}target_code'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a uri search for [targetSystem] in the resource
  /// [ConceptMap]
  SearchConceptMap targetSystem(
    FhirUri value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}target_system'] =
        value.toString();
    return this;
  }
}
