// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Structure Definition Use Codes / Keywords
@Entity()
class DefinitionUseCodes extends FhirCode {
  /// Factory constructor to create [DefinitionUseCodes] from JSON.
  factory DefinitionUseCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DefinitionUseCodes.elementOnly(element);
    }
    if (values.contains(value)) {
      return DefinitionUseCodes._(value, element);
    }
    throw ArgumentError(
      'DefinitionUseCodes.fromJson: JSON value is not a valid value',
    );
  }

  /// fhir_structure
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DefinitionUseCodes.fhir_structure([this.element])
      : dbValue = 'fhir-structure',
        super('fhir-structure', element);

  /// custom_resource
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DefinitionUseCodes.custom_resource([this.element])
      : dbValue = 'custom-resource',
        super('custom-resource', element);

  /// dam
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DefinitionUseCodes.dam([this.element])
      : dbValue = 'dam',
        super('dam', element);

  /// wire_format
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DefinitionUseCodes.wire_format([this.element])
      : dbValue = 'wire-format',
        super('wire-format', element);

  /// archetype
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DefinitionUseCodes.archetype([this.element])
      : dbValue = 'archetype',
        super('archetype', element);

  /// template
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DefinitionUseCodes.template([this.element])
      : dbValue = 'template',
        super('template', element);

  /// For instances where an Element is present but not value

  DefinitionUseCodes.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  DefinitionUseCodes._(super.input, [super.element])
      : dbValue = input,
        // ignore: prefer_initializing_formals
        element = element;

  @override
  @Id()
  // ignore: overridden_fields
  int dbId = 0;

  /// Value to store in ObjectBox
  @override
  // ignore: overridden_fields
  String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  Element? element;

  /// List of all enum-like values
  @Transient()
  static final List<String> values = [
    'fhir-structure',
    'custom-resource',
    'dam',
    'wire-format',
    'archetype',
    'template',
  ];

  /// Returns the enum value with an element attached
  DefinitionUseCodes withElement(Element? newElement) {
    return DefinitionUseCodes._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'DefinitionUseCodes.$value';
}
