// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The genus of an organism, typically referring to the Latin epithet of the genus element of the plant/animal scientific name.
class SourceMaterialGenus {
  // Private constructor for internal use (like enum)
  SourceMaterialGenus._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// SourceMaterialGenus values
  /// Mycobacterium
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SourceMaterialGenus Mycobacterium = SourceMaterialGenus._(
    'Mycobacterium',
  );

  /// InfluenzavirusA
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SourceMaterialGenus InfluenzavirusA = SourceMaterialGenus._(
    'InfluenzavirusA',
  );

  /// Ginkgo
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SourceMaterialGenus Ginkgo = SourceMaterialGenus._(
    'Ginkgo',
  );

  /// For instances where an Element is present but not value

  static final SourceMaterialGenus elementOnly = SourceMaterialGenus._('');

  /// List of all enum-like values
  static final List<SourceMaterialGenus> values = [
    Mycobacterium,
    InfluenzavirusA,
    Ginkgo,
  ];

  /// Returns the enum value with an element attached
  SourceMaterialGenus withElement(Element? newElement) {
    return SourceMaterialGenus._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [SourceMaterialGenus] from JSON.
  static SourceMaterialGenus fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SourceMaterialGenus.elementOnly.withElement(element);
    }
    return SourceMaterialGenus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
