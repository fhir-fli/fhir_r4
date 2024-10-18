// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes sample Claim SubType codes which are used to distinguish the claim types for example within type institutional there may be subtypes for emergency services, bed stay and transportation.
enum ExampleClaimSubTypeCodes {
  /// Display: Orthodontic Claim
  /// Definition: A claim for Orthodontic Services.
  ortho('ortho'),

  /// Display: Emergency Claim
  /// Definition: A claim for emergency services.
  emergency('emergency'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ExampleClaimSubTypeCodes(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ExampleClaimSubTypeCodes] instances.
  static ExampleClaimSubTypeCodes fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExampleClaimSubTypeCodes.elementOnly.withElement(element);
    }
    return ExampleClaimSubTypeCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  ExampleClaimSubTypeCodes withElement(Element? newElement) {
    return ExampleClaimSubTypeCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
