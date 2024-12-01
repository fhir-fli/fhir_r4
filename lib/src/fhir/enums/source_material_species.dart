// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// A species of origin a substance raw material.
class SourceMaterialSpecies {
  // Private constructor for internal use (like enum)
  SourceMaterialSpecies._(this.fhirCode, {this.element});

  /// Factory constructor to create [SourceMaterialSpecies] from JSON.
  factory SourceMaterialSpecies.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SourceMaterialSpecies.elementOnly.withElement(element);
    }
    return SourceMaterialSpecies._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// SourceMaterialSpecies values
  /// GinkgoBiloba
  static final SourceMaterialSpecies GinkgoBiloba = SourceMaterialSpecies._(
    'GinkgoBiloba',
  );

  /// OleaEuropaea
  static final SourceMaterialSpecies OleaEuropaea = SourceMaterialSpecies._(
    'OleaEuropaea',
  );

  /// For instances where an Element is present but not value

  static final SourceMaterialSpecies elementOnly = SourceMaterialSpecies._('');

  /// List of all enum-like values
  static final List<SourceMaterialSpecies> values = [
    GinkgoBiloba,
    OleaEuropaea,
  ];

  /// Returns the enum value with an element attached
  SourceMaterialSpecies withElement(Element? newElement) {
    return SourceMaterialSpecies._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => fhirCode;
}
