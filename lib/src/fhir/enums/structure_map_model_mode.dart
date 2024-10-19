// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// How the referenced structure is used in this mapping.
@Entity()
class StructureMapModelMode extends FhirCode {
  /// Factory constructor to create [StructureMapModelMode] from JSON.
  factory StructureMapModelMode.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return StructureMapModelMode.elementOnly(element);
    }
    if (values.contains(value)) {
      return StructureMapModelMode._(value, element);
    }
    throw ArgumentError(
      'StructureMapModelMode.fromJson: JSON value is not a valid value',
    );
  }

  /// source
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StructureMapModelMode.source([this.element])
      : dbValue = 'source',
        super('source', element);

  /// queried
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StructureMapModelMode.queried([this.element])
      : dbValue = 'queried',
        super('queried', element);

  /// target
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StructureMapModelMode.target([this.element])
      : dbValue = 'target',
        super('target', element);

  /// produced
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StructureMapModelMode.produced([this.element])
      : dbValue = 'produced',
        super('produced', element);

  /// For instances where an Element is present but not value

  StructureMapModelMode.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  StructureMapModelMode._(super.input, [super.element])
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
  final String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  final Element? element;

  /// List of all enum-like values
  static final List<String> values = [
    'source',
    'queried',
    'target',
    'produced',
  ];

  /// Returns the enum value with an element attached
  StructureMapModelMode withElement(Element? newElement) {
    return StructureMapModelMode._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'StructureMapModelMode.$value';
}
