// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Structure Definition Use Codes / Keywords
class DefinitionUseCodes {
  // Private constructor for internal use (like enum)
  DefinitionUseCodes._(this.fhirCode, {this.element});

  /// Factory constructor to create [DefinitionUseCodes] from JSON.
  factory DefinitionUseCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DefinitionUseCodes.elementOnly.withElement(element);
    }
    return DefinitionUseCodes._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// DefinitionUseCodes values
  /// fhir_structure
  static final DefinitionUseCodes fhir_structure = DefinitionUseCodes._(
    'fhir-structure',
  );

  /// custom_resource
  static final DefinitionUseCodes custom_resource = DefinitionUseCodes._(
    'custom-resource',
  );

  /// dam
  static final DefinitionUseCodes dam = DefinitionUseCodes._(
    'dam',
  );

  /// wire_format
  static final DefinitionUseCodes wire_format = DefinitionUseCodes._(
    'wire-format',
  );

  /// archetype
  static final DefinitionUseCodes archetype = DefinitionUseCodes._(
    'archetype',
  );

  /// template
  static final DefinitionUseCodes template = DefinitionUseCodes._(
    'template',
  );

  /// For instances where an Element is present but not value

  static final DefinitionUseCodes elementOnly = DefinitionUseCodes._('');

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
    return DefinitionUseCodes._(fhirCode, element: newElement);
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
