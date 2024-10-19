// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// If this is the default rule set to apply for the source type, or this combination of types.
@Entity()
class StructureMapGroupTypeMode extends FhirCode {
  /// Factory constructor to create [StructureMapGroupTypeMode] from JSON.
  factory StructureMapGroupTypeMode.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return StructureMapGroupTypeMode.elementOnly(element);
    }
    if (values.contains(value)) {
      return StructureMapGroupTypeMode._(value, element);
    }
    throw ArgumentError(
      'StructureMapGroupTypeMode.fromJson: JSON value is not a valid value',
    );
  }

  /// none
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StructureMapGroupTypeMode.none([this.element])
      : dbValue = 'none',
        super('none', element);

  /// types
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StructureMapGroupTypeMode.types([this.element])
      : dbValue = 'types',
        super('types', element);

  /// type_and_types
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StructureMapGroupTypeMode.type_and_types([this.element])
      : dbValue = 'type-and-types',
        super('type-and-types', element);

  /// For instances where an Element is present but not value

  StructureMapGroupTypeMode.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  StructureMapGroupTypeMode._(super.input, [super.element])
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
    'none',
    'types',
    'type-and-types',
  ];

  /// Returns the enum value with an element attached
  StructureMapGroupTypeMode withElement(Element? newElement) {
    return StructureMapGroupTypeMode._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'StructureMapGroupTypeMode.$value';
}
