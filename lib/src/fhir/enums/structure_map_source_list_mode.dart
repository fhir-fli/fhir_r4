// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// If field is a list, how to manage the source.
@Entity()
class StructureMapSourceListMode extends FhirCode {
  /// Factory constructor to create [StructureMapSourceListMode] from JSON.
  factory StructureMapSourceListMode.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return StructureMapSourceListMode.elementOnly(element);
    }
    if (values.contains(value)) {
      return StructureMapSourceListMode._(value, element);
    }
    throw ArgumentError(
      'StructureMapSourceListMode.fromJson: JSON value is not a valid value',
    );
  }

  /// first
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StructureMapSourceListMode.first([this.element])
      : dbValue = 'first',
        super('first', element);

  /// not_first
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StructureMapSourceListMode.not_first([this.element])
      : dbValue = 'not_first',
        super('not_first', element);

  /// last
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StructureMapSourceListMode.last([this.element])
      : dbValue = 'last',
        super('last', element);

  /// not_last
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StructureMapSourceListMode.not_last([this.element])
      : dbValue = 'not_last',
        super('not_last', element);

  /// only_one
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StructureMapSourceListMode.only_one([this.element])
      : dbValue = 'only_one',
        super('only_one', element);

  /// For instances where an Element is present but not value

  StructureMapSourceListMode.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  StructureMapSourceListMode._(super.input, [super.element])
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
    'first',
    'not_first',
    'last',
    'not_last',
    'only_one',
  ];

  /// Returns the enum value with an element attached
  StructureMapSourceListMode withElement(Element? newElement) {
    return StructureMapSourceListMode._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'StructureMapSourceListMode.$value';
}
