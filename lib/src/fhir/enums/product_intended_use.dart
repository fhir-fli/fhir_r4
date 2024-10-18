// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The overall intended use of a product.
enum ProductIntendedUse {
  /// Display: Prevention
  /// Definition:
  Prevention('Prevention'),

  /// Display: Treatment
  /// Definition:
  Treatment('Treatment'),

  /// Display: Alleviation
  /// Definition:
  Alleviation('Alleviation'),

  /// Display: Diagnosis
  /// Definition:
  Diagnosis('Diagnosis'),

  /// Display: Monitoring
  /// Definition:
  Monitoring('Monitoring'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ProductIntendedUse(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ProductIntendedUse] instances.
  static ProductIntendedUse fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ProductIntendedUse.elementOnly.withElement(
        element,
      );
    }
    return ProductIntendedUse.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  ProductIntendedUse withElement(Element? newElement) {
    return ProductIntendedUse.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
