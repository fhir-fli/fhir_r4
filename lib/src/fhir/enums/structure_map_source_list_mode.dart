// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// If field is a list, how to manage the source.
@collection
class StructureMapSourceListMode {
  /// Constructor for internal use (like enum)
  StructureMapSourceListMode({this.fhirCode, this.element})
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

  /// StructureMapSourceListMode values
  /// first
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StructureMapSourceListMode first = StructureMapSourceListMode(
    fhirCode: 'first',
  );

  /// not_first
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StructureMapSourceListMode not_first =
      StructureMapSourceListMode(
    fhirCode: 'not_first',
  );

  /// last
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StructureMapSourceListMode last = StructureMapSourceListMode(
    fhirCode: 'last',
  );

  /// not_last
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StructureMapSourceListMode not_last = StructureMapSourceListMode(
    fhirCode: 'not_last',
  );

  /// only_one
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StructureMapSourceListMode only_one = StructureMapSourceListMode(
    fhirCode: 'only_one',
  );

  /// For instances where an Element is present but not value

  static final StructureMapSourceListMode elementOnly =
      StructureMapSourceListMode();

  /// List of all enum-like values
  static final List<StructureMapSourceListMode> values = [
    first,
    not_first,
    last,
    not_last,
    only_one,
  ];

  /// Returns the enum value with an element attached
  StructureMapSourceListMode withElement(Element? newElement) {
    return StructureMapSourceListMode(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [StructureMapSourceListMode] from JSON.
  static StructureMapSourceListMode fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return StructureMapSourceListMode.elementOnly.withElement(element);
    }
    return StructureMapSourceListMode.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'StructureMapSourceListMode.$fhirCode';
}
