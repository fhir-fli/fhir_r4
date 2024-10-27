// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// An anatomical origin of the source material within an organism.
class SourceMaterialPart {
  // Private constructor for internal use (like enum)
  SourceMaterialPart._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// SourceMaterialPart values
  /// Animal
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SourceMaterialPart Animal = SourceMaterialPart._(
    'Animal',
  );

  /// Plant
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SourceMaterialPart Plant = SourceMaterialPart._(
    'Plant',
  );

  /// Mineral
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SourceMaterialPart Mineral = SourceMaterialPart._(
    'Mineral',
  );

  /// For instances where an Element is present but not value

  static final SourceMaterialPart elementOnly = SourceMaterialPart._('');

  /// List of all enum-like values
  static final List<SourceMaterialPart> values = [
    Animal,
    Plant,
    Mineral,
  ];

  /// Returns the enum value with an element attached
  SourceMaterialPart withElement(Element? newElement) {
    return SourceMaterialPart._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [SourceMaterialPart] from JSON.
  static SourceMaterialPart fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SourceMaterialPart.elementOnly.withElement(element);
    }
    return SourceMaterialPart.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
