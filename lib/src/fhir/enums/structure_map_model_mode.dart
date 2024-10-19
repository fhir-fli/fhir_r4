// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// How the referenced structure is used in this mapping.
@collection
class StructureMapModelMode {
  /// Constructor for internal use (like enum)
  StructureMapModelMode({this.fhirCode, this.element})
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

  /// StructureMapModelMode values
  /// source
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StructureMapModelMode source = StructureMapModelMode(
    fhirCode: 'source',
  );

  /// queried
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StructureMapModelMode queried = StructureMapModelMode(
    fhirCode: 'queried',
  );

  /// target
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StructureMapModelMode target = StructureMapModelMode(
    fhirCode: 'target',
  );

  /// produced
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StructureMapModelMode produced = StructureMapModelMode(
    fhirCode: 'produced',
  );

  /// For instances where an Element is present but not value

  static final StructureMapModelMode elementOnly = StructureMapModelMode();

  /// List of all enum-like values
  static final List<StructureMapModelMode> values = [
    source,
    queried,
    target,
    produced,
  ];

  /// Returns the enum value with an element attached
  StructureMapModelMode withElement(Element? newElement) {
    return StructureMapModelMode(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [StructureMapModelMode] from JSON.
  static StructureMapModelMode fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return StructureMapModelMode.elementOnly.withElement(element);
    }
    return StructureMapModelMode.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'StructureMapModelMode.$fhirCode';
}
