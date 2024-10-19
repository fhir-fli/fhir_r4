// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// How to interpret the context.
@collection
class StructureMapContextType {
  /// Constructor for internal use (like enum)
  StructureMapContextType({this.fhirCode, this.element})
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

  /// StructureMapContextType values
  /// type
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StructureMapContextType type = StructureMapContextType(
    fhirCode: 'type',
  );

  /// variable
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StructureMapContextType variable = StructureMapContextType(
    fhirCode: 'variable',
  );

  /// For instances where an Element is present but not value

  static final StructureMapContextType elementOnly = StructureMapContextType();

  /// List of all enum-like values
  static final List<StructureMapContextType> values = [
    type,
    variable,
  ];

  /// Returns the enum value with an element attached
  StructureMapContextType withElement(Element? newElement) {
    return StructureMapContextType(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [StructureMapContextType] from JSON.
  static StructureMapContextType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return StructureMapContextType.elementOnly.withElement(element);
    }
    return StructureMapContextType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'StructureMapContextType.$fhirCode';
}
