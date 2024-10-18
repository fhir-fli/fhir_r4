// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// A legal or regulatory framework against which an authorization is granted, or other reasons for it.
enum RegulatedAuthorizationBasis {
  /// Display: Full application
  /// Definition:
  Full('Full'),

  /// Display: New active substance
  /// Definition:
  NewSubstance('NewSubstance'),

  /// Display: Known active substance
  /// Definition:
  KnownSubstance('KnownSubstance'),

  /// Display: Similar biological application
  /// Definition:
  SimilarBiological('SimilarBiological'),

  /// Display: Well-established use application
  /// Definition:
  Well_establishedUse('Well-establishedUse'),

  /// Display: Traditional use registration for herbal medicinal product application
  /// Definition:
  TraditionalUse('TraditionalUse'),

  /// Display: Bibliographical application (stand-alone)
  /// Definition:
  Bibliographical('Bibliographical'),

  /// Display: Known human blood/plasma derived ancillary medicinal substance
  /// Definition:
  KnownHumanBlood('KnownHumanBlood'),

  /// Display: Authorisations for temporary use
  /// Definition:
  TemporaryUse('TemporaryUse'),

  /// Display: Parallel traded products
  /// Definition:
  ParallelTrade('ParallelTrade'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const RegulatedAuthorizationBasis(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [RegulatedAuthorizationBasis] instances.
  static RegulatedAuthorizationBasis fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RegulatedAuthorizationBasis.elementOnly.withElement(element);
    }
    return RegulatedAuthorizationBasis.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  RegulatedAuthorizationBasis withElement(Element? newElement) {
    return RegulatedAuthorizationBasis.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
