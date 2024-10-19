// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Structure Definition Use Codes / Keywords
@collection
class DefinitionUseCodes {
  /// Constructor for internal use (like enum)
  DefinitionUseCodes({this.fhirCode, this.element})
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

  /// DefinitionUseCodes values
  /// fhir_structure
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DefinitionUseCodes fhir_structure = DefinitionUseCodes(
    fhirCode: 'fhir-structure',
  );

  /// custom_resource
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DefinitionUseCodes custom_resource = DefinitionUseCodes(
    fhirCode: 'custom-resource',
  );

  /// dam
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DefinitionUseCodes dam = DefinitionUseCodes(
    fhirCode: 'dam',
  );

  /// wire_format
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DefinitionUseCodes wire_format = DefinitionUseCodes(
    fhirCode: 'wire-format',
  );

  /// archetype
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DefinitionUseCodes archetype = DefinitionUseCodes(
    fhirCode: 'archetype',
  );

  /// template
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DefinitionUseCodes template = DefinitionUseCodes(
    fhirCode: 'template',
  );

  /// For instances where an Element is present but not value

  static final DefinitionUseCodes elementOnly = DefinitionUseCodes();

  /// List of all enum-like values
  static final List<DefinitionUseCodes> values = [
    fhir_structure,
    custom_resource,
    dam,
    wire_format,
    archetype,
    template,
  ];

  /// Returns the enum value with an element attached
  DefinitionUseCodes withElement(Element? newElement) {
    return DefinitionUseCodes(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [DefinitionUseCodes] from JSON.
  static DefinitionUseCodes fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DefinitionUseCodes.elementOnly.withElement(element);
    }
    return DefinitionUseCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'DefinitionUseCodes.$fhirCode';
}
