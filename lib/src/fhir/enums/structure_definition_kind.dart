// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Defines the type of structure that a definition is describing.
@Entity()
class StructureDefinitionKind extends FhirCode {
  /// Factory constructor to create [StructureDefinitionKind] from JSON.
  factory StructureDefinitionKind.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return StructureDefinitionKind.elementOnly(element);
    }
    if (values.contains(value)) {
      return StructureDefinitionKind._(value, element);
    }
    throw ArgumentError(
      'StructureDefinitionKind.fromJson: JSON value is not a valid value',
    );
  }

  /// primitive_type
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StructureDefinitionKind.primitive_type([this.element])
      : dbValue = 'primitive-type',
        super('primitive-type', element);

  /// complex_type
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StructureDefinitionKind.complex_type([this.element])
      : dbValue = 'complex-type',
        super('complex-type', element);

  /// resource
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StructureDefinitionKind.resource([this.element])
      : dbValue = 'resource',
        super('resource', element);

  /// logical
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StructureDefinitionKind.logical([this.element])
      : dbValue = 'logical',
        super('logical', element);

  /// For instances where an Element is present but not value

  StructureDefinitionKind.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  StructureDefinitionKind._(super.input, [super.element])
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
    'primitive-type',
    'complex-type',
    'resource',
    'logical',
  ];

  /// Returns the enum value with an element attached
  StructureDefinitionKind withElement(Element? newElement) {
    return StructureDefinitionKind._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'StructureDefinitionKind.$value';
}
