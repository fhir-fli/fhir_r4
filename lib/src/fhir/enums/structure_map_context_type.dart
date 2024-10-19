// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// How to interpret the context.
@Entity()
class StructureMapContextType extends FhirCode {
  /// Factory constructor to create [StructureMapContextType] from JSON.
  factory StructureMapContextType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return StructureMapContextType.elementOnly(element);
    }
    if (values.contains(value)) {
      return StructureMapContextType._(value, element);
    }
    throw ArgumentError(
      'StructureMapContextType.fromJson: JSON value is not a valid value',
    );
  }

  /// type
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StructureMapContextType.type([this.element])
      : dbValue = 'type',
        super('type', element);

  /// variable
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StructureMapContextType.variable([this.element])
      : dbValue = 'variable',
        super('variable', element);

  /// For instances where an Element is present but not value

  StructureMapContextType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  StructureMapContextType._(super.input, [super.element])
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
    'type',
    'variable',
  ];

  /// Returns the enum value with an element attached
  StructureMapContextType withElement(Element? newElement) {
    return StructureMapContextType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'StructureMapContextType.$value';
}
