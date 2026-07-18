// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [MolecularSequence] resource.
class SearchMolecularSequence extends SearchResource {
  /// a token search for [chromosome] in the resource
  /// [MolecularSequence]
  SearchMolecularSequence chromosome(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('chromosome', paramValue);
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [MolecularSequence]
  SearchMolecularSequence identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a token search for [referenceseqid] in the resource
  /// [MolecularSequence]
  SearchMolecularSequence referenceseqid(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('referenceseqid', paramValue);
    return this;
  }

  /// a token search for [type] in the resource
  /// [MolecularSequence]
  SearchMolecularSequence type(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('type', paramValue);
    return this;
  }

  /// a numerical search for [variantEnd] in the resource
  /// [MolecularSequence]
  SearchMolecularSequence variantEnd(
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
    addParameterValue('variant-end', paramValue);
    return this;
  }

  /// a numerical search for [variantStart] in the resource
  /// [MolecularSequence]
  SearchMolecularSequence variantStart(
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
    addParameterValue('variant-start', paramValue);
    return this;
  }

  /// a numerical search for [windowEnd] in the resource
  /// [MolecularSequence]
  SearchMolecularSequence windowEnd(
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
    addParameterValue('window-end', paramValue);
    return this;
  }

  /// a numerical search for [windowStart] in the resource
  /// [MolecularSequence]
  SearchMolecularSequence windowStart(
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
    addParameterValue('window-start', paramValue);
    return this;
  }
}
