import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes sample Claim SubType codes which are used to distinguish the claim types for example within type institutional there may be subtypes for emergency services, bed stay and transportation.
enum ExampleClaimSubTypeCodes {
  /// Display: Orthodontic Claim
  /// Definition: A claim for Orthodontic Services.
  ortho('ortho'),

  /// Display: Emergency Claim
  /// Definition: A claim for emergency services.
  emergency('emergency'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ExampleClaimSubTypeCodes(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ExampleClaimSubTypeCodes fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExampleClaimSubTypeCodes.elementOnly.withElement(element);
    }
    return ExampleClaimSubTypeCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ExampleClaimSubTypeCodes withElement(Element? newElement) {
    return ExampleClaimSubTypeCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
