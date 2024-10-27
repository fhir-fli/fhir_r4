// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// A classification that provides the origin of the substance raw material.
class SourceMaterialType {
  // Private constructor for internal use (like enum)
  SourceMaterialType._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// SourceMaterialType values
  /// Animal
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SourceMaterialType Animal = SourceMaterialType._(
    'Animal',
  );

  /// Plant
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SourceMaterialType Plant = SourceMaterialType._(
    'Plant',
  );

  /// Mineral
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SourceMaterialType Mineral = SourceMaterialType._(
    'Mineral',
  );

  /// For instances where an Element is present but not value

  static final SourceMaterialType elementOnly = SourceMaterialType._('');

  /// List of all enum-like values
  static final List<SourceMaterialType> values = [
    Animal,
    Plant,
    Mineral,
  ];

  /// Returns the enum value with an element attached
  SourceMaterialType withElement(Element? newElement) {
    return SourceMaterialType._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [SourceMaterialType] from JSON.
  static SourceMaterialType fromJson(Map<String, dynamic> json) {
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

  /// String representation
  @override
  String toString() => fhirCode;
}
