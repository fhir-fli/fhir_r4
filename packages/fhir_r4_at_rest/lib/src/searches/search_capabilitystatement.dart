// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [CapabilityStatement] resource.
class SearchCapabilityStatement extends SearchResource {
  /// a token search for [context] in the resource
  /// [CapabilityStatement]
  SearchCapabilityStatement context(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('context', paramValue);
    return this;
  }

  /// a quantity search for [contextQuantity] in the resource
  /// [CapabilityStatement]
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
    final paramValue = (modifier != null
        ? '$modifier$value|${system?.toString() ?? ''}|${unit?.toString() ?? ''}'
        : '$value|${system?.toString() ?? ''}|${unit?.toString() ?? ''}');
    addParameterValue('context_quantity', paramValue);
    return this;
  }

  /// a token search for [contextType] in the resource
  /// [CapabilityStatement]
  SearchCapabilityStatement contextType(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('context_type', paramValue);
    return this;
  }

  /// a date search for [date] in the resource
  /// [CapabilityStatement]
  SearchCapabilityStatement date(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('date', paramValue);
    return this;
  }

  /// a string search for [description] in the resource
  /// [CapabilityStatement]
  SearchCapabilityStatement description(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('description', paramValue);
    return this;
  }

  /// a token search for [fhirversion] in the resource
  /// [CapabilityStatement]
  SearchCapabilityStatement fhirversion(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('fhirversion', paramValue);
    return this;
  }

  /// a token search for [format] in the resource
  /// [CapabilityStatement]
  SearchCapabilityStatement format(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('format', paramValue);
    return this;
  }

  /// a token search for [jurisdiction] in the resource
  /// [CapabilityStatement]
  SearchCapabilityStatement jurisdiction(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('jurisdiction', paramValue);
    return this;
  }

  /// a token search for [mode] in the resource
  /// [CapabilityStatement]
  SearchCapabilityStatement mode(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('mode', paramValue);
    return this;
  }

  /// a string search for [name] in the resource
  /// [CapabilityStatement]
  SearchCapabilityStatement name(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('name', paramValue);
    return this;
  }

  /// a string search for [publisher] in the resource
  /// [CapabilityStatement]
  SearchCapabilityStatement publisher(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('publisher', paramValue);
    return this;
  }

  /// a token search for [resource] in the resource
  /// [CapabilityStatement]
  SearchCapabilityStatement resource(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('resource', paramValue);
    return this;
  }

  /// a token search for [securityService] in the resource
  /// [CapabilityStatement]
  SearchCapabilityStatement securityService(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('security_service', paramValue);
    return this;
  }

  /// a string search for [software] in the resource
  /// [CapabilityStatement]
  SearchCapabilityStatement software(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('software', paramValue);
    return this;
  }

  /// a token search for [status] in the resource
  /// [CapabilityStatement]
  SearchCapabilityStatement status(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('status', paramValue);
    return this;
  }

  /// a string search for [title] in the resource
  /// [CapabilityStatement]
  SearchCapabilityStatement title(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('title', paramValue);
    return this;
  }

  /// a uri search for [url] in the resource
  /// [CapabilityStatement]
  SearchCapabilityStatement url(
    FhirUri value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('url', paramValue);
    return this;
  }

  /// a token search for [version] in the resource
  /// [CapabilityStatement]
  SearchCapabilityStatement version(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('version', paramValue);
    return this;
  }
}
