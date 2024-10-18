// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// A categorisation for an interaction between two substances.
enum InteractionType {
  /// Display: drug to drug interaction
  /// Definition:
  drug_drug('drug-drug'),

  /// Display: drug to food interaction
  /// Definition:
  drug_food('drug-food'),

  /// Display: drug to laboratory test interaction
  /// Definition:
  drug_test('drug-test'),

  /// Display: other interaction
  /// Definition:
  other('other'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const InteractionType(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [InteractionType] instances.
  static InteractionType fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return InteractionType.elementOnly.withElement(
        element,
      );
    }
    return InteractionType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  InteractionType withElement(Element? newElement) {
    return InteractionType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
