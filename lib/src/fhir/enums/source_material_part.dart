// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// An anatomical origin of the source material within an organism.
@collection
class SourceMaterialPart {
  /// Constructor for internal use (like enum)
  SourceMaterialPart({this.fhirCode, this.element})
      : assert(
          fhirCode != null || element != null,
          'Either fhirCode or element should be provided',
        );

  /// The ID of the object in the database.
  Id dbId = Isar.autoIncrement;

  /// The String value of this enum (FHIR code)
  final String? fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// SourceMaterialPart values
  /// Animal
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SourceMaterialPart Animal = SourceMaterialPart(
    fhirCode: 'Animal',
  );

  /// Plant
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SourceMaterialPart Plant = SourceMaterialPart(
    fhirCode: 'Plant',
  );

  /// Mineral
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SourceMaterialPart Mineral = SourceMaterialPart(
    fhirCode: 'Mineral',
  );

  /// For instances where an Element is present but not value

  static final SourceMaterialPart elementOnly = SourceMaterialPart();

  /// List of all enum-like values
  static final List<SourceMaterialPart> values = [
    Animal,
    Plant,
    Mineral,
  ];

  /// Returns the enum value with an element attached
  SourceMaterialPart withElement(Element? newElement) {
    return SourceMaterialPart(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
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

  /// String representation (for debugging purposes)
  @override
  String toString() => 'SourceMaterialPart.$fhirCode';
}
