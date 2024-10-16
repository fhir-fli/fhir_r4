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
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const RegulatedAuthorizationBasis(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static RegulatedAuthorizationBasis fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RegulatedAuthorizationBasis.elementOnly.withElement(element);
    }
    return RegulatedAuthorizationBasis.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  RegulatedAuthorizationBasis withElement(Element? newElement) {
    return RegulatedAuthorizationBasis.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
