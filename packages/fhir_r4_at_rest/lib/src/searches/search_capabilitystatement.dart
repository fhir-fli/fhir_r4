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
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
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
    final paramValue = modifier != null
        ? '$modifier$value|${system?.toString() ?? ''}|'
            '${unit?.toString() ?? ''}'
        : '$value|${system?.toString() ?? ''}|'
            '${unit?.toString() ?? ''}';
    addParameterValue('context-quantity', paramValue);
    return this;
  }

  /// a token search for [contextType] in the resource
  /// [CapabilityStatement]
  SearchCapabilityStatement contextType(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('context-type', paramValue);
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
  SearchCapabilityStatement description(FhirString value) {
    addParameterValue('description', value.toString());
    return this;
  }

  /// a token search for [fhirversion] in the resource
  /// [CapabilityStatement]
  SearchCapabilityStatement fhirversion(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('fhirversion', paramValue);
    return this;
  }

  /// a token search for [format] in the resource
  /// [CapabilityStatement]
  SearchCapabilityStatement format(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('format', paramValue);
    return this;
  }

  /// a token search for [jurisdiction] in the resource
  /// [CapabilityStatement]
  SearchCapabilityStatement jurisdiction(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('jurisdiction', paramValue);
    return this;
  }

  /// a token search for [mode] in the resource
  /// [CapabilityStatement]
  SearchCapabilityStatement mode(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('mode', paramValue);
    return this;
  }

  /// a string search for [name] in the resource
  /// [CapabilityStatement]
  SearchCapabilityStatement name(FhirString value) {
    addParameterValue('name', value.toString());
    return this;
  }

  /// a string search for [publisher] in the resource
  /// [CapabilityStatement]
  SearchCapabilityStatement publisher(FhirString value) {
    addParameterValue('publisher', value.toString());
    return this;
  }

  /// a token search for [resource] in the resource
  /// [CapabilityStatement]
  SearchCapabilityStatement resource(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('resource', paramValue);
    return this;
  }

  /// a token search for [securityService] in the resource
  /// [CapabilityStatement]
  SearchCapabilityStatement securityService(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('security-service', paramValue);
    return this;
  }

  /// a string search for [software] in the resource
  /// [CapabilityStatement]
  SearchCapabilityStatement software(FhirString value) {
    addParameterValue('software', value.toString());
    return this;
  }

  /// a token search for [status] in the resource
  /// [CapabilityStatement]
  SearchCapabilityStatement status(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('status', paramValue);
    return this;
  }

  /// a string search for [title] in the resource
  /// [CapabilityStatement]
  SearchCapabilityStatement title(FhirString value) {
    addParameterValue('title', value.toString());
    return this;
  }

  /// a uri search for [url] in the resource
  /// [CapabilityStatement]
  SearchCapabilityStatement url(FhirUri value) {
    addParameterValue('url', value.toString());
    return this;
  }

  /// a token search for [version] in the resource
  /// [CapabilityStatement]
  SearchCapabilityStatement version(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('version', paramValue);
    return this;
  }
}
