// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// A classification that provides the origin of the substance raw material.
enum SourceMaterialType {
  /// Display: animal
  /// Definition:
  Animal('Animal'),

  /// Display: plant
  /// Definition:
  Plant('Plant'),

  /// Display: mineral
  /// Definition:
  Mineral('Mineral'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const SourceMaterialType(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [SourceMaterialType] instances.
  static SourceMaterialType fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SourceMaterialType.elementOnly.withElement(element);
    }
    return SourceMaterialType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  SourceMaterialType withElement(Element? newElement) {
    return SourceMaterialType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
