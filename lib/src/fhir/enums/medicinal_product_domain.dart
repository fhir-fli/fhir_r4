// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Applicable domain for this product (e.g. human, veterinary)
enum MedicinalProductDomain {
  /// Display: Human use
  /// Definition: Product intended for use with humans
  Human('Human'),

  /// Display: Veterinary use
  /// Definition: Product intended for use with animals
  Veterinary('Veterinary'),

  /// Display: Human and Veterinary use
  /// Definition: Product intended for use with both humans and animals
  HumanAndVeterinary('HumanAndVeterinary'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const MedicinalProductDomain(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [MedicinalProductDomain] instances.
  static MedicinalProductDomain fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicinalProductDomain.elementOnly.withElement(
        element,
      );
    }
    return MedicinalProductDomain.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  MedicinalProductDomain withElement(Element? newElement) {
    return MedicinalProductDomain.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
