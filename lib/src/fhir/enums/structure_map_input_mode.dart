// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Mode for this instance of data.
@Entity()
class StructureMapInputMode extends FhirCode {
  /// Factory constructor to create [StructureMapInputMode] from JSON.
  factory StructureMapInputMode.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return StructureMapInputMode.elementOnly(element);
    }
    if (values.contains(value)) {
      return StructureMapInputMode._(value, element);
    }
    throw ArgumentError(
      'StructureMapInputMode.fromJson: JSON value is not a valid value',
    );
  }

  /// source
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StructureMapInputMode.source([this.element])
      : dbValue = 'source',
        super('source', element);

  /// target
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StructureMapInputMode.target([this.element])
      : dbValue = 'target',
        super('target', element);

  /// For instances where an Element is present but not value

  StructureMapInputMode.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  StructureMapInputMode._(super.input, [super.element])
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
    'target',
  ];

  /// Returns the enum value with an element attached
  StructureMapInputMode withElement(Element? newElement) {
    return StructureMapInputMode._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'StructureMapInputMode.$value';
}
